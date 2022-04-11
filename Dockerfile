FROM python:3.10.4-bullseye

# Acessa um dir, caso nao exista, cria e acessa
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

# seleciona a porta que sera utilizada
EXPOSE 5000

ENV FLASK_ENV development

# copia o arquivo, ou seja, o seleciona
COPY app.py .

# Comandos que serao executados quando o container iniciado
CMD ["flask", "run", "--host", "0.0.0.0"]
