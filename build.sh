#!/bin/sh

navi=./template/navi-bar.html
footer=./template/footer.html
build=./wosd2013
# update Program-Committee infomation
konoha ./data/chair.k
# index.html
cat $navi ./template/index.html $footer > $build/index.html

cat $navi ./template/cfp.html $footer> $build/cfp.html
cat $navi ./template/important-dates.html $footer > $build/important-dates.html
cat $navi ./template/program-committee-begin.html ./data/chair.html \
    ./template/program-committee-end.html $footer > $build/program-committee.html
cat $navi ./template/submission.html $footer > $build/submission.html
cat $navi ./template/invited-talk.html $footer > $build/invited-talk.html
