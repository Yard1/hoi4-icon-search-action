FROM python:3

LABEL com.github.actions.name="HoI4 GFX Search Action"
LABEL com.github.actions.description="Generate a static HTML webpage for HoI4 GFX Search"
LABEL com.github.actions.icon="search"
LABEL com.github.actions.color="green"

LABEL maintainer="Antoni Baum <antoni.baum@protonmail.com>"

WORKDIR /gh-pages

COPY /github-pages /gh-pages/.github-pages
COPY /images /gh-pages/images

RUN python -m pip install --upgrade pip && pip install -r .github-pages/requirements.txt

ENTRYPOINT ["/gh-pages/.github-pages/entrypoint.sh"]