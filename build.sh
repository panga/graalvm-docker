#!/bin/bash

GRAALVM_BUILD=${GRAALVM_BUILD:-"1.0.0-rc2"}

docker build . --build-arg GRAALVM_BUILD=$GRAALVM_BUILD --tag panga/graalvm-ce:$GRAALVM_BUILD --tag panga/graalvm-ce:latest