FROM node:latest

ENV NPM_CONFIG_PREFIX /home/node/.npm-global
ENV PATH ${PATH}:${NPM_CONFIG_PREFIX}/bin

USER node
RUN mkdir ~node/.npm-global \
  && mkdir ~node/app \
  && npm install -g \
    elm \
    elm-test \
    elm-format

WORKDIR /home/node/app
EXPOSE 8000
CMD ["elm-reactor", "--address=0.0.0.0"]
