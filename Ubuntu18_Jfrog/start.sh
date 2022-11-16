#!/bin/bash
export JFROG_HOME=/app/artifactory-oss-7.46.11/app
export JAVA_HOME=/app/artifactory-oss-7.46.11/app/third-party/java
$JFROG_HOME/bin/artifactoryctl start
tail -f /dev/null