plugins {
    `java-library`
    `maven-publish`
}

group = "ai.monarchic"
version = "0.1.10"

dependencies {
    api("com.google.protobuf:protobuf-java:4.32.1")
}

repositories {
    mavenCentral()
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
      pom {
        licenses {
          license {
            name.set("GNU Lesser General Public License v3.0 only")
            url.set("https://www.gnu.org/licenses/lgpl-3.0.txt")
            distribution.set("repo")
          }
        }
      }
    }
  }
}
