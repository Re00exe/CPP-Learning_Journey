#!/bin/bash

if [ -z "$2" ]
  then
    echo "Bad args. Example: exer exerciseName className"
	exit 1
fi

Ex=$1
Name=$2
UpperName=$(echo "$Name" | tr '[:lower:]' '[:upper:]')
LowerName=$(echo "$Name" | tr '[:upper:]' '[:lower:]')
MAKEFILE=".PHONY: all fclean re

CC = c++

CFLAGS = -Wall -Wextra -Werror

CPP_VERSION = -std=c++98

NAME = $LowerName


SRCS = main.cpp $Name.cpp

HEADERS = $Name.hpp

\$(NAME): \$(SRCS)
	@\$(CC) \$(CFLAGS) \$(CPP_VERSION) \$(SRCS) -o \$(NAME)
	@echo \"Compiled!. Use\033[0;32m ./\$(NAME)\033[0m\n\"

all: \$(NAME)

fclean:
	@rm -f \$(NAME)
	clear

re: fclean all
"

HEADER="#ifndef __"$UpperName"_H__
#define __"$UpperName"_H__
#include <iostream>

class $Name{
private:
    // your privite members here
public:
    $Name ();
    $Name (const $Name &a);
    ~$Name ();
    $Name & operator = (const $Name &a);
};

#endif
"
SRC="#include \"$Name.hpp\"

/*--------------------------------------------------------*/
$Name::$Name (){
    // your implementation here
}

/*--------------------------------------------------------*/
$Name::$Name (const $Name &a){
    // your implementation here
}

/*--------------------------------------------------------*/
$Name::~$Name (){
    // your implementation here
}

/*--------------------------------------------------------*/
$Name & $Name::operator = (const $Name &a){
    // your implementation here
}
"
MAIN="#include \"$Name.hpp\"

int main(void){
    // your main code here
    return 0;
}
"



mkdir "$Ex"
echo "$MAKEFILE" > "$Ex/Makefile"
echo "$HEADER" > "$Ex/$Name.hpp"
echo "$SRC" > "$Ex/$Name.cpp"
echo "$MAIN" > "$Ex/main.cpp"
