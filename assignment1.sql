-- tao database bang syntax
create database if not exists student_cms_plusplus character set utf8mb4;

-- tao table
create table if not exists student_cms_plusplus.student(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL DEFAULT '',
    mssv VARCHAR(12) NULL,
    password VARCHAR(8) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    address VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(45),
    created_timestamp TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
    
);

create table if not exists student_cms_plusplus.class(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL DEFAULT '',
    major VARCHAR(12) NULL,
    total_student INT NOT NULL,
    teacher_name VARCHAR(45) NOT NULL,
    teacher_phone VARCHAR(12) NOT NULL,
    created_timestamp TIMESTAMP,
    last_updated_timestamp TIMESTAMP
);

create table if not exists student_cms_plusplus.student_class(
    student_id INT,    
    class_id INT,
	INDEX student_id (student_id),
	FOREIGN KEY (student_id) REFERENCES student(id),
    INDEX class_id (class_id),
	FOREIGN KEY (class_id) REFERENCES class(id)
);

SELECT * FROM student_cms_plusplus.student;
INSERT INTO `student_cms_plusplus`.`student` (`name`, `mssv`, `password`, `phone`, `address`, `age`, `email`) 
VALUES ('Phan Tuan Anh', '0001', 'anh', '091234567', 'Cần Thơ', '50', 'anh12345@gmail.com');

SELECT * FROM student_cms_plusplus.class;
INSERT INTO `student_cms_plusplus`.`class` (`name`, `major`, `total_student`, `teacher_name`, `teacher_phone`) 
VALUES ('ClassA', 'Biz', '20', 'Nguyen Van A', '0907324567');
