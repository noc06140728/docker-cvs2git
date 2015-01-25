#!/bin/bash
set -e

mkdir -p ~/cvsrepo/CVSROOT ~/gitrepo

exec "$@"
