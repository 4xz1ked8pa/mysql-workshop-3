/* 1. Reflect the data model shown in schema/addressbook_normalized.png within database decodemtl_addressbook */
CREATE TABLE Phone (id INT auto_increment, entryId INT, type ENUM('home','work','other'),content VARCHAR(255), UNIQUE(id));
CREATE TABLE Address (id INT auto_increment, entryId INT, type ENUM('home','work','other'), addressLine1 VARCHAR(255), addresseLine2 VARCHAR(255), city VARCHAR(255), province VARCHAR(128), country VARCHAR(128), postalCode VARCHAR(10), UNIQUE(id));
CREATE TABLE ElectronicMail (id INT auto_increment, entryId INT, type ENUM('home', 'work', 'other'), content VARCHAR (255), UNIQUE(id));

/* 2. Account.id is a primary auto-increment key */
ALTER TABLE Account ADD CONSTRAINT PK_Account PRIMARY KEY(id);
ALTER TABLE Account MODIFY COLUMN id INT auto_increment;

/* 3. AddressBook.id is a primary auto-increment key */
ALTER TABLE AddressBook ADD CONSTRAINT PK_AddressBook PRIMARY KEY(id);
ALTER TABLE AddressBook CHANGE COLUMN id INT auto_increment;

/* 4. Entry.id is a primary auto-increment key */
ALTER TABLE Entry ADD CONSTRAINT PK_Entry PRIMARY KEY(id);
ALTER TABLE Entry CHANGE COLUMN id INT auto_increment;

/* 5. Entry.type is an ENUM column permitting phone, address and electronic-mail */
ALTER TABLE Entry CHANGE COLUMN type ENUM('phone', 'address', 'electronic-mail');

/* 6. Address.id is a primary auto-increment key */
ALTER TABLE Address ADD CONSTRAINT PK_Address PRIMARY KEY(id);

/* 7. Address.type is an ENUM column permitting home, work and other */
ALTER TABLE Address CHANGE COLUMN type ENUM('home', 'work', 'other');

/* 8. Email.id is a primary auto-increment key */
ALTER TABLE Email ADD CONSTRAINT PK_Email PRIMARY KEY(id);

/* 9. Email.type is an ENUM column permitting home, work and other */
ALTER TABLE Email CHANGE COLUMN type ENUM('home', 'work', 'other');

/* 10. Phone.id is a primary auto-increment key */
ALTER TABLE Phone ADD CONSTRAINT PK_Phone PRIMARY KEY(id);

/* 11. Phone.type is an ENUM column permitting home, work and other */
ALTER TABLE Phone CHANGE COLUMN type ENUM('home', 'work', 'other');

/* 12. Phone.subtype is an ENUM column permitting landline, cellular and fax */
ALTER TABLE Phone CHANGE COLUMN subtype ENUM('landline', 'cellular', 'fax');
