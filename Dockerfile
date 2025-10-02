FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN useradd --create-home --shell /bin/bash app && chown -R app:app /app
USER app
EXPOSE 5000

CMD ["python", "app.py"]

