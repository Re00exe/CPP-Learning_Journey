#ifndef __ANIMAL_H__
#define __ANIMAL_H__
#include <iostream>

class Animal{
protected:
		std::string	type;
public:
    Animal ();
    Animal (const Animal &_animal);
    virtual	~Animal ();
    Animal & operator = (const Animal &_animal);
	std::string	getType(void) const;
	virtual void	makeSound(void) const;	
};

#endif

