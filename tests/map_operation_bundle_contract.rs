use std::{fs, path::PathBuf};

use serde_json::Value;

fn fixture_path() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("fixtures")
        .join("client_boundary")
        .join("v1")
        .join("map_operation_bundle.v1.json")
}

fn bundle() -> Value {
    serde_json::from_str(&fs::read_to_string(fixture_path()).expect("read MAP bundle fixture"))
        .expect("deserialize MAP bundle fixture")
}

#[test]
fn map_operation_bundle_declares_protocol_owned_source_metadata() {
    let bundle = bundle();

    assert_eq!(bundle["artifact"].as_str(), Some("map-operation-bundle"));
    assert_eq!(
        bundle["status"].as_str(),
        Some("protocol-owned-client-handoff")
    );
    assert_eq!(
        bundle["source_of_truth"]["repo"].as_str(),
        Some("monarchic-agent-protocol")
    );
    assert_eq!(
        bundle["source_of_truth"]["path"].as_str(),
        Some("fixtures/client_boundary/v1/map_operation_bundle.v1.json")
    );
    assert_eq!(
        bundle["owners"]["protocol_owner"].as_str(),
        Some("monarchic-agent-protocol")
    );
    assert_eq!(
        bundle["handoff_contract"]["wire_contract_owner"].as_str(),
        Some("monarchic-agent-protocol")
    );
    assert_eq!(
        bundle["source_of_truth"]["consumer_snapshots"]
            .as_array()
            .expect("consumer_snapshots should be an array"),
        &vec![Value::String(
            "monarch/docs/map-operation-bundle.json".to_string()
        )]
    );
}

#[test]
fn map_operation_bundle_operation_order_matches_declared_operations() {
    let bundle = bundle();
    let operations = bundle["operations"]
        .as_object()
        .expect("operations should be an object");
    let operation_order = bundle["operation_order"]
        .as_array()
        .expect("operation_order should be an array");

    assert_eq!(operation_order.len(), operations.len());
    for operation in operation_order {
        let operation = operation
            .as_str()
            .expect("operation_order entries should be strings");
        assert!(
            operations.contains_key(operation),
            "operation_order entry {operation} missing from operations"
        );
    }
}
