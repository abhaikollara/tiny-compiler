%.run: %.o
		clang -g -m64 -o \$@ main.c \$<

%.o: %.s
		nasm -f macho64 -o \$@ \$<

%.s: %.source
		ocaml compiler.ml \$< > \$@