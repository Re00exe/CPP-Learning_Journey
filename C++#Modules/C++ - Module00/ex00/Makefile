.PHONY: all fclean re

CC = c++

CFLAGS = -Wall -Wextra -Werror

CPP_VERSION = -std=c++98

NAME = megaphone


SRCS = megaphone.cpp

$(NAME): $(SRCS)
	@$(CC) $(CFLAGS) $(CPP_VERSION) $(SRCS) -o $(NAME)
	@echo "Compiled!. Use\033[0;32m ./$(NAME)\033[0m\n"

all: $(NAME)

%.o:%.cpp $(SRCS)
	@$(CC) $(CFLAGS) $(CPP_VERSION) -c $< -o $@
	@echo "$< ==> $@"

fclean:
	@rm -f $(NAME)
	clear

re: fclean all

