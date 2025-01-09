DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
	id CHAR(50) PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	password VARCHAR(255) NOT NULL,
	date_of_birth DATE NOT NULL,
	hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	position VARCHAR(50),
	is_admin BOOLEAN DEFAULT FALSE,
	archived BOOLEAN DEFAULT FALSE,
	salary DECIMAL(10, 2) DEFAULT NULL,
	remaining_holidays INT DEFAULT 30
);

DROP TABLE IF EXISTS Payroll;
CREATE TABLE Payroll (
	id_user CHAR(50) NOT NULL,
	paye_id CHAR(100) NOT NULL,
	pay_date CHAR(7) NOT NULL,
	salary DECIMAL(10, 2) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	comments TEXT DEFAULT NULL,
	file_path VARCHAR(255) DEFAULT NULL,
	PRIMARY KEY (paye_id),
	FOREIGN KEY (id_user) REFERENCES Users(id)
);

DROP TABLE IF EXISTS holiday;
CREATE TABLE holiday (
	id_holiday CHAR(50),
	id_user CHAR(50),
	first_name VARCHAR(50),
	length ENUM('half_day', 'full_day'),
	date DATE NOT NULL,
	state TINYINT(1) DEFAULT 0,
	denied TINYINT(1) DEFAULT 0,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id_user, date)
);
DROP TABLE IF EXISTS invitation;
CREATE TABLE invitation (
    id_invitation CHAR(50),
    email VARCHAR(255) NOT NULL,
    token VARCHAR(255) NOT NULL,
    status ENUM('pending', 'accepted') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

