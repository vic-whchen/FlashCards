FROM python
MAINTAINER Tinpee <tinpee.dev@gmail.com>

ADD . /src
WORKDIR /src
RUN pip install flask gunicorn

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

VOLUME /src/db

EXPOSE 8000
CMD ["/entrypoint.sh"]


