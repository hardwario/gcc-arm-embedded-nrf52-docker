#!/bin/bash

docker build -t gcc-arm-embedded-nrf52-docker:latest .

docker build -t gcc-arm-embedded-nrf52-docker:8-2018-q4-major 8-2018-q4-major

docker build -t gcc-arm-embedded-nrf52-docker:7-2018-q2-update 7-2018-q2-update

docker build -t gcc-arm-embedded-nrf52-docker:7-2017-q4-major 7-2017-q4-major

docker build -t gcc-arm-embedded-nrf52-docker:6-2017-q2-update 6-2017-q2-update
