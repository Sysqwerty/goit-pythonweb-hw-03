FROM python:3.12-alpine

WORKDIR /app

# Install the application dependencies
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt

# Copy in the source code
COPY . .

EXPOSE 3000

CMD ["python", "main.py"]