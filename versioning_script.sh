# #!/bin/bash

# COMMIT_MESSAGE=$(git log -1 --pretty=%B)

# if [[ $COMMIT_MESSAGE =~ ^feat ]]; then
#     mvn versions:set -DnextSnapshot=true
# elif [[ $COMMIT_MESSAGE =~ ^fix ]]; then
#     mvn versions:set -DnextPatch=true
# fi

# mvn release:prepare release:perform
