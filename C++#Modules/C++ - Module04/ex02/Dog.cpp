#include "Dog.hpp"

/*-----------------------------------------------------*/
Dog::Dog (){
	type = "Dog";
	_my_brain = new Brain();

	std::cout << "Dog has been constructed" << std::endl;
}

/*-----------------------------------------------------*/
Dog::Dog (const Dog &_dog){
	type = _dog.type;
	_my_brain = new Brain();
	*_my_brain = *_dog._my_brain;

	std::cout << "Dog has been Copy constructed" << std::endl;
}

/*-----------------------------------------------------*/
Dog::~Dog (){
	delete _my_brain;
	std::cout << "Dog has been Destructed" << std::endl;
}


/*-----------------------------------------------------*/
Dog & Dog::operator= (const Dog &_dog){

    type = _dog.type;
	_my_brain = new Brain();
	*_my_brain = *_dog._my_brain;

	return (*this);
}

const std::string	*Dog::getBrain(void) const
{
	return (_my_brain->getIdeas());
}

void	Dog::makeSound(void) const
{
	std::cout << "WooF  WooF !!!" << std::endl;
}

std::string	Dog::getType(void) const
{
	return (this->type);
}
