#                        __________________							   #
#                         S |-| - D - \/\/ 							   #
#                        ==================							   #
# 																	   #
#    	   Original code developed during 42.fr curriculum. 		   #
#  			  Project renamed and refactored for clarity.			   #
#              Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ				   #
# 																	   #
#    Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	   #

SRC=	i_isdigit.s \
		i_isalpha.s \
		i_bzero.s \
		i_tolower.s \
		i_toupper.s \
		i_isprint.s \
		i_isascii.s \
		i_isalnum.s \
		i_strlen.s \
		i_strcat.s \
		i_memcpy.s \
		i_strdup.s \
		i_memset.s \
		i_puts.s \
		i_cat.s \


ifeq ($(shell uname -s), Darwin)
	NASM = ~/.brew/bin/nasm -f macho64 -D DARWIN=1 --prefix _
else
	NASM = -f elf64 -D LINUX=1
endif

OBJ=	$(SRC:.s=.o)


all:
	make mac

mac:
	~/.brew/bin/nasm -f macho64 i_isdigit.s -o i_isdigit.o
	~/.brew/bin/nasm -f macho64 i_isalpha.s -o i_isalpha.o
	~/.brew/bin/nasm -f macho64 i_bzero.s -o i_bzero.o
	~/.brew/bin/nasm -f macho64 i_tolower.s -o i_tolower.o
	~/.brew/bin/nasm -f macho64 i_toupper.s -o i_toupper.o
	~/.brew/bin/nasm -f macho64 i_isprint.s -o i_isprint.o
	~/.brew/bin/nasm -f macho64 i_isascii.s -o i_isascii.o
	~/.brew/bin/nasm -f macho64 i_isalnum.s -o i_isalnum.o
	~/.brew/bin/nasm -f macho64 i_strlen.s -o i_strlen.o
	~/.brew/bin/nasm -f macho64 i_strcat.s -o i_strcat.o
	~/.brew/bin/nasm -f macho64 i_memcpy.s -o i_memcpy.o

	~/.brew/bin/nasm -f macho64 i_strdup.s -o i_strdup.o

	~/.brew/bin/nasm -f macho64 i_memset.s -o i_memset.o
	~/.brew/bin/nasm -f macho64 i_puts.s -o i_puts.o
	~/.brew/bin/nasm -f macho64 i_cat.s -o i_cat.o
	
	ar rc libfts.a $(OBJ)

	gcc main.c libfts.a -lsystem

	make clean
	# ~/.brew/bin/nasm -f macho64 $(SRC) -o $(OBJ)

linux:
	nasm -f elf64 i_isdigit.s -o i_isdigit.o
	nasm -f elf64 i_isalpha.s -o i_isalpha.o
	nasm -f elf64 i_bzero.s -o i_bzero.o
	nasm -f elf64 i_tolower.s -o i_tolower.o
	nasm -f elf64 i_toupper.s -o i_toupper.o
	nasm -f elf64 i_isprint.s -o i_isprint.o
	nasm -f elf64 i_isascii.s -o i_isascii.o
	nasm -f elf64 i_isalnum.s -o i_isalnum.o
	nasm -f elf64 i_strlen.s -o i_strlen.o
	nasm -f elf64 i_strcat.s -o i_strcat.o
	nasm -f elf64 i_memcpy.s -o i_memcpy.o
	gcc main.c $(OBJ)
	make clean

clean:
	rm -rf $(OBJ)

fclean:
	make clean
	rm -rf a.out


re:
	make all


