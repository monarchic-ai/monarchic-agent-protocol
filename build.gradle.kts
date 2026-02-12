plugins {
    `java-library`
    `maven-publish`
}

group = "ai.monarchic"
version = "0.1.6"

dependencies {
    api("com.google.protobuf:protobuf-java:4.32.1")
}

java {
    withSourcesJar()
}

sourceSets {
    named("main") {
        java.setSrcDirs(listOf("src/java"))
    }
}

publishing {
  publications {
    create<MavenPublication>("mavenJava") {
      from(components["java"])
      groupId = "ai.monarchic"
      artifactId = "monarchic-agent-protocol"
      version = project.version.toString()
    }
  }
}
