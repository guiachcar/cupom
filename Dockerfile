FROM python:2.7

RUN mkdir /cupom_app

WORKDIR /cupom_app

ADD . .

RUN pip install -r requirements.txt
RUN python run.py db migrate

EXPOSE 5000

CMD flask run --host 0.0.0.0
