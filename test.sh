#!/usr/bin/env bash

function testCommand {
  commandName=$1
  command=$2
  echo "Testing for: $commandName"
  # shellcheck disable=SC2034
  testOutput=$($command)
  testExitCommand=$?

  if [ $testExitCommand != 0 ]
  then
    exit 1
  fi
}

testCommand "git" "git --version"

echo ""
echo "All tools are successfully installed."
