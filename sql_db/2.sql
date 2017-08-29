use my_projectDB;

SET sql_mode = '';

select projects.id, projects.name_project, customers.name_custumers, companies.name_company,
sum(developers.salary) summ
from developers
join projects on projects.id = developers.id_project
join customers on customers.id = developers.id_firma
join companies on companies.id = developers.id_firma
group by projects.name_project
order by summ desc
limit 1
