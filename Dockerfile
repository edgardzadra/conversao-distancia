FROM python:3.9.16

WORKDIR /app

COPY requirements.txt ./

RUN python3 -m pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "app.py","run", "--host=0.0.0.0" ]