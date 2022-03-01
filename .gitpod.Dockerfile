FROM corise/dbt-course-gitpod

ENV INVALIDATE_CACHE=22

COPY scripts/install_R.sh install_R.sh
COPY scripts/install_airflow.sh install_airflow.sh

RUN sudo ./install_airflow.sh
RUN sudo ./install_R.sh
