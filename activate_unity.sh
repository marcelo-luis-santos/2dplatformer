#!/bin/bash
/opt/unity/Editor/Unity -batchmode -quit -logFile /dev/stdout -nographics -username '$UNITY_USERNAME_PASSWORD_USR' -password '$UNITY_USERNAME_PASSWORD_PWD' -serial '$UNITY_SERIAL'
