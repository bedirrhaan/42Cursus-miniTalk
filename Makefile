# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcopoglu <bcopoglu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/19 22:02:37 by bcopoglu          #+#    #+#              #
#    Updated: 2023/08/19 22:02:39 by bcopoglu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME            =   minitalk

SERVER			=	server
SERVER_SRC		=	server.c


CLIENT			=	client
CLIENT_SRC		=	client.c


UTILS_SRC		=	utils.c

CC				=	gcc
RM 				=	rm -rf
FLAGS			= 	-Wall -Werror -Wextra

all : $(SERVER) $(CLIENT)

$(NAME): all

$(SERVER) :
	$(CC) $(FLAGS) $(SERVER_SRC) $(UTILS_SRC) -o $(SERVER)


$(CLIENT) :
	$(CC) $(FLAGS) $(CLIENT_SRC) $(UTILS_SRC) -o $(CLIENT)

clean :
	$(RM) $(SERVER) $(CLIENT)

fclean :
	$(RM) $(SERVER) $(CLIENT)

re : fclean all

.PHONY: all clean fclean re