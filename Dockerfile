FROM python:3.6-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT ["python", "main.py"]