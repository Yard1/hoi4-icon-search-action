#!/bin/bash

cd /

cp -n hoi4-icon-search-action/* $GITHUB_WORKSPACE/gh-pages

cd $GITHUB_WORKSPACE/gh-pages

cp -rf $GITHUB_WORKSPACE/gfx/ .
cp -rf $GITHUB_WORKSPACE/interface .
touch .nojekyll
cp -f github-pages/gitignore ./.gitignore
read -a INPUT_GOALS <<< "${INPUT_GOALS}"
read -a INPUT_IDEAS <<< "${INPUT_IDEAS}"
read -a INPUT_TEXTICONS <<< "${INPUT_TEXTICONS}"
read -a INPUT_EVENTS <<< "${INPUT_EVENTS}"
read -a INPUT_NEWSEVENTS <<< "${INPUT_NEWSEVENTS}"
read -a INPUT_AGENCIES <<< "${INPUT_AGENCIES}"
read -a INPUT_DECISIONS <<< "${INPUT_DECISIONS}"
read -a INPUT_DECISIONSCAT <<< "${INPUT_DECISIONSCAT}"
read -a INPUT_DECISIONPICS <<< "${INPUT_DECISIONPICS}"
python github-pages/hoi4_icon_search_gen.py --goals ${INPUT_GOALS[@]} --ideas ${INPUT_IDEAS[@]} --texticons ${INPUT_TEXTICONS[@]} --events ${INPUT_EVENTS[@]} --news-events ${INPUT_NEWSEVENTS[@]} --agencies ${INPUT_AGENCIES[@]}  --decisions ${INPUT_DECISIONS[@]} --decisions-cat ${INPUT_DECISIONSCAT[@]} --decisions-pics ${INPUT_DECISIONPICS[@]} --title ${INPUT_TITLE} --favicon ${INPUT_FAVICON} --modified-images-str ${INPUT_MODIFIEDFILES}