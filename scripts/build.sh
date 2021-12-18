#!/bin/bash

mkdir -p build
rm -f build/*
cp public/* build/

emcc src/main.cpp \
  -O3 \
  -o build/wasm.js \
  -s WASM=1 \
  -s ENVIRONMENT="web" \
  -s SINGLE_FILE=1 \
  -s EXPORT_ES6=1 \
  --bind 
