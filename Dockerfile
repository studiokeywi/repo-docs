FROM       squidfunk/mkdocs-material:latest

ENV        ENV="/root/.profile"
WORKDIR    /docs
COPY       ./action.sh ./mkdocs.root.yml ./
RUN        pip install mkdocs-typedoc mkdocs-git-revision-date-localized-plugin && chmod +x ./action.sh
ENTRYPOINT cd /docs && sh ./action.sh
