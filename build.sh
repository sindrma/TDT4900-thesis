if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

pdflatex $1
makeglossaries $1
bibtex $1
pdflatex $1
pdflatex $1
