use lms;

call company_name;


DELIMITER ##
CREATE FUNCTION DOB1(cand_id INT)
returns date
DETERMINISTIC
BEGIN
	DECLARE year1 date;
		select birth_date into year1 from fellowship_candidate where id=cand_id;
	return year1;

end ##
DELIMITER ;

select DOB1(2);
    


