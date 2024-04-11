FROM       squidfunk/mkdocs-material:latest

WORKDIR    /root
COPY       ./.profile mkdocs.yml entrypoint.sh ./
WORKDIR    /docs
ENV        ENV=~/.profile

RUN        pip install mkdocs-typedoc \
  &&       apk add --no-cache libstdc++ coreutils curl bash \
  &&       curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
  &&       . ~/.profile \
  &&       nvm install --lts \
  &&       nvm use --lts

ENTRYPOINT [ "~/entrypoint.sh" ]