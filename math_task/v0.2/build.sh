mkdir tmp
touch tmp/number.txt
echo "\setcounter{curtask}{1}" > tmp/number.txt
cp main.tex series
cd series
for i in *.tex; do
	if [ "$i" != 'main.tex' ]; then
		sed -i -- "s/curseries/"$i"/g" main.tex
		cat "../tmp/number.txt"
		pdflatex --output-directory ../tmp -jobname "${i::-4}" main.tex
	fi
done

rm main.tex

cd ../tmp
rm *.log
rm *.aux
rm *.txt
