#!/bin/sh

cd $GITHUB_WORKSPACE/gh-pages

cp -rf $GITHUB_WORKSPACE/gfx/ .
cp -rf $GITHUB_WORKSPACE/interface .
touch .nojekyll
mv -vn .github-pages/gitignore ./.gitignore
python .github-pages/hoi4_icon_search_gen.py --goals "$INPUT_GOALS" --ideas "$INPUT_IDEAS" --texticons "$INPUT_TEXTICONS" --events "$INPUT_EVENTS" --news-events "$INPUT_NEWSEVENTS" --agencies "$INPUT_AGENCIES"  --decisions "$INPUT_DECISIONS" --decisions-cat "$INPUT_DECISIONSCAT" --decisions-pics "$INPUT_DECISIONPICS" --title "$INPUT_TITLE" --favicon "$INPUT_FAVICON" --modified-images-str "$INPUT_MODIFIEDFILES"