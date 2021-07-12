FROM python:3.8-slim-buster

RUN pip install PyMySQL==0.9.3 && \   
    pip install psycopg2-binary==2.8.6 && \
    pip install mlflow[extras]==1.18.1 && \
    pip install gevent

ENTRYPOINT ["mlflow", "server"]
