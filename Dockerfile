FROM continuumio/miniconda3

RUN apt-get install sqlite3
RUN sqlite3 /mlflow_backend_store/mlflow.db
RUN pip install mlflow

ENTRYPOINT mlflow server --backend-store-uri /mlflow_backend_store/mlflow.db --default-artifact-root /mlflow_artifact_store --host 0.0.0.0
