use serde::{Deserialize, Serialize};
use serde_json::{Map, Value};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct TaskMcpBinding {
    pub id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub purpose: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct TaskRunContext {
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub version: Option<String>,
    pub repo: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub worktree: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub image: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub runner: Option<String>,
    #[serde(default)]
    pub labels: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub extensions: Option<Value>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "TaskUnchecked", deny_unknown_fields)]
pub struct Task {
    pub version: String,
    pub task_id: String,
    pub role: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub role_id: Option<String>,
    pub goal: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub inputs: Option<Value>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub constraints: Option<Value>,
    #[serde(default)]
    pub gates_required: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub run_context: Option<TaskRunContext>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub interaction_mode: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub interactive: Option<bool>,
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    pub required_mcps: Vec<TaskMcpBinding>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub extensions: Option<Value>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct TaskUnchecked {
    version: String,
    task_id: String,
    role: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    role_id: Option<String>,
    goal: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    inputs: Option<Value>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    constraints: Option<Value>,
    #[serde(default)]
    gates_required: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    run_context: Option<TaskRunContext>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    interaction_mode: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    interactive: Option<bool>,
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    required_mcps: Vec<TaskMcpBinding>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    extensions: Option<Value>,
}

impl TryFrom<TaskUnchecked> for Task {
    type Error = String;

    fn try_from(value: TaskUnchecked) -> Result<Self, Self::Error> {
        if value.version.trim().is_empty() {
            return Err(String::from("task version must not be empty"));
        }
        if value.task_id.trim().is_empty() {
            return Err(String::from("task task_id must not be empty"));
        }
        if value.role.trim().is_empty() {
            return Err(String::from("task role must not be empty"));
        }
        if value.goal.trim().is_empty() {
            return Err(String::from("task goal must not be empty"));
        }
        if let Some(role_id) = &value.role_id {
            if role_id.trim().is_empty() {
                return Err(String::from("task role_id must not be empty when present"));
            }
        }
        validate_optional_object("task inputs", value.inputs.as_ref())?;
        validate_optional_object("task constraints", value.constraints.as_ref())?;
        validate_optional_object("task extensions", value.extensions.as_ref())?;
        if let Some(run_context) = &value.run_context {
            if run_context.repo.trim().is_empty() {
                return Err(String::from("task run_context.repo must not be empty"));
            }
            validate_optional_object(
                "task run_context.extensions",
                run_context.extensions.as_ref(),
            )?;
        }

        if let Some(extensions) = value.extensions.as_ref().and_then(Value::as_object) {
            assert_extension_match(
                extensions,
                "interaction_mode",
                value
                    .interaction_mode
                    .as_ref()
                    .map(|mode| Value::String(mode.clone()))
                    .as_ref(),
            )?;
            assert_extension_match(
                extensions,
                "interactive",
                value.interactive.map(Value::Bool).as_ref(),
            )?;
            if !value.required_mcps.is_empty() {
                let required_mcps = serde_json::to_value(&value.required_mcps)
                    .map_err(|err| format!("task required_mcps must serialize: {err}"))?;
                assert_extension_match(extensions, "required_mcps", Some(&required_mcps))?;
            }
        }

        Ok(Self {
            version: value.version,
            task_id: value.task_id,
            role: value.role,
            role_id: value.role_id,
            goal: value.goal,
            inputs: value.inputs,
            constraints: value.constraints,
            gates_required: value.gates_required,
            run_context: value.run_context,
            interaction_mode: value.interaction_mode,
            interactive: value.interactive,
            required_mcps: value.required_mcps,
            extensions: value.extensions,
        })
    }
}

fn validate_optional_object(label: &str, value: Option<&Value>) -> Result<(), String> {
    if value.is_some_and(|entry| !entry.is_object()) {
        return Err(format!("{label} must be a JSON object"));
    }
    Ok(())
}

fn assert_extension_match(
    extensions: &Map<String, Value>,
    key: &str,
    compatibility_value: Option<&Value>,
) -> Result<(), String> {
    let Some(compatibility_value) = compatibility_value else {
        return Ok(());
    };
    if let Some(extension_value) = extensions.get(key) {
        if extension_value != compatibility_value {
            return Err(format!(
                "task {key} compatibility field must match extensions.{key} when both are present"
            ));
        }
    }
    Ok(())
}
