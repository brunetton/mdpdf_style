if [ -z "$1" ]; then
    echo "Usage: <nom_du_fichier.md>"
    exit -1;
fi
mdpdf "$1" --style=mdpdf/style.css --border-top=25 --border-bottom=55 --border-right=45 --border-left=45
