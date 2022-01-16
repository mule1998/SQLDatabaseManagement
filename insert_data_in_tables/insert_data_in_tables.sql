use candidate_management;


INSERT INTO hired_candidate VALUES 
	(1, 'Aditya', NULL, 'Deshmukh', 'aditya@gmail.com', 8854215621, 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3121005, 'Thoughtdox', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(2, 'Neha', NULL, 'Dev', 'Neha@gmail.com', 7715684562, 'Gurgaon', 'M.Sc', '2021-12-13 00:00:00', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(3, 'Onkar', NULL, 'Gite', 'onkar@gmail.com', 9595626542, 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1);
    
    select *from hired_candidate;
    
    
INSERT INTO fellowship_candidate VALUES 
	(1, 'Aditya', NULL, 'Deshmukh', 'aditya@gmail.com', 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3121005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1998-02-12', 1, 'Sanjeev Kumar Deshmukh', 'Teacher', 9151846523, 30000000.00, 'Entila Tower, Mumbai', 'Entila Tower, Mumbai', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent'),
	(2, 'Neha', NULL, 'Dev', 'Neha@gmail.com', 'Gurgaon', 'M.Sc', '2021-12-13 00:00:00', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1997-07-20', 1, 'Arun Kumar Dev', 'Teacher', 9151545523, 50000000.00, 'Near Taj Hotel, Mumbai', 'Near Taj Hotel, Mumbai', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent'),
	(3, 'Onkar', NULL, 'Gite', 'onkar@gmail.com', 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1998-09-28', 1, 'Vijay Narayan Gite', 'Manager', 9155896523, 90000000.00, 'Oberoi, Mumbai', 'Oberoi, Mumbai', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent');
    
    select *from fellowship_candidate;
    
    
INSERT INTO candidate_personal_details_check VALUES 
	(1, 1, 1, 1, '2022-01-02 05:02:04', 1, NULL, 1),
	(2, 2, 3, 1, '2021-01-03 02:24:04', 1, NULL, 1),
    (3, 3, 1, 1, '2022-01-04 05:36:04', 1, NULL, 1);
    
select *from candidate_personal_details_check;


INSERT INTO candidate_bank_details VALUES
	(1,1,'Aditya', 87632151, 1 ,'IFSC321521', 1, 'SQDERT444', 1, 5651589, 1, NULL, 1),
	(2,2,'Neha', 21945462, 1 ,'IFSC324532', 1, 'SQDEECD', 1, 2485632, 1, NULL, 1),
	(3,3,'Onkar', 62154782, 1 ,'IFSC782465', 1, 'SQDE5SD2CD', 1, 7541236, 1, NULL, 1);
    
select *from candidate_bank_details;


INSERT INTO candidate_qualification VALUES
	(1, 1, 0, 'B.Tech', 1, 'Good', 1,2020, 1, 90.65, 96.30, 1, 'Bridgelabz', 1, 6, 1, 'Aptech', 1, NULL, 1),
	(2, 2, 0, 'M.Sc', 1, 'Good', 1,2021, 1, 91.65, 94.95, 1, 'Bridgelabz', 1, 6, 1, 'JSpider', 1, NULL, 1),
	(3, 3, 0, 'B.Tech', 1, 'Good', 1,2021, 1, 92.65, 95.65, 1, 'Bridgelabz', 1, 6, 1, 'QSpider', 1, NULL, 1);
    
select *from candidate_qualification;


INSERT INTO candidate_documents VALUES 
	(1, 1, 'type of doc 1', 'path of doc 1', 1, NULL, 1),
	(2, 2, 'type of doc 2', 'path of doc 2', 1, NULL, 1),
	(3, 3, 'type of doc 3', 'path of doc 3', 1, NULL, 1);
    
select *from candidate_documents;


INSERT INTO candidates_education_details_check VALUES
	(1, 1, 1, 1, NULL, 1, NULL, 1), (2, 2, 1, 1, NULL, 1, NULL, 1), (3, 3, 1, 1, NULL, 1, NULL, 1);
    
select *from candidates_education_details_check;


insert into user_details values
	(1, 'aditya@gmail.com', 'Aditya', 'Deshmukh', 'Aditya@123', 8854215621, 1),
	(2, 'Neha@gmail.com', 'Neha', 'Dev', 'Neha@123', 7715684562, 1),
	(3, 'onkar@gmail.com', 'Onkar', 'Gite', 'Onkar@123', 9595626542, 1);
    
select *from user_details;


insert into User_Roles values
	(1, 'Backend'),
	(2, 'Fullstack'),
	(3, 'Cloud Eng.');
    
select *from User_Roles;


INSERT INTO company VALUES 
	(1, 'EasyRewardz', 'Rudra Complex, Near Railway Station','Gurgaon', 1, NULL, 1),
	(2, 'KPMG', 'City Center', 'Banglore', 1, NULL, 1),
	(3, 'PWC', 'City Center', 'Banglore', 1, NULL, 1);
    
select *from company;


insert  into tech_stack values
	(1, 'Java', 'image1', 'Eclipse', 'T', null, 1),
	(2, 'Python', 'image2', 'PyCharm', 'T', null, 1),
	(3, 'C#', 'image1', '.NET', 'T', null, 1);
    
select *from tech_stack;


INSERT INTO tech_type VALUES
	(1, 'java' ,'y' , NULL, 1),
	(2, '.net', 'y', NULL, 1),
	(3, 'python', 'y', NULL, 1);
    
select *from tech_type;


INSERT INTO maker_program VALUES
	(1, 'BootCamp', 'training', 'http:/link1', 4, 5, 1, 'nice', 1, null, 2),
	(2, 'Regular Fellowship', 'training','http:/link2', 1, 1, 1, 'good', 1, null, 2),
	(3, 'Custom Fellowship', 'training','http:/link3', 2, 3, 1, 'nice', 1, null, 2);

select *from maker_program;


INSERT INTO app_parameters VALUES
	(1, 'Type1', 'fine', 'Execellent', 'Y', 1, null, null, 1, 1),
	(2, 'Type2', 'good', 'Execellent', 'Y', 1, null, null, 1, 1),
	(3, 'Type3', 'nice', 'Execellent', 'Y', 1, null, null, 1, 1);
    
select *from app_parameters;


INSERT INTO lab VALUES
	(1, 'Backend', 'Mumbai', 'Bandra', 2, null, 1),
	(2, 'Frontend', 'Mumbai', 'Navi Mumbai', 1, null, 1),
	(3, 'FullStack', 'Banglore', 'City Center', 1, null, 1);
    
select *from lab;


INSERT INTO lab_threshold VALUES
	(1, 2, 'lab_capacity1', 5, 3, 1, 1, null, 1),
	(2, 1, 'lab_capacity2', 5, 3, 1, 1, null, 1),
	(3, 1, 'lab_capacity3', 5, 2, 1, 1, null, 1);

select *from lab_threshold;


insert mentor values
	(1, 'Shankar Aribhavi', 'Mentor', 1, 1, null, 1),
	(2, 'Avatar', 'Mentor', 2, 1, null, 1),
	(3, 'Vinayak', 'Mentor', 1, 1, null, 1);
    
select *from mentor;


INSERT INTO mentor_ideation_map VALUES
	(1, 1, 1, null, 1),
	(2, 2, 1, null, 1),
	(3, 3, 1, null, 1);

select *from mentor_ideation_map;


INSERT INTO mentor_tech_stack VALUES
	(1, 1, 1, 1, null, 1),
	(2, 2, 4, 1, null, 1),
	(3, 3, 5, 1,null, 1);
    
select *from mentor_tech_stack;


INSERT INTO company_requirement VALUES
	(1, 1, 'Two', 'Gurgaon', 1, 'path of doc', 20, 2, 3, 3, 1, 1, 1, 'good', 1, null, 1),
	(2, 2, 'Three', 'Bangalore', 1, 'path of doc', 15, 3, 2, 3, 1, 1, 1, 'good', 1, null, 1),
	(3, 3, 'Five', 'Mumbai', 1, 'path of doc', 10, 1, 1, 2, 1, 1, 1, 'good', 1,null, 1);
    
select *from company_requirement;

    
INSERT INTO candidate_techstack_assignment VALUES
	(1, 2, 1, '2022-02-12 00:00:00', 'true',null,1),
	(2, 1, 3, '2022-02-21 00:00:00', 'true',null,1),
	(3, 1, 2, '2022-02-15 00:00:00', 'true',null,1);
    
select *from candidate_techstack_assignment;
