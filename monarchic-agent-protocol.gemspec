# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "monarchic-agent-protocol"
  spec.version = "0.1.1"
  spec.summary = "Monarchic Agent Protocol protobuf types"
  spec.description = "Ruby bindings and protobuf types for the Monarchic Agent Protocol."
  spec.homepage = "https://github.com/monarchic-ai/monarchic-agent-protocol"
  spec.authors = ["Monarchic AI"]
  spec.require_paths = ["src/ruby"]
  spec.files = Dir["src/ruby/**/*", "README.md", "schemas/v1/*"]

  spec.add_runtime_dependency "google-protobuf", ">= 3.25", "< 5.0"
end
