FROM ynishi/elm:latest

ENV YARNHOME /home/node/yarn

USER node
RUN set -eux; \
  yarn global add --prefix $YARNHOME \
  webpack@1 \
  webpack-dev-middleware@1 \
  webpack-dev-server@1 \
  elm-webpack-loader@4 \
  file-loader@0 \
  style-loader@0 \
  css-loader@0 \
  url-loader@0 \
  ace-css@1 \
  font-awesome@4 \
  foreman

CMD ["webpack"]
