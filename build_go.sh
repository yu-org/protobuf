#!/bin/bash

# protoc-gen-go v1.27.1-devel
# protoc        v3.13.0

protoc  -I ./ \
--go_out=plugins=grpc:. ./*.proto

mv ./types ../yu/