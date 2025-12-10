# Lightweight Alpine-based Python image
FROM python:3.10-alpine

WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY src/ ./src/

CMD ["python", "src/app.py"]
