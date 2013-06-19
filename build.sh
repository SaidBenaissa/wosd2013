#!/bin/sh

navi=./template/navi-bar.html
footer=./template/footer.html

# update Program-Committee infomation
konoha ./data/chair.k
# index.html
cat $navi ./template/index.html $footer > html/index.html

cat $navi ./template/cfp.html $footer> html/cfp.html
cat $navi ./template/important-dates.html $footer > html/important-dates.html
cat $navi ./template/program-committee-begin.html ./data/chair.html \
    ./template/program-committee-end.html $footer > html/program-committee.html
cat $navi ./template/submission.html $footer > html/submittion.html
