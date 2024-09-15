FROM python:3

COPY ./requirements.txt /app/requirements.txt

WORKDIR APP

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]