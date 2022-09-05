FROM python:3.8.10
RUN pip3 install Django==1.18

COPY . .

RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]


