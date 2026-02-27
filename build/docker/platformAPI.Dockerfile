FROM python:3.14.3-slim-bookworm

WORKDIR /app

RUN pip install "openbb[all]"
RUN pip install openbb-platform-api

EXPOSE 6900

ENTRYPOINT ["openbb-api", "--host", "0.0.0.0", "--login"]
