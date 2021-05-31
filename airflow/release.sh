#!/bin/bash
export version=0.19.0
export filename="airflow-${version}.tgz"
export extra_args=( '--version' "${version}" )
helm_repo="pgvishnuram.github.io/airflow_sidecar_release"

helm package  .  --app-version "${app_version}" "${extra_args[@]}"

#curl -sSLo "index-orig.yaml" https://${helm_repo}/index.yaml
helm repo index  . --url=https://pgvishnuram.github.io/airflow_sidecar_release #--merge "index-orig.yaml"
 

cp airflow-${version}.tgz /Users/vishnuram/Desktop/airflow_sidecar_release/airflow-${version}.tgz
cp index.yaml /Users/vishnuram/Desktop/airflow_sidecar_release/
