#!/bin/bash -i

clear
mvn clean compile
mvn package
mkdir target/extracted
java -Djarmode=layertools -jar target/*.jar extract --destination target/extracted
