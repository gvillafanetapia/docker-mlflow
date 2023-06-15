FROM python:3.9-slim-buster

RUN pip install PyMySQL==1.0.2 && \   
    pip install psycopg2-binary==2.9.1 && \
    pip install mlflow[extras]==2.3.2 && \
    pip install gevent==21.12.0

ENTRYPOINT ["mlflow", "server"]
