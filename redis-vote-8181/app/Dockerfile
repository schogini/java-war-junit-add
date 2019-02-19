FROM python:2.7-slim

ADD app.py /

RUN pip install --trusted-host pypi.python.org Flask Redis

EXPOSE 8181

ENV NAME SreeABCDE

CMD ["python", "app.py"]
