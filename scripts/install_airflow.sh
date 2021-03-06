#!/bin/bash
set -e

export AIRFLOW_HOME=~/airflow
# Install Airflow using the constraints file
AIRFLOW_VERSION=2.2.4
# PYTHON_VERSION="$(pyenv version-name | cut -d " " -f 2 | cut -d "." -f 1-2)"
PYTHON_VERSION=3.8
# For example: 3.6
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
# For example: https://raw.githubusercontent.com/apache/airflow/constraints-2.2.2/constraints-3.6.txt
# echo "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
pip install --upgrade pip
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
pip install dag-factory airflow-dbt pandas
