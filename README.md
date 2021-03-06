# Docker Image for MLFlow

This repository builds a Docker image to put an [MLFlow](https://mlflow.org/) into production.

The MLFlow server supports the following backend stores:
- MySQL
- PostgreSQL

It also includes gevent to use async workers in gunicorn:

```
mlflow server [...] --gunicorn-option '--timeout 120 --worker-class gevent --worker-connections 1000'
```
