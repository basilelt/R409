FROM python:latest

ADD django-model-master/ /app

RUN set -ex \
    && python -m venv /env \
    && /env/bin/pip install --upgrade pip \
    && /env/bin/pip install --no-cache-dir -r /app/requirements.txt

WORKDIR /app/modele

ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH

#CMD ["daphne", "-b", "0.0.0.0", "-p", "8000", "modele.asgi:application"]
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "modele.wsgi:application"]