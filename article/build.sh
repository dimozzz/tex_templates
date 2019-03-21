dir=pdf
mkdir $dir
pdflatex --output-directory $dir main.tex
cp main.bib $dir
cd $dir
biber main
cd ..
pdflatex --output-directory $dir main.tex
pdflatex --output-directory $dir main.tex
