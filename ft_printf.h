/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jesopan- <jesopan-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/20 14:38:25 by jesopan-          #+#    #+#             */
/*   Updated: 2024/04/23 15:33:47 by jesopan-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <stddef.h>
# include <unistd.h>

int	ft_print_chr(int c);
int	ft_print_str(char *str);
int	ft_print_num(long n, int base);
int	ft_print_void(unsigned long long ptr);
int	ft_print_bigx(long n, int base);
int	ft_print_u(long n, int base);
int	ft_printf_int(int n, int base);
int	print_format(char specifier, va_list arg);
int	ft_printf(const char *format, ...);

#endif
