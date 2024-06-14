# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jesopan- <jesopan-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/20 16:37:26 by jesopan-          #+#    #+#              #
#    Updated: 2024/04/21 14:54:41 by jesopan-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


LIB = ar rcs

CLANG = clang
CFLAGS = -Wall -Wextra -Werror

# Corrected the name to follow the convention for static libraries
NAME = libprintf.a
SRCS = \
	ft_printf.c ft_print_chrs.c ft_print_num.c ft_print_xbig.c ft_print_void.c \

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(LIB) $(NAME) $(OBJS)

%.o: %.c
	$(CLANG) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all