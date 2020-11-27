#!/bin/bash
DEADLINE='2020-11-27 23:00:00'
echo Deadine $DEADLINE
echo Repo $GITHUB_REPOSITORY
echo SHA $GITHUB_SHA
URL_PREFIX="https://github.com/"
SHA_PREFIX="/tree/"
DATE=`date +'%Y-%m-%d %H:%M:%S'`
echo Date $DATE
DATE_S=`date +%s`
echo Date $DATE_S
DEADLINE_S=`date +%s -d "$DEADLINE"`
echo Deadine sec $DEADLINE_S
REMAINING_S=`echo $((DEADLINE_S - DATE_S))`
echo Number of seconds left $REMAINING_S
DATA="$URL_PREFIX$GITHUB_REPOSITORY$SHA_PREFIX$GITHUB_SHA $DATE $REMAINING_S"
echo $DATA
if (($REMAINING_S >= 0)); then
          echo $DATA > .Ossonts/latestSHA.log
else
          echo $DATA >> .Ossonts/lateSHA.log
fi
echo  $DATA >> .Ossonts/latestHistory.log
cat .Ossonts/latest*