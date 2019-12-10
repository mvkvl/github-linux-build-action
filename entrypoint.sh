#!/bin/sh -l

#echo "Hello $1"
#time=$(date)
#echo ::set-output name=time::$time

#echo "DIR FILES:"
#ls

#echo
#echo "ALL FILES:"
#ls */*

echo "----------------------------------------------------------------"

env

echo "----------------------------------------------------------------"

#string='My long string'
TLS=""
if [[ $INPUT_ARGS =~ "no-tls" ]]
then
  TLS="-no-tls"
fi

TAG=$(echo $GITHUB_REF | cut -c11- )
echo "VERSION: $TAG"

echo "COMMAND: $INPUT_COMMAND"

echo "ARGS: $INPUT_ARGS"

echo "FILE_PREFIX: $INPUT_ARTIFACT"

echo "ARTIFACT: ${INPUT_ARTIFACT}-${TAG}${TLS}.zip"

mkdir build
ls
echo "GENERATED ARTIFACT" > ./build/artifact.txt
ls build

echo "----------------------------------------------------------------"
echo "$GITHUB_WORKSPACE"
echo "----------------------------------------------------------------"
ls $GITHUB_WORKSPACE
echo "----------------------------------------------------------------"
ls $GITHUB_WORKSPACE/*
echo "----------------------------------------------------------------"

