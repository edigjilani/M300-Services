
##############################################################################################################
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password ediedi-123'

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ediedi-123'

sudo apt-get install -y mysql-server

sudo sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

##############################################################################################################

mysql -uroot -pediedi-123 <<%EOF%

	
CREATE USER 'root'@'192.168.69.144' IDENTIFIED BY '';ediedi-123
	GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.69.144'
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
VALUES ('Sherifi', 'Eddie', 'Steinstrasse', Dietikon); 


CREATE TABLE Food
    Name varchar(255),
    SpiceLevel int,
    Country char(255)
);
	
	
INSERT INTO Food (Name, SpiceLevel, Country)
VALUES ('Spaghetti', '1', 'Italy');
	
%EOF%


sudo service mysql restart


