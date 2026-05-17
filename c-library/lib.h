/*                       __________________							  */
/*                        S |-| - D - \/\/ 							  */
/*                       ==================							  */
/*																	  */
/*   	   Original code developed during 42.fr curriculum. 		  */
/* 			  Project renamed and refactored for clarity.			  */
/*             Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ				  */
/*																	  */
/*   Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	  */

#ifndef LIB_H
# define LIB_H
# include <unistd.h>
# include <string.h>
# include <stdlib.h>
# include <fcntl.h>

int		i_isdigit(int c);
int		i_isalpha(int c);
void		i_bzero(void *s, size_t n);
int		i_tolower(int c);
int		i_toupper(int c);
int		i_isprint(int c);
int		i_isascii(int c);
int		i_isalnum(int c);
size_t		i_strlen(const char *s);
char		*i_strcat(char *dest, const char *src);
void		*i_memcpy(void *dest, const void *src, size_t n);
char		*i_strdup(const char *s1);
void		*i_memset(void *b, int c, size_t len);

int		i_puts(const char *s);
void		i_cat(int fd);
int		i_putchar(int c);
#endif
