use my_projectDB;

select projects.*, avg(developers.salary)
from developers, projects
where developers.id_project = projects.id
      and projects.id in 
      (
		select id from projects
		where cost_project in (
    select min(projects.cost_project)
    from projects
  )
);