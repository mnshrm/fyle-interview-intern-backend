FROM python:3.9-slim

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 3000
CMD waitress-serve --listen 0.0.0.0:3000 core.server:app

