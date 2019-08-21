all: resume

resume:
	@echo "Compiling $@.tex..."
	@xelatex $@.tex

clean:
	@echo "Cleaning up..."
	@rm resume.pdf
