CREATE DATABASE candidate_management;
use candidate_management;
show tables

CREATE TABLE hired_candidate(
	id INT NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	middle_name VARCHAR(100) DEFAULT NULL,
	last_name VARCHAR(100) NOT NULL,
	email_id VARCHAR(100) NOT NULL,
	mobile_number BIGINT NOT NULL,
	hired_city VARCHAR(50) NOT NULL,
	degree VARCHAR(50) NOT NULL,
	hired_date DATETIME NOT NULL,
	permanent_pincode INT DEFAULT NULL,
	hired_lab VARCHAR(50) DEFAULT NULL,
	attitude VARCHAR(50) DEFAULT NULL,
	communication_remark VARCHAR(50) DEFAULT NULL,
	knowledge_remark VARCHAR(50) DEFAULT NULL,
	aggregate_remark VARCHAR(50) DEFAULT NULL,
	status VARCHAR(50) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY(id));
    


CREATE TABLE fellowship_candidate(
	id INT NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	middle_name VARCHAR(100) DEFAULT NULL,
	last_name VARCHAR(100) NOT NULL,
	email_id VARCHAR(100) NOT NULL,
	hired_city VARCHAR(50) NOT NULL,
	degree VARCHAR(50) NOT NULL,
	hired_date DATETIME NOT NULL,
	permanent_pincode INT DEFAULT NULL,
	hired_lab VARCHAR(50) DEFAULT NULL,
	attitude VARCHAR(50) DEFAULT NULL,
	communication_remark VARCHAR(50) DEFAULT NULL,
	knowledge_remark VARCHAR(50) DEFAULT NULL,
	aggregate_remark VARCHAR(50) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	birth_date DATE NOT NULL,
	is_birth_date_verified INT DEFAULT 0,
	parent_name VARCHAR(100) DEFAULT NULL,
	parent_occupation VARCHAR(100) NOT NULL,
	parent_mobile_number BIGINT NOT NULL,
	parent_annual_salary DOUBLE DEFAULT NULL,
	local_address VARCHAR(500) NOT NULL,
	permanent_address VARCHAR(500) NOT NULL,
	photo_path VARCHAR(600) DEFAULT NULL,
	joining_date DATE DEFAULT NULL,
	candidate_status VARCHAR(50) NOT NULL,
	personal_information INT DEFAULT 0,
	bank_information INT DEFAULT 0,
	educational_information INT DEFAULT 0,
	document_status VARCHAR(50) DEFAULT NULL,
	remark VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY(id));
    


CREATE TABLE candidate_personal_details_check(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	field_name INT NOT NULL,
	is_verified INT DEFAULT NULL,
	lastupd_stamp DATETIME DEFAULT NULL,
	lastupd_user INT DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    KEY `FK_candidate_personal_details_id`(`candidate_id`),
	CONSTRAINT `FK_candidate_personal_details_id` FOREIGN KEY(`candidate_id`) REFERENCES `fellowship_candidate`(`id`),
	PRIMARY KEY(id));
    


