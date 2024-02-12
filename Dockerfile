FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
#COPY all root files folders into app folder
COPY . .
#make container available to main computer using port  mapping
CMD ["python","manage.py", "runserver","0.0.0.0:8000" ] 



#######COMMANDS TO BUILD IMAGES & RUN CONTAINER ######

# docker build --tag python-django .
# docker run --publish 8000:8000 python-django

