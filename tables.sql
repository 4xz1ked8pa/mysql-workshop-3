
/* create the table called Phone */
CREATE TABLE Phone (id INT auto_increment, entryId INT, type ENUM('home','work','other'),content VARCHAR(255), UNIQUE(id));

/* create the table called Address */
CREATE TABLE Address (id INT auto_increment, entryId INT, type ENUM('home','work','other'), addressLine1 VARCHAR(255), addresseLine2 VARCHAR(255), city VARCHAR(255), province VARCHAR(128), country VARCHAR(128), postalCode VARCHAR(10), UNIQUE(id));

/* create the table called ElectronicMail */
CREATE TABLE ElectronicMail (id INT auto_increment, entryId INT, type ENUM('home', 'work', 'other'), content VARCHAR (255), UNIQUE(id));
