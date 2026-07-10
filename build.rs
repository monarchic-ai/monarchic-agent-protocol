use std::path::PathBuf;

fn main() {
    if std::env::var_os("CARGO_FEATURE_GENERATED_PROTOBUF").is_none() {
        println!("cargo:rerun-if-changed=build.rs");
        return;
    }

    let proto_dir = PathBuf::from("schemas/v1");
    let proto_file = proto_dir.join("monarchic_agent_protocol.proto");
    let mut include_dirs = vec![proto_dir.clone()];

    if let Ok(protoc_include) = std::env::var("PROTOC_INCLUDE") {
        let include_dir = PathBuf::from(protoc_include);
        if include_dir.exists() {
            include_dirs.push(include_dir);
        }
    }

    let system_protobuf_include = PathBuf::from("/usr/include");
    if system_protobuf_include.exists() {
        include_dirs.push(system_protobuf_include);
    }

    println!("cargo:rerun-if-changed={}", proto_file.display());

    prost_build::Config::new()
        .compile_protos(&[proto_file], &include_dirs)
        .expect("failed to compile protobufs");
}
