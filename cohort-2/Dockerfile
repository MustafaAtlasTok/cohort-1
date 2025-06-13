# 1) Base image: slim Python runtime
FROM python:3.11-slim

# 2) Set working directory inside container
WORKDIR /app

# 3) Install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# 4) Copy application code
COPY app.py ./

# 5) Add an entrypoint script to show env and start app
COPY entrypoint.sh ./
RUN chmod +x entrypoint.sh

# 6) Expose the port our app listens on
EXPOSE 8080

# 7) Default value for our greeting
ENV APP_NAME="Docker"

# 8) Launch via our script
ENTRYPOINT ["./entrypoint.sh"]
