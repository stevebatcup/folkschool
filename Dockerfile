FROM ruby:2.6.6

RUN apt-get update -yqq \
		&& apt-get install -yqq --no-install-recommends \
		postgresql-client vim nodejs \
		&& rm -rf /var/lib/apt/lists

ENV BUNDLE_PATH /gems
ENV app /usr/src/app
ENV PATH $app/bin:$PATH

WORKDIR $app

ADD . $app

EXPOSE 4001
CMD ./lib/docker-entrypoint.sh