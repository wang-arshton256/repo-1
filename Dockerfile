FROM python:3.12-slim

WORKDIR /myapp

# Install Flask
RUN pip install flask

# Copy your existing main.py into container
COPY main.py .

# Expose container port 8080 (for Cloud Run)
EXPOSE 8080

# Run your Flask app
CMD ["python", "main.py"]
