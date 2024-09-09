#!/bin/bash

for file in ./manifests/secrets/*.yaml
do
  filename=$(basename "$file")
  echo $filename
  sops --age $(cat ./bootstrapping/age/public.txt) --encrypted-suffix='Templates' -e $(realpath $file) > ./manifests/applications/enc.$filename
done