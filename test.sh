#!/usr/bin/env bash

function testCommand {
  commandName=$1
  command=$2
  echo
  echo "Testing for: $commandName"
  # shellcheck disable=SC2034
  testOutput=$($command)
  testExitCommand=$?

  if [ $testExitCommand != 0 ]
  then
    echo "Tool not installed successfully: $commandName"
    exit 1
  fi
}

testCommand "z shell" "zsh --version"
# Universally known source control
testCommand "git" "git --version"
# For downloading tools and tarballs from internet sources
testCommand "wget" "wget --version"
testCommand "java" "java -version"
#testCommand "ssh agent" "ssh-add ~/.ssh"

echo ""
echo "All tools are successfully installed."
