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

# Universally known source control
testCommand "git" "git --version"
# For downloading tools and tarballs from internet sources
testCommand "wget" "wget --version"

echo ""
echo "All tools are successfully installed."
