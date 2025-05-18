# ================================
# Stage 1: Build Dependencies
# ================================
FROM python:3.9-slim AS build

# Set environment variables (fixed format)
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

# ================================
# Stage 2: Run the Application
# ================================
FROM python:3.9-slim

# Set environment variables (fixed format)
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    FLASK_ENV=development \
    PATH=/root/.local/bin:$PATH

# Set the working directory
WORKDIR /app

# Copy dependencies from the build stage
COPY --from=build /root/.local /root/.local

# Copy application source code
COPY . .

# Expose the application port
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host", "0.0.0.0", "--reload"]
