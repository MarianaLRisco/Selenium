FROM pytorch/pytorch:2.2.0-cuda11.8-cudnn8-runtime

# Establece el directorio de trabajo
WORKDIR /app

# Copia el contenido del proyecto al contenedor
COPY . /app

# Instala pip actualizado y dependencias generales
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN pip install jupyter

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]