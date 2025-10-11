# 1️⃣ استفاده از نسخه سبک پایتون
FROM python:3.10-slim

# 2️⃣ تنظیم پوشه کاری داخل کانتینر
WORKDIR /app

# 3️⃣ کپی کردن همه فایل‌ها به داخل کانتینر
COPY . .

# 4️⃣ نصب پکیج‌های لازم
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ اعلام پورت برنامه
EXPOSE 5000

# 6️⃣ اجرای برنامه
CMD ["python", "app.py"]

