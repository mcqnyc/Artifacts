FROM python:3.12

WORKDIR /artifactsapi

COPY ./requirements.txt /artifactsapi/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /artifactsapi/requirements.txt

COPY ./artifactsapi /artifactsapi/artifactsapi

CMD ["fastapi", "run", "artifactsapi/main.py", "--port", "80"]
