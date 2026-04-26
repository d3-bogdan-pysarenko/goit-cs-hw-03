# Використання легковажного образу Python 3.10
FROM python:3.12-slim

ENV APP_DIR /app

WORKDIR $APP_DIR

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python", "main.py" ]