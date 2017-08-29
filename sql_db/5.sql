USE my_projectDB;


  SELECT
    companies.name_company, customers.id, sum(projects.cost_project) summ
  FROM companies
    JOIN projects ON projects.id_firma = companies.id
    JOIN customers ON customers.id = projects.id_customer
  GROUP BY companies.name_company, customers.name_custumers;
