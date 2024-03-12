# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dex <dex@student.42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/07 14:45:53 by dbertoia          #+#    #+#              #
#    Updated: 2023/12/20 21:03:25 by dex              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_printf.c src/prt_unsigned.c src/prt_str.c src/prt_ptr.c src/prt_int.c src/prt_hexa.c

OBJS	= ${SRCS:.c=.o}

NAME	= libftprintf.a

CC		= cc

RM		= rm -rf

CFLAGS	= -Wall -Wextra -Werror -I./includes/

all:	${NAME}

${NAME}:	${OBJS}	
			$(MAKE) -C ./libft
			cp ./libft/libft.a $(NAME)			
			ar rc ${NAME} ${OBJS}
clean:
					$(MAKE) clean -C ./libft
					${RM} ${OBJS}

fclean:	clean
				$(MAKE) fclean -C ./libft
				${RM} ${NAME}
re:		fclean all

.PHONY : all clean fclean re

