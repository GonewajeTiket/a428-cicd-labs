#!/bin/bash

PID=$(lsof -t -i :3000)

if [ -z "$PID" ]; then
  echo "react-app is not running"
else
  echo "kill react-app"
  kill "$PID"
  echo "react-app stopped"
fi
