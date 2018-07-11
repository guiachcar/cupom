FROM python:2.7

RUN mkdir /cupom_app

WORKDIR /cupom_app

ADD . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD flask run --host 0.0.0.0
