FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt || true
# Optional: Create and use non-root user
RUN useradd -m appuser
USER appuser

CMD ["python3", "src/app.py"]
