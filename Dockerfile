FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 7755
ENV FLASK_APP=core/server.py
CMD ["bash", "run.sh"]