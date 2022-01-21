use candidate_management;


/* create view for selecting student name and its company name he is assigned to*/

CREATE VIEW companyAssigned AS
SELECT fellowship_candidate.id, fellowship_candidate.first_name, company.name as companyAssigned
FROM fellowship_candidate
INNER JOIN company ON fellowship_candidate.id = company.name;

SELECT * FROM companyAssigned;
 
 
/*  List candidates personal info whose education check has been verified. */ 

CREATE VIEW details AS
SELECT fc.* FROM fellowship_candidate AS fc
INNER JOIN candidates_education_details_check AS cedc ON fc.id = cedc.candidate_id
WHERE cedc.is_verified = 1;

SELECT * FROM details;


/* Select all details from the maker plan  */

CREATE VIEW maker_plan AS SELECT * FROM maker_program;

SELECT * FROM maker_plan;