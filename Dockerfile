# Hivatalos Python image-ből indulunk
FROM python:3.12-slim

# Munkakönyvtár a konténeren belül
WORKDIR /app

# Először csak a requirements.txt-t másoljuk be
COPY requirements.txt .

# Függőségek telepítése
RUN pip install --no-cache-dir -r requirements.txt

# A projekt teljes tartalmának bemásolása
COPY . .

# A Flask app 8080-as porton fut
EXPOSE 8080

# Konténer induláskor futtatandó parancs
CMD ["python", "app.py"]