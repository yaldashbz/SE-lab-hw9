FROM python:3.9
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN python db.py
EXPOSE 5000
CMD ["python", "app.py"]