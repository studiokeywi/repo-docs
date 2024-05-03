FROM       squidfunk/mkdocs-material:latest

ENV        ENV="/root/.profile"
WORKDIR    /root
COPY       ./.profile ./
WORKDIR    /docs
COPY       ./action.sh ./mkdocs.root.yml ./
RUN        pip install mkdocs-typedoc && chmod +x ./action.sh
ENTRYPOINT cd /docs && sh ./action.sh
