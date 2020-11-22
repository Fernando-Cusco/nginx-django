#Imagen con base en python
From python:3.6.3

ENV PYTHONBUFFERED 1

#Creamos una carpeta para alogar nuestro codigo Python
RUN mkdir /code

#Copiamos nuestro codigo Python local a la imagen (carpeta anteriormente creada)
ADD ./hello_earth /code

#Establezca el directorio de trabajo para el contenedor. Es decir, todos los comandos se basarán en este directorio
WORKDIR /code

#Instalar todas las dependencias necesarias para ejecutar nuestra app
RUN pip install --trusted-host pypy.org --trusted-host files.pythonhosted.org -r requirements.txt
