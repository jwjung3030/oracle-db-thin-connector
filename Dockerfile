FROM python:3.8-slim

RUN pip install oracledb

WORKDIR /app
COPY . /app

CMD ["python", "test_oracle.py"]