CREATE TABLE candidate_bank_details(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	account_number INT NOT NULL,
	is_account_verified INT DEFAULT 0,
	ifsc_code VARCHAR(20) NOT NULL,
	is_ifsc_code_verified INT DEFAULT 0,
	pan_number VARCHAR(20) DEFAULT NULL,
	is_pan_number_verified INT DEFAULT 0,
	addhar_number INT NOT NULL,
	is_addhar_number_verified INT DEFAULT 0,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_candidate_bank_details_id`(`candidate_id`),
	CONSTRAINT `FK_candidate_bank_details_id` FOREIGN KEY(`candidate_id`) REFERENCES `fellowship_candidate`(`id`),
	PRIMARY KEY(id));
    


CREATE TABLE candidate_qualification(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	diploma INT DEFAULT 0,
	degree_name VARCHAR(50) NOT NULL,
	is_degree_name_verified INT DEFAULT 0,
	employee_decipline VARCHAR(100) NOT NULL,
	is_employee_decipline_verified INT DEFAULT 0,
	passing_year INT NOT NULL,
	is_passing_year_verified INT DEFAULT 0,
	aggr_per DOUBLE DEFAULT NULL,
	final_year_per DOUBLE DEFAULT NULL,
	is_final_year_per_verified INT DEFAULT 0,
	training_institute VARCHAR(50) NOT NULL,
	is_training_institute_verified INT DEFAULT 0,
	training_duration_month INT DEFAULT NULL,
	is_training_duration_month_verified INT DEFAULT 0,
	other_training VARCHAR(500) DEFAULT NULL,
	is_other_training_verified INT DEFAULT 0,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_candidate_qualification_id` (`candidate_id`),
    CONSTRAINT `FK_candidate_qual_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id)) ;
    


CREATE TABLE candidate_documents(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	doc_type VARCHAR(50) DEFAULT NULL,
	doc_path VARCHAR(200) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_candidate_documents_id` (`candidate_id`), 
    CONSTRAINT `FK_candidate_documents_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id)) ;
    


CREATE TABLE user_details (
	id INT NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	password VARCHAR(50) NOT NULL,
	contact_number BIGINT NOT NULL,
	verified INT DEFAULT 0,
	PRIMARY KEY (id)) ;



CREATE TABLE user_roles (
	user_id INT NOT NULL ,
	role_name VARCHAR(100)) ;
    


CREATE TABLE company(
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	address VARCHAR(200) DEFAULT NULL,
	location VARCHAR(100) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY (id));
    


CREATE TABLE tech_stack (
	id INT NOT NULL,
	tech_name VARCHAR(100) NOT NULL,
	image_path VARCHAR(500) DEFAULT NULL,
	framework TEXT DEFAULT NULL,
	cur_status CHAR(1) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    PRIMARY KEY (id)) ;
    


CREATE TABLE tech_type (
	id INT NOT NULL,
	type_name VARCHAR(100) NOT NULL,
	cur_status CHAR(1) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY(id)) ;
    


CREATE TABLE maker_program(
	id INT NOT NULL,
	program_name INT NOT NULL,
	program_type VARCHAR(50) DEFAULT NULL,
	program_link VARCHAR(500) DEFAULT NULL,
	tech_stack_id INT DEFAULT NULL,
	tech_type_id INT NOT NULL,
	is_program_approved INT DEFAULT 0,
	description VARCHAR(500) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_maker_program_stack_id` (`tech_stack_id`),
	CONSTRAINT `FK_maker_program_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
	KEY `FK_maker_program_type_id` (`tech_type_id`),
	CONSTRAINT `FK_maker_program_type_id` FOREIGN KEY (`tech_type_id`) REFERENCES `tech_type` (`id`),
	PRIMARY KEY (id));
    


CREATE TABLE app_parameters(
	id INT NOT NULL,
	key_type VARCHAR(50) NOT NULL,
	key_value VARCHAR(50) NOT NULL,
	key_text VARCHAR(100) DEFAULT NULL,
	cur_status CHAR(1) DEFAULT NULL,
	lastupd_user INT DEFAULT NULL,
	lastupd_stamp DATETIME DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	seq_num INT DEFAULT NULL,
	PRIMARY KEY(key_type,  key_value)) ;
    


CREATE TABLE lab(
	id INT NOT NULL,
	name VARCHAR(100) DEFAULT NULL,
	location VARCHAR(100) DEFAULT NULL,
	address VARCHAR(200) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY (id)) ;
    


CREATE TABLE lab_threshold(
	id INT NOT NULL,
	lab_id INT NOT NULL,
	lab_capacity VARCHAR(100) DEFAULT NULL,
	lead_threshold INT DEFAULT NULL,
	ideation_engg_threshold INT DEFAULT NULL,
	buddy_engg_threshold INT DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_lab_id` (`lab_id`),
	CONSTRAINT `FK_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`),
	PRIMARY KEY (id));
    


CREATE TABLE candidates_education_details_check (
	id INT NOT NULL,
	candidate_id  INT NOT NULL,
	field_name INT NOT NULL,
	is_verified INT DEFAULT NULL,
	lastupd_stamp DATETIME DEFAULT NULL,
	lastupd_user INT DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    KEY `FK_candidates_education_id` (`candidate_id`),
	CONSTRAINT `FK_candidates_education_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id));
    


CREATE TABLE mentor(
	id INT NOT NULL,
	name VARCHAR(100) DEFAULT NULL,
	mentor_type VARCHAR(50) DEFAULT NULL,
	lab_id INT NOT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_mentor_lab_id` (`lab_id`),
	CONSTRAINT `FK_mentor_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`),
    PRIMARY KEY (id)) ;



CREATE TABLE mentor_ideation_map(
	id INT NOT NULL,
	mentor_id INT NOT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_mentor_ideation_map_id` (`mentor_id`),
	CONSTRAINT `FK_mentor_ideation_map_id` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`),
	PRIMARY KEY (id)) ;
    


CREATE TABLE mentor_tech_stack(
	id INT NOT NULL,
	mentor_id INT NOT NULL,
	tech_stack_id INT NOT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_mentor_mentor_id` (`mentor_id`),
	CONSTRAINT `FK_mentor_mentor_id` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`),
	KEY `FK_mentor_stack_id` (`tech_stack_id`),
	CONSTRAINT `FK_mentor_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
	PRIMARY KEY (id));
    


CREATE TABLE candidate_techstack_assignment(
	id int(11) NOT NULL,
	requirement_id int(11) NOT NULL,
	candidate_id int(11) NOT NULL,
	assign_date datetime DEFAULT NULL,
	status varchar(20) DEFAULT NULL,
	creator_stamp datetime DEFAULT NULL,
	creator_user int(11) DEFAULT NULL,
	KEY `FK_candidate_techstack_assignment_requirement_id` (`requirement_id`),
	CONSTRAINT `FK_candidate_techstack_assignment_requirement_id` FOREIGN KEY (`requirement_id`) REFERENCES `company_requirement` (`id`),
	KEY `FK_candidate_candidate_id` (`candidate_id`),
	CONSTRAINT `FK_candidate_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id)
);
    


