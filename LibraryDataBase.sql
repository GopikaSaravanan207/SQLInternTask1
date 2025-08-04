create schema SQLIntern;
CREATE DATABASE LibraryDB;
USE LibraryDB;
create table Authors(
authorId int auto_increment primary key,
name varchar(150) not null );

create table Books(
bid int auto_increment primary key,
title varchar(200) not null,
authorId int,
publishedyear int,
foreign key (authorId) references Authors(authorId) );

create table Members(
mid int auto_increment primary key,
name varchar(150) not null,
phone varchar(15) );

create table loans (
    loanid int auto_increment primary key,
    bid int,
    mid int,
    loandate date not null,
    returndate date,
    duedate date not null,
    foreign key (bid) references books(bid),
    foreign key (mid) references members(mid)
);

select*from Books;
show tables;

insert into authors (name) values
('chetan bhagat'),
('paulo coelho'),
('stephen king');

insert into Books (title, authorid, publishedyear) values
('five point someone', 1, 2004),
('the alchemist', 2, 1988),
('the shining', 3, 1977);


INSERT INTO Members (name, phone) VALUES
('Ravi Kumar', '9876543210'),
('Anjali Sharma', '9123456780'),
('Vikram Das', '9001234567');

 INSERT INTO Loans (bid, mid, loandate, returndate, duedate) VALUES
(1, 1, '2025-08-01', '2025-08-10', '2025-08-08'),
(2, 2, '2025-08-02', NULL, '2025-08-09'),
(3, 3, '2025-08-03', '2025-08-07', '2025-08-10');

select * from Authors;


