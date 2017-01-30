FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.2

RUN gem install aws_one_click_staging --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["aws_one_click_staging"]
CMD ["--help"]
