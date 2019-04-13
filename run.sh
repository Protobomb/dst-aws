#!/usr/bin/env bash
docker run -it -v ${HOME}/src:/src -v ${HOME}/.aws/:/root/.aws -w /src dst-aws:latest /bin/bash
