FROM python:3.6

WORKDIR /src

COPY requirements.txt ./

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN behave  --junit features/login.feature

RUN ll

