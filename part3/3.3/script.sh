#!/bin/bash
rm -rf springexample
git clone https://github.com/Koxanybak/spring-example-project springexample
cd springexample

cat ../secret.txt | docker login -u koxanybak --password-stdin
docker-compose build
docker-compose push