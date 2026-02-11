use std::path::PathBuf;

fn main() {
    let proto_dir = PathBuf::from("schemas/v1");
    let proto_file = proto_dir.join("monarchic_agent_protocol.proto");

    println!("cargo:rerun-if-changed={}", proto_file.display());

    prost_build::Config::new()
        .compile_protos(&[proto_file], &[proto_dir])
        .expect("failed to compile protobufs");
}
