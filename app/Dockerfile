FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt || true
RUN chmod +x run-tests.sh

CMD ["python3", "src/app.py"]
