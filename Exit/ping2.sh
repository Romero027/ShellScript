#!/bin/bash
#version 2
HOST_NAME="www.google.com"
#if the ping command succeed, echo command will be executed
ping -c 1 ${HOST_NAME} && echo "${HOST_NAME} is reachable"
#if the ping command succend. echo commmand will not be executed
ping -c 1 ${HOST_NAME} || echo "${HOST_NAME} is unreachable"