CREATE TABLE company_requirement(
	id INT NOT NULL,
	company_id INT NOT NULL,
	requested_month VARCHAR(50) NOT NULL,
	city VARCHAR(50) DEFAULT NULL,
	is_doc_verification INT DEFAULT 1,
	requirement_doc_path VARCHAR(500) DEFAULT NULL,
	no_of_engg INT NOT NULL,
	tech_stack_id INT NOT NULL,
	tech_type_id INT NOT NULL,
	maker_program_id INT NOT NULL,
	lead_id INT NOT NULL,
	ideation_engg_id INT DEFAULT NULL,
	buddy_engg_id INT DEFAULT NULL,
	special_remark TEXT DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    KEY `FK_stack_id` (`tech_stack_id`),
	CONSTRAINT `FK_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
    KEY `FK_type_id` (`tech_type_id`),
	CONSTRAINT `FK_type_id` FOREIGN KEY (`tech_type_id`) REFERENCES `tech_type` (`id`),
    KEY `FK_maker_program_id` (`maker_program_id`),
	CONSTRAINT `FK_maker_program_id` FOREIGN KEY (`maker_program_id`) REFERENCES `maker_program` (`id`),
	KEY `FK_company_id` (`company_id`),
	CONSTRAINT `FK_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
	PRIMARY KEY(id));
    


CREATE TABLE temporary_MIS(
	Date_Time DATE NOT NULL,
	Cpu_Count int(15) NOT NULL,
	Cpu_Working_Time DOUBLE(15,3) NOT NULL,
	Cpu_idle_Time DOUBLE(15,3) NOT NULL,
	cpu_percent Double(15,3) NOT NULL,
	Usage_cpu_count int(1) NOT NULL,
	number_of_software_interrupts_since_boot DOUBLE(15,3) NOT NULL,
	number_of_system_calls_since_boot int(15) NOT NULL,
	number_of_interrupts_since_boot int(15) NOT NULL,
	cpu_avg_load_over_1_min DOUBLE(15,3) NOT NULL,
	cpu_avg_load_over_5_min DOUBLE(15,3) NOT NULL,
	cpu_avg_load_over_15_min DOUBLE(15,3) NOT NULL,
	system_total_memory BIGINT(20)NOT NULL,
	system_used_memory BIGINT(20) NOT NULL,
	system_free_memory BIGINT(20) NOT NULL,
	system_active_memory BIGINT(20) NOT NULL,
	system_inactive_memory BIGINT(20)NOT NULL,
	system_buffers_memory BIGINT(20) NOT NULL,
	system_cached_memory BIGINT(20) NOT NULL,
	system_shared_memory BIGINT(20) NOT NULL,
	system_avalible_memory BIGINT(20) NOT NULL,
	disk_total_memory BIGINT(20) NOT NULL,
	disk_used_memory BIGINT(20) NOT NULL,
	disk_free_memory BIGINT(20) NOT NULL,
	disk_read_count BIGINT(20) NOT NULL,
	disk_write_count BIGINT(20) NOT NULL,
	disk_read_bytes BIGINT(20) NOT NULL,
	disk_write_bytes BIGINT(20) NOT NULL,
	time_spent_reading_from_disk BIGINT(20) NOT NULL,
	time_spent_writing_to_disk BIGINT(20) NOT NULL,
	time_spent_doing_actual_Input_Output BIGINT(20) NOT NULL,
	number_of_bytes_sent BIGINT(20) NOT NULL,
	number_of_bytes_received BIGINT(20) NOT NULL,
	number_of_packets_sent BIGINT(20) NOT NULL,
	number_of_packets_recived BIGINT(20) NOT NULL,
	total_number_of_errors_while_receiving BIGINT(20) NOT NULL,
	total_number_of_errors_while_sending BIGINT(20) NOT NULL,
	total_number_of_incoming_packets_which_were_dropped BIGINT(20) NOT NULL,
	total_number_of_outgoing_packets_which_were_dropped BIGINT(20) NOT NULL,
	boot_time varchar(100) NOT NULL,
	user_name varchar(100) NOT NULL,
	keyboard int(15) NOT NULL,
	mouse int(15) NOT NULL,
	technology varchar(100) NOT NULL,
	files_changed int(15) NOT NULL,
	PRIMARY KEY (boot_time));