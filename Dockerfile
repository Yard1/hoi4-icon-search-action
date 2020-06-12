FROM python:3

LABEL com.github.actions.name="HoI4 GFX Search Action"
LABEL com.github.actions.description="Generate a static HTML webpage for HoI4 GFX Search"
LABEL com.github.actions.icon="search"
LABEL com.github.actions.color="green"

LABEL maintainer="Antoni Baum <antoni.baum@protonmail.com>"

COPY /github-pages /hoi4-icon-search-action/github-pages
COPY /images /hoi4-icon-search-action/images

WORKDIR /hoi4-icon-search-action

RUN python -m pip install --upgrade pip && pip install -r github-pages/requirements.txt

ENTRYPOINT ["/hoi4-icon-search-action/.github-pages/entrypoint.sh"]