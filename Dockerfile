FROM python:3.8-slim

RUN pip install oracledb

RUN apt-get update && \
    apt-get install -y nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

CMD ["python", "test_oracle.py"]
