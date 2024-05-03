FROM       squidfunk/mkdocs-material:latest

ENV        ENV="/root/.profile"
WORKDIR    /root
COPY       ./.profile ./
WORKDIR    /home
COPY       ./mkdocs.root.yml ./
WORKDIR    /docs
RUN        pip install mkdocs-typedoc \
  &&       apk add --no-cache libstdc++ coreutils curl bash \
  &&       curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
  &&       . ~/.profile \
  &&       nvm install --lts \
  &&       nvm use --lts \
  &&       apk del coreutils curl bash 
ENTRYPOINT [ "/bin/sh", "-cl" ]
