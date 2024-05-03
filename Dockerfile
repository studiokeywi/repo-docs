FROM       squidfunk/mkdocs-material:latest

ENV        ENV="/root/.profile"
WORKDIR    /root
COPY       ./.profile ./
WORKDIR    /docs
COPY       ./action.sh ./mkdocs.root.yml ./
RUN        pip install mkdocs-typedoc \
  &&       apk add --no-cache libstdc++ coreutils curl bash \
  &&       curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
  &&       . ~/.profile \
  &&       nvm install --lts \
  &&       nvm use --lts \
  &&       apk del coreutils curl bash \
  &&       chmod +x ./action.sh
ENTRYPOINT ls / && ls /docs && cd /docs && sh ./action.sh
