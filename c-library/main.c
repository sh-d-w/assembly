/*                       __________________							  */
/*                        S |-| - D - \/\/ 							  */
/*                       ==================							  */
/*																	  */
/*   	   Original code developed during 42.fr curriculum. 		  */
/* 			  Project renamed and refactored for clarity.			  */
/*             Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ				  */
/*																	  */
/*   Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	  */

#include "lib.h"
#include <stdio.h>

int		test_isdigit(void)
{
	int	i;

	i = -2;
	while (++i < 60)
		printf("%d %d\n", i, i_isdigit(i));
	return (0);
}

int	test_isalpha(void)
{
	int	i;

	i = -2;
	while (++i < 127)
		printf("%d %c %d\n", i, (char)i, i_isalpha(i));
	return (0);
}

int	test_bzero(void)
{
	int	x;
	char	s[1024] = "helloworld";

	x = -1;
	printf("prev: %s\n", s);
	i_bzero(s, 5/*1024*/);
	while (++x < 10)
		printf("bzero: %s\n", &s[x]);
	return (0);
}

void	test_tolower(void)
{
	int	x;

	x = -1;
	while (++x < 127)
		printf("%c %c\n", (char)x, i_tolower(x));
}

void	test_toupper(void)
{
	int	x;

	x = -1;
	while (++x < 127)
		printf("%c %c\n", (char)x, i_toupper(x));
}

void	test_isprint(void)
{
	int	x;

	x = -1;
	while (++x < 129)
		printf("%d %c %d\n", x, (char)x, i_isprint(x));
}

void	test_isascii(void)
{
	int	x;

	x = -1;
	while (++x < 130)
	{
		printf("%d %c %d\n", x, (char)x, i_isascii(x));
	}
}

void	test_isalnum(void)
{
	int	x;

	x = -1;
	while (++x < 128)
		printf("%d %c %d\n", x, (char)x, i_isalnum(x));
}

void	test_strlen(void)
{
	char	s[1024] = "helloworld1\n";

	printf("i_strlen: %lu\n", i_strlen(s));
}

void	test_strcat(void)
{
	char	dst[1024];
	char	src[1024] = "testthis\n\0";

	i_bzero(dst, 1024);//otherwise will display random chars in output.
	printf("i_strcat rax: %s\n", i_strcat(dst, src));
	printf("i_strcat rdi %s\n", dst);
}

void	test_memcpy(void)
{
	char	dst[1024];
	char	src[1024] = "testthis\n";


	printf("i_memcpy: %s\n", src);
	printf("i_memcpy: %s\n", (char *)i_memcpy(dst, src, 4));
	printf("i_memcpy: %s\n", dst);
}

void	test_strdup(void)
{
	char s[1024] = "testthisout";
	char *t;

	printf("%s\n", (t = i_strdup(s)));
	t[0] = 'j';
	printf("new: %s | old: %s\n", t, s);
	free(t ? t : NULL);
}

void	test_memset(void)
{
	char	s[1024]  = "testthis";

	printf("prev: %s\n", s);
	printf("return: %s\n", i_memset(s, 'a', 3));
	printf("after %s\n", s);
}

void	test_puts(void)
{
	i_puts("test these out:puts");
}

void	test_cat(void)
{
	int	fd;

	fd = open("main.c", O_RDONLY);
	i_cat(fd);//should display text to std output.
	close(fd);
}

void	test_putchar(void)
{
//	i_putchar('a');
//	i_putchar('\n');
}

int	main(void)
{
	//test_isalpha();
	//test_isdigit();
	//test_bzero();
	//test_tolower();
	//test_toupper();
	//test_isprint();
	//test_isascii();
	//test_isalnum();
	//test_strlen();
	//test_strcat();//special learning: movsq
	//test_memcpy();
	//test_strdup();
	//test_memset();

	//test_puts();
	test_cat();

	//test_putchar();
	return (0);
}

//add floats
