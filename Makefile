all: resume \
     cv

resume:
	@echo "Compiling $@.tex..."
	@xelatex $@.tex
	@make cut

cut:
	@echo "Cutting resume.pdf to 1 page..."
	@pdftk resume.pdf cat 1-1 output resume_trunc.pdf
	@mv resume_trunc.pdf resume.pdf

clean:
	@echo "Cleaning up..."
	@rm resume.pdf cv.pdf
