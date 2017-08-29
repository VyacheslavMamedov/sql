drop database my_projectDB;
create database if not exists my_projectDB default character set utf8;
use my_projectDB;

 -- 1. developers
create table if not exists developers(
 id int not null auto_increment,
 first_name varchar(15) not null,
 last_name varchar(15) not null,
 id_firma int not null,
 id_project int not null,
 primary key (id),
 foreign key (id_firma) references companies (id),
 foreign key (id_project) references projects (id)
); 

-- 2. list of skills
create table if not exists  skills (
 id int not null auto_increment,
 prog_language varchar(10) not null,
  primary key (id)
);



-- 3. lis of companies
create table if not exists  companies (
 id int not null auto_increment,
 name_company varchar(15) not null,
  primary key (id)
);

-- 4. list of customers

create table if not exists  customers (
 id int not null auto_increment,
 name_custumers varchar(20) not null,
  primary key (id)
);

-- 5. projects
create table if not exists  projects (
 id int not null auto_increment,
 name_project varchar(20) not null,
 id_firma int not null,
 id_customer int not null,
 foreign key (id_firma) references companies (id),
 foreign key (id_customer) references customers (id),
 primary key (id)
);

-- 6. skills for developer
 create table if not exists skills_of_developer(
id_developer int not null,
id_skill int not null,
primary key (id_developer, id_skill),
foreign key (id_developer) references developers (id),
foreign key (id_skill) references skills (id)
);
