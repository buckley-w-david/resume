.PHONY: image build watch

image:
	podman build -t latex .

resume:
	podman run --rm -i -v "${PWD}":/data latex pdflatex david_buckley_resume.tex

watch:
	ls *.tex | entr -r make resume
