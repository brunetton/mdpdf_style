#!/bin/env bash
if [ -z "$1" ]; then
    echo "Usage: <nom_du_fichier.md>"
    exit -1;
fi
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )  # https://stackoverflow.com/a/246128/276894
echo $SCRIPT_DIR
# workaround for https://github.com/BlueHatbRit/mdpdf/issues/162
mdpdf "$1" --style=$SCRIPT_DIR/style.css --border-top=25 --border-bottom=55 --border-right=45 --border-left=45
