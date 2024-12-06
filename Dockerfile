# Gunakan base image Python
FROM python:3.12-slim

# Set environment variable untuk menghindari buffering
ENV PYTHONUNBUFFERED=1

# Tetapkan working directory di container
WORKDIR /app

# Salin file requirements.txt ke dalam container
COPY requirements.txt .

# Install dependensi Python
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file ke dalam container
COPY . .

# Tentukan port yang akan digunakan aplikasi
EXPOSE 8080

# Perintah untuk menjalankan aplikasi
CMD ["python", "run.py"]
