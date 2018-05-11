#!/usr/bin/env bash

cd "${APP_DIR}"

mkdir -p resources

RESOURCES_DIR="$( cd "resources" && pwd )"

mkdir -p vendor
pip download --no-binary :all: -d vendor -r requirements.txt
rm "${RESOURCES_DIR}/app.zip"
zip -r "${RESOURCES_DIR}/app.zip" pcf_dash_generator.py service_config.py app_config.py logging_config.ini requirements.txt runtime.txt vendor templates