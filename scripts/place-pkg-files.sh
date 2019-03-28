#!/bin/bash

set -e

function place_files() {
    local pkgname="$1"
    local targdir="$2"
    local pkgtype="$3"

    mkdir -p "$targdir/usr/bin"
    cp src/* "$targdir/usr/bin/"
    chmod +x "$targdir/usr/bin/"*
}

place_files "$1" "$2" "$3"

