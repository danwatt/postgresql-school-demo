#!/bin/bash
docker build -t pg-school .
docker run -p 5432:5432 pg-school