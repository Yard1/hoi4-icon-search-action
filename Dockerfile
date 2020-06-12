FROM python:3

COPY /github-pages /hoi4-icon-search-action/github-pages
COPY /images /hoi4-icon-search-action/images

WORKDIR /hoi4-icon-search-action

RUN python -m pip install --upgrade pip && pip install -r github-pages/requirements.txt

ENTRYPOINT ["/hoi4-icon-search-action/github-pages/entrypoint.sh"]