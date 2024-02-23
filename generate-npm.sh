#!/bin/bash

LATEST_TAG=$(git tag --sort=-creatordate | head -n 1)
if [ -z "$LATEST_TAG" ]; then
  LATEST_TAG="v0.0.1"
fi
openapi-generator-cli generate -g typescript-axios -i ./icewhale-drive/openapi.yaml -o ./generate/icewhale-drive

# 使用 jq 设置新的版本号
jq --arg version "$LATEST_TAG" '.version |= $version' package.json > tmp.json && mv tmp.json package.json

npm publish --access public

rm -rf generate
