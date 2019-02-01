all: resume

resume:
	@echo "Compiling $@.tex..."
	@xelatex $@.tex
	@make cut

clean:
	@echo "Cleaning up..."
	@rm resume.pdf
