FROM python:3.9

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

WORKDIR /src

COPY . /src

EXPOSE 8080

CMD ["python3", "manage.py", "runserver", "127.0.0.1:7777"]