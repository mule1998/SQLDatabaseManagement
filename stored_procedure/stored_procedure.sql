use candidate_management;


/*  Define handler inside procedure to handle sql exception and sql warning by doing select query in which get_full_name function will be called   */

DELIMITER &&
CREATE PROCEDURE get_full_name_by_id(IN cand_id INT)
DETERMINISTIC
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		SELECT concat('Id('+cand_id+')not exist');
	END;
    
    DECLARE CONTINUE HANDLER FOR SQLWARNING
    BEGIN
		SELECT 'give warning';
	END;
    
    SELECT full_name(cand_id) FROM fellowship_candidate where id = cand_id;
END&&
DELIMITER ;

CALL get_full_name_by_id(6);



/* Define handler inside procedure to handle sql exception and sql warning  by doing select query to call the views inside the procedure and do rollback inside the handler and show error message.*/

DELIMITER &&
CREATE PROCEDURE candidate_detail()
DETERMINISTIC
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		SELECT 'handle error sqlexception';
	END;
    
    DECLARE CONTINUE HANDLER FOR SQLWARNING
    BEGIN
		SELECT 'give sqlwarning ';
	END;
    
    SELECT * FROM candidate_details;
END&&
DELIMITER ;

CALL candidate_detail();