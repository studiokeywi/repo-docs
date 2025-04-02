FROM       squidfunk/mkdocs-material:latest
RUN        \
  apk add nodejs npm \
  && pip install mkdocs-typedoc mkdocs-git-revision-date-localized-plugin
COPY       ./mkdocs.root.yml ./action.sh /etc/
COPY       ./assets /etc/assets
ENTRYPOINT [ "sh", "/etc/action.sh" ]
CMD        [ "serve", "--dev-addr=0.0.0.0:8000" ]
