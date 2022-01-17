use candidate_management;

/*  Create a function to calculate age from DOB of candidate.  */

DELIMITER ##
CREATE FUNCTION candidate_age(cand_id INT)
returns int
DETERMINISTIC
BEGIN
	DECLARE age int;
		SELECT (YEAR(CURDATE()) - YEAR(birth_date)) INTO age FROM fellowship_candidate WHERE id = cand_id;
	RETURN age; 
end ##
DELIMITER ;

select candidate_age(2);


/*  Get the full name of the candidate by candidate_id.  */

DELIMITER ##
CREATE FUNCTION candidate_name(cand_id INT)
returns varchar(50)
DETERMINISTIC
BEGIN
	DECLARE cand_name varchar(50);
		SELECT concat(first_name,' ', IsNull(middle_name), ' ', last_name) into cand_name from fellowship_candidate where id = cand_id;
	return cand_name;
end ##
DELIMITER ;

select candidate_name(2);


/*   Take cpu percent and use case to print cpu percent is high when > 80,  normal<80 and else low.  */

DELIMITER ##
CREATE FUNCTION cpu_percent(cpu_prcnt double)
returns varchar(50)
DETERMINISTIC
BEGIN
	case
		when cpu_prcnt > 80 then  return 'CPU Percent is High';
		when cpu_prcnt < 80 then return 'CPU Percent is Normal';
		else return 'LOW';
	end case;
end ##
DELIMITER ;

select cpu_percent(90);


/*    Get company count by location.     */

DELIMITER ##
CREATE FUNCTION company_name(location_name VARCHAR(50))
returns int
DETERMINISTIC
BEGIN
	DECLARE count_company int;
		select COUNT(location) into count_company from company where location = location_name;
	RETURN count_company;
end ##
DELIMITER ;

select company_name('Banglore');
    


