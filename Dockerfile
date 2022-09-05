FROM python:3.10 
RUN pip3 install django

COPY . .

RUN python manage.py migrate
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]


