#!/bin/bash

# protoc-gen-go v1.27.1
# protoc        v3.17.3

protoc  -I ./ \
--go_out=. ./*.proto

protoc  -I ./ \
--go-grpc_out=. ./*.proto

rm -r ../yu/core/types/goproto
mv ./goproto ../yu/core/types