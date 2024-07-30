FROM python:alpine
ARG MNAMER_VERSION=2.5.5
ARG UID=1000
ARG GID=1000
RUN addgroup mnamer -g $GID
RUN adduser mnamer -u $UID -G mnamer --disabled-password
USER mnamer
RUN pip3 install --no-cache-dir --upgrade pip mnamer==${MNAMER_VERSION}
#ENTRYPOINT ["python", "-m", "mnamer"]
#CMD ["-rb", "/data/anime", "/data/tvseries", "/data/movies", "/data/kids"]
#python -m mnamer -rb /data/anime /data/tvseries /data/movies /data/kids
CMD python -m mnamer -rb /data/anime /data/tvseries /data/movies /data/kids;python -m mnamer /data/downloads --movie-directory /data/movies --episode-directory /data/tvseries
