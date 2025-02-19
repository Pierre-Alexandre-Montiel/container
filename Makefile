# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pmontiel <pmontiel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/22 11:30:52 by pmontiel          #+#    #+#              #
#    Updated: 2022/02/03 12:30:26 by pmontiel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	container

SRCS		=	main.cpp

OBJS		=	${SRCS:.cpp=.o}

CC			=	clang++

CFLAGS		=	-Wall -Wextra -Werror -std=c++98  -I./includes -g

%.o: %.cpp
				$(CC) $(CFLAGS) -c -o $@ $^

RM			=	rm -f

all:			${NAME}

$(NAME):		${OBJS}
				${CC} -o ${NAME} ${OBJS}

clean:
				${RM} ${OBJS}

fclean:			clean
				${RM} ${NAME}

re:				fclean all
