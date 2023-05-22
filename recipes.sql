CREATE TABLE `User` (
	`user_id` INT NOT NULL AUTO_INCREMENT,
	`username` varchar NOT NULL UNIQUE,
	`email` varchar NOT NULL UNIQUE,
	`password` varchar NOT NULL,
	PRIMARY KEY (`user_id`)
);

CREATE TABLE `Ingredients` (
	`ingredient_id` INT NOT NULL AUTO_INCREMENT,
	`ingredient_name` INT NOT NULL,
	PRIMARY KEY (`ingredient_id`)
);

CREATE TABLE `Recipes` (
	`recipes_id` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`ingredient_id` INT NOT NULL,
	`instructions` varchar NOT NULL,
	`isPrivate` BOOLEAN NOT NULL,
	PRIMARY KEY (`recipes_id`)
);

CREATE TABLE `Occasions` (
	`occasion_id` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`recipes_id` INT NOT NULL,
	PRIMARY KEY (`occasion_id`)
);

CREATE TABLE `GroceryList` (
	`groceryList_id` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`ingredient_id` INT NOT NULL,
	PRIMARY KEY (`groceryList_id`)
);






