#!/bin/bash

echo "Running pyup_dirs..."
pyup_dirs --py38-plus --recursive kafka_faststream_app tests

echo "Running ruff..."
ruff kafka_faststream_app tests --fix

echo "Running black..."
black kafka_faststream_app tests
