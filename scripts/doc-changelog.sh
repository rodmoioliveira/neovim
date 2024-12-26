#!/bin/bash

declare TRACE
[[ "${TRACE}" == 1 ]] && set -o xtrace
set -o errexit
set -o nounset
set -o pipefail
set -o noclobber
shopt -s inherit_errexit

doc-changelog() {
  git cliff -o CHANGELOG.md
  sed -i -E "s/ $//g" CHANGELOG.md
}

main() {
  doc-changelog
}

main
