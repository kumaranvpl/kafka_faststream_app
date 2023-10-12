#!/bin/bash
set -e

echo "Running mypy..."
mypy kafka_faststream_app

echo "Running bandit..."
bandit -c pyproject.toml -r kafka_faststream_app
