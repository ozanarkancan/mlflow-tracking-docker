```bash
docker build --tag mlflow .
docker run -d -p 666:5000 -v /mlflow/mlflow_backend_store:/mlflow_backend_store -v /mlflow/mlflow_artifact_store/:/mlflow_artifact_store mlflow
```
