use my_projectDB;

select skills.*, sum(developers.salary)
from developers
join skills_of_developer on developers.id = skills_of_developer.id_developer
join skills on skills.id = skills_of_developer.id_skill
where skills.prog_language = "Java";