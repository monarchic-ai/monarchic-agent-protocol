use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum TaskMessageKind {
    #[default]
    Unspecified,
    ArtifactReady,
    ClarificationRequest,
    ClarificationResponse,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "TaskMessageUnchecked", deny_unknown_fields)]
pub struct TaskMessage {
    pub version: String,
    pub message_id: String,
    pub run_id: String,
    pub from_task_id: String,
    pub to_task_id: String,
    pub kind: TaskMessageKind,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub subject: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub body: Option<String>,
    #[serde(default)]
    pub artifact_refs: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub reply_to: Option<String>,
    pub created_at: String,
    #[serde(default)]
    pub requires_ack: bool,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub extensions: Option<Value>,
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct TaskMessageUnchecked {
    version: String,
    message_id: String,
    run_id: String,
    from_task_id: String,
    to_task_id: String,
    #[serde(default)]
    kind: TaskMessageKind,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    subject: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    body: Option<String>,
    #[serde(default)]
    artifact_refs: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    reply_to: Option<String>,
    created_at: String,
    #[serde(default)]
    requires_ack: bool,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    extensions: Option<Value>,
}

impl TryFrom<TaskMessageUnchecked> for TaskMessage {
    type Error = String;

    fn try_from(value: TaskMessageUnchecked) -> Result<Self, Self::Error> {
        if value.version.trim().is_empty() {
            return Err(String::from("task_message version must not be empty"));
        }
        if value.message_id.trim().is_empty() {
            return Err(String::from("task_message message_id must not be empty"));
        }
        if value.run_id.trim().is_empty() {
            return Err(String::from("task_message run_id must not be empty"));
        }
        if value.from_task_id.trim().is_empty() {
            return Err(String::from("task_message from_task_id must not be empty"));
        }
        if value.to_task_id.trim().is_empty() {
            return Err(String::from("task_message to_task_id must not be empty"));
        }
        if value.created_at.trim().is_empty() {
            return Err(String::from("task_message created_at must not be empty"));
        }
        if value.kind == TaskMessageKind::Unspecified {
            return Err(String::from("task_message kind must not be unspecified"));
        }
        if value.reply_to.is_some() && value.kind != TaskMessageKind::ClarificationResponse {
            return Err(String::from(
                "task_message reply_to is only allowed for clarification_response messages",
            ));
        }
        if value
            .extensions
            .as_ref()
            .is_some_and(|entry| !entry.is_object())
        {
            return Err(String::from(
                "task_message extensions must be a JSON object",
            ));
        }

        Ok(Self {
            version: value.version,
            message_id: value.message_id,
            run_id: value.run_id,
            from_task_id: value.from_task_id,
            to_task_id: value.to_task_id,
            kind: value.kind,
            subject: value.subject,
            body: value.body,
            artifact_refs: value.artifact_refs,
            reply_to: value.reply_to,
            created_at: value.created_at,
            requires_ack: value.requires_ack,
            extensions: value.extensions,
        })
    }
}
