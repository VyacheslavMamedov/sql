use my_projectDB;

alter table projects add cost_project int not null after name_project;

SET SQL_SAFE_UPDATES = 0;

update projects 
set projects.cost_project =(
select sum(developers.salary) from
developers
where developers.id_project = projects.id
);