
##############################################################################################################
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password ediedi123.'

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ediedi123.'

sudo apt-get install -y mysql-server

sudo sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

##############################################################################################################

mysql -uroot -pediedi123. <<%EOF%

	
CREATE USER 'root'@'192.168.69.145' IDENTIFIED BY 'ediedi123.';
	GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.69.145';
	FLUSH PRIVILEGES;
	
	CREATE DATABASE Edi;
	
	USE Edi;
	
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
	
	
INSERT INTO Persons (LastName, FirstName, Address, City)
VALUES ('Sherifi', 'Eddie', 'Steinstrasse', 'Dietikon'); 


CREATE TABLE Food (
    Name varchar(255),
    SpiceLevel int,
    Country char(255)
);
	
	
INSERT INTO Food (Name, SpiceLevel, Country)
VALUES ('Spaghetti', '1', 'Italy');


CREATE TABLE Countries (
    Name varchar(255),
    Capital varchar(255),
);
		
INSERT INTO Countries (Name, Capital)
VALUES ('Italy', 'Rom');
VALUES ('Switzerland', 'Bern');
VALUES ('Germany', 'Berlin');
VALUES ('Austria', 'Vienna');
VALUES ('Kosovo', 'Pristina');
	
%EOF%


sudo service mysql restart


