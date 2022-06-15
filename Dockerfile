FROM python:2.7

RUN wget http://download.redis.io/releases/redis-3.0.6.tar.gz
RUN tar xzf redis-3.0.6.tar.gz
RUN cd redis-3.0.6 && make && make install

RUN wget http://ftp.postgresql.org/pub/source/v11.2/postgresql-11.2.tar.gz
RUN tar xzf postgresql-11.2.tar.gz
RUN cd postgresql-11.2 && ./configure && make && make install

# RUN wget --no-check-certificate http://archive.mariadb.org/mariadb-5.5.50/bintar-linux-x86_64/mariadb-5.5.50-linux-x86_64.tar.gz
# RUN tar xzf mariadb-5.5.50-linux-x86_64.tar.gz
# RUN cd mariadb-5.5.50-linux-x86_64 && make && make install

RUN apt update && apt install -y lcov

RUN pip install whoosh wordsegmentation wordsegment redis

WORKDIR /usr/src/app

CMD tail -f /dev/null
