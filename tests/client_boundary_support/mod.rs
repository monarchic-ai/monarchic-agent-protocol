#![allow(dead_code)]

use std::{fs, path::PathBuf};

use serde::{de::DeserializeOwned, Serialize};
use serde_json::Value;

pub fn fixture_path(relative: &str) -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("fixtures")
        .join("client_boundary")
        .join("v1")
        .join(relative)
}

pub fn read_fixture(relative: &str) -> String {
    fs::read_to_string(fixture_path(relative)).expect("read fixture")
}

pub fn canonical_json<T>(value: &T) -> String
where
    T: Serialize,
{
    let mut json = serde_json::to_string_pretty(value).expect("serialize fixture");
    json.push('\n');
    json
}

pub fn assert_fixture_round_trip<T>(relative: &str)
where
    T: DeserializeOwned + Serialize,
{
    let source = read_fixture(relative);
    let parsed: T = serde_json::from_str(&source).expect("deserialize fixture");
    assert_eq!(canonical_json(&parsed), source);
}

pub fn load_fixture_value(relative: &str) -> Value {
    serde_json::from_str(&read_fixture(relative)).expect("deserialize fixture value")
}
