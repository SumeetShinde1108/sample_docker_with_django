FROM Python:3.11

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir r- requirements.txt

COPY . code 

ENTRYPOINT [ "python","sample/manage.py" ]

CMD ["runserver","0.0.0.0:8000"]