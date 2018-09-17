FROM node:latest

ARG ELM_TEST_VERSION=latest

ENV YARNHOME /home/node/yarn
ENV APPHOME /home/node/app
ENV PATH $PATH:$YARNHOME/bin

RUN set -eux; \
  mkdir -p $YARNHOME/bin $APPHOME \
  && chown -R node:node ~node

USER node
RUN set -eux; \
  yarn global add --prefix $YARNHOME \
    elm \
    elm-test@$ELM_TEST_VERSION \
    elm-format \
    elm-live \
    create-elm-app \
  && elm --version \
  && elm-test --version \
  && elm-format \
  && elm-live --version

WORKDIR $APPHOME

CMD ["elm reactor", "--address=0.0.0.0"]
