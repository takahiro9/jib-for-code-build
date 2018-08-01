FROM docker:dind
RUN apk --no-cache add openjdk8
ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"
RUN apk --no-cache add python curl groff
RUN curl ${pip_installer} | python && pip install awscli

ENTRYPOINT ["dockerd-entrypoint.sh"]
