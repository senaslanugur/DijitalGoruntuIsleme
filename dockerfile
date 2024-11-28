# Python'un resmi imajını kullan
FROM python:3.9-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Gerekli dosyaları kopyala
COPY requirements.txt requirements.txt
COPY app.py app.py

# Bağımlılıkları yükle
RUN pip install --no-cache-dir -r requirements.txt

# Flask uygulamasını başlat
CMD ["python", "app.py"]
