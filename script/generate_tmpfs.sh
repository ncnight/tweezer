#!/bin/bash

mkdir -p /app && \
mount -t tmpfs -o size=8G tmpfs /app

