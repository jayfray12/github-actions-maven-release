#!/usr/bin/env bash

export CI_COMMIT_SHA="${GITHUB_SHA}"
export CI_COMMIT_REF_NAME="${GITHUB_REF}"

gpg --list-secret-keys --keyid-format LONG

cat /github/workspace/.github/workflows/settings.xml

echo "GPG KEY ${GPG_KEY_ID}"

release.sh
