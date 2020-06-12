FROM python:3

LABEL com.github.actions.name="HoI4 GFX Search Action"
LABEL com.github.actions.description="Generate a static HTML webpage for HoI4 GFX Search"
LABEL com.github.actions.icon="search"
LABEL com.github.actions.color="green"

LABEL maintainer="Antoni Baum <antoni.baum@protonmail.com>"

COPY /github-pages /gh-pages/.github-pages
COPY /images /gh-pages/images
COPY /bin/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]