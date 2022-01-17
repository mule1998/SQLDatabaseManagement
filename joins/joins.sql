use candidate_management;

/*  Select mentor details and its tech name using inner join. */

SELECT mentor.*, ts.tech_name FROM mentor
INNER JOIN
	mentor_tech_stack AS mts ON mentor.id = mts.mentor_id
INNER JOIN
	tech_stack AS ts ON mts.tech_stack_id = ts.id;

    
/* select first name, last name ,password and contact number by doing outer join on candidate_fellowship and user_details table */

SELECT fc.first_name, fc.last_name, ud.password, ud.contact_number FROM fellowship_candidate AS fc
LEFT JOIN user_details AS ud ON fc.first_name = ud.first_name;

/* self join */

SELECT A.first_name AS CandidateName1, B.first_name AS CandidateName2, A.hired_city
FROM hired_candidate A,hired_candidate B
WHERE A.id <> B.id
AND A.hired_city = B.hired_city
ORDER BY A.hired_city;