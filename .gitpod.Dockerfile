FROM corise/dbt-course-gitpod

COPY scripts/install_R.sh install_R.sh
COPY scripts/install_airflow.sh install_airflow.sh

RUN ./install_airflow.sh
RUN ./install_R.sh
