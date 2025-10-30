FROM python:3.10-slim
WORKDIR /app
COPY src/ src/
COPY tests/ tests/
COPY run-tests.sh .
RUN pip install pytest
CMD ["python","src/main.py"]
