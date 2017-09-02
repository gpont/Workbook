filename = $(basename $(notdir ${f}))

./objects/${filename}.pdf: ./sources/${filename}.tex
	@mkdir -p objects
	@mkdir -p binary
	@pdflatex -output-directory=./objects -file-line-error ./sources/${filename}.tex
	@cp ./objects/${filename}.pdf ./binary/${filename}.pdf
	@rm -f ./objects/*
	@evince ./binary/${filename}.pdf

