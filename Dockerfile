FROM alpine:latest
WORKDIR /app
COPY . /app
RUN apk update && apk upgrade
RUN apk add python3
RUN apk add py3-pip
RUN python -m venv .venv
RUN source .venv/bin/activate
RUN pip install -r requirements.tx
CMD ["python", "app.py"]
EXPOSE 80