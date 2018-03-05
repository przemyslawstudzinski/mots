INSERT INTO `course` (`id`, `name`, `status`, `version`,`ivr_id`) VALUES('d5c4a806-f817-47e3-b73d-8803a7e76ddd', 'course 1', 'RELEASED', 0, '22047');

INSERT INTO `module` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`description`,`name`,`status`,`version`,`previous_version_id`,`start_module_question_id`,`name_code`,`ivr_group`) VALUES ('2dcaa2da-edc4-42b0-a505-167d327aaf06','2017-11-14 16:07:22.745000','2017-11-14 16:07:22.745000','9431934','module1',NULL,'Module 1','RELEASED',1,NULL,NULL,'module-1_v1','298829');
INSERT INTO `module` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`description`,`name`,`status`,`version`,`previous_version_id`,`start_module_question_id`,`name_code`,`ivr_group`) VALUES ('3ccbb0b8-0e5a-4e97-9bb2-8b934e12777d','2017-11-14 16:07:22.770000','2017-11-14 16:07:22.770000','9431935','module2',NULL,'Module 2','RELEASED',1,NULL,NULL,'module-2_v1','298830');
INSERT INTO `module` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`description`,`name`,`status`,`version`,`previous_version_id`,`start_module_question_id`,`name_code`,`ivr_group`) VALUES ('766eb0c6-da6b-43e5-8b6b-eff89e58223f','2017-11-14 16:07:22.777000','2017-11-14 16:07:22.777000','9431936','module3',NULL,'Module 3','RELEASED',1,NULL,NULL,'module-3_v1','298831');

INSERT INTO `mots`.`course_module` (`id`, `list_order`, `course_id`, `module_id`) VALUES ('19ff022e-c905-4d40-b692-214a981fe784', '0', 'd5c4a806-f817-47e3-b73d-8803a7e76ddd', '2dcaa2da-edc4-42b0-a505-167d327aaf06');
INSERT INTO `mots`.`course_module` (`id`, `list_order`, `course_id`, `module_id`) VALUES ('3c20e44e-1e83-4bad-ab16-6b2427127338', '1', 'd5c4a806-f817-47e3-b73d-8803a7e76ddd', '3ccbb0b8-0e5a-4e97-9bb2-8b934e12777d');
INSERT INTO `mots`.`course_module` (`id`, `list_order`, `course_id`, `module_id`) VALUES ('d1643870-5ddf-402b-b4fb-c59f7f21b44d', '2', 'd5c4a806-f817-47e3-b73d-8803a7e76ddd', '766eb0c6-da6b-43e5-8b6b-eff89e58223f');

INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('23f513de-f287-4ae2-9a0a-f287801aabdf','2018-02-23 10:56:50','2018-02-24 13:37:41','8459691',NULL,0,NULL,0,'unit 1',NULL,'766eb0c6-da6b-43e5-8b6b-eff89e58223f');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('37c54756-7669-4476-8ff8-25a8714df614','2018-02-23 10:56:52','2018-02-24 13:36:23','8459673',NULL,0,NULL,0,'unit 1',NULL,'3ccbb0b8-0e5a-4e97-9bb2-8b934e12777d');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('5e168c38-a75f-47f3-8e99-8eeab8e9a8e4','2018-02-23 10:48:50','2018-02-23 11:17:06','8828509',NULL,1,NULL,2,'unit 3',NULL,'2dcaa2da-edc4-42b0-a505-167d327aaf06');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('86685011-d6a8-450f-b587-d75a07cd21c1','2018-02-23 10:56:52','2018-02-24 13:48:38','8459671',NULL,1,NULL,1,'unit 2',NULL,'3ccbb0b8-0e5a-4e97-9bb2-8b934e12777d');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('9b5d0d3a-689e-4ee9-a091-05cd02841d67','2018-02-23 10:56:52','2018-02-24 13:48:38','8459668',NULL,1,NULL,2,'unit 3',NULL,'3ccbb0b8-0e5a-4e97-9bb2-8b934e12777d');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('dbd73e0c-65ed-44d7-9f15-b30fd7ce0826','2018-02-23 10:56:50','2018-02-24 13:56:23','8459689',NULL,1,NULL,1,'unit 2',NULL,'766eb0c6-da6b-43e5-8b6b-eff89e58223f');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c','2018-02-23 10:48:50','2018-02-23 11:17:06','8828502',NULL,1,NULL,1,'unit 2',NULL,'2dcaa2da-edc4-42b0-a505-167d327aaf06');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('ebbd65b8-5e82-4abf-bdad-630482b16b6d','2018-02-23 10:56:50','2018-02-24 14:00:19','8459686',NULL,1,NULL,2,'unit 3',NULL,'766eb0c6-da6b-43e5-8b6b-eff89e58223f');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('f920b85f-992d-43a8-92c8-c935444ec472','2018-02-23 10:48:50','2018-02-23 11:17:06','8828504',NULL,0,NULL,0,'unit 1',NULL,'2dcaa2da-edc4-42b0-a505-167d327aaf06');

INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('02ae38da-2633-4ab2-b0e5-e9d911680130','2018-02-23 10:48:50','2018-02-23 11:21:47','9671647',NULL,NULL,1,'q1','QUESTION','f920b85f-992d-43a8-92c8-c935444ec472');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('04f856c7-2a15-45e3-8e18-4b1432f76077','2018-02-23 10:48:50','2018-02-23 11:24:18','9671624',NULL,NULL,4,'m5','MESSAGE','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('09ac31bc-ec1f-4593-8146-0abfe9e0917a','2018-02-24 13:53:21','2018-02-24 13:53:21','9671502',NULL,NULL,0,'m1','MESSAGE','23f513de-f287-4ae2-9a0a-f287801aabdf');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('0be447da-5481-443f-a20a-0fc26bf8de21','2018-02-24 13:43:35','2018-02-24 13:45:09','9671547',NULL,NULL,4,'q1 response','MESSAGE','86685011-d6a8-450f-b587-d75a07cd21c1');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('0d306506-c8c0-441f-ae4c-ca82d35d4c31','2018-02-23 10:48:50','2018-02-23 11:24:18','9671628',NULL,NULL,8,'q2 response','MESSAGE','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('0ff83990-8926-4e92-a120-434250367bdd','2018-02-24 13:56:23','2018-02-24 13:56:23','9671498',NULL,NULL,4,'q1 response','MESSAGE','dbd73e0c-65ed-44d7-9f15-b30fd7ce0826');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('12edd996-3af1-4656-b7b4-f971c49410e5','2018-02-24 14:00:19','2018-02-24 14:03:09','9671509',NULL,NULL,1,'m2','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('21c6fdcb-84f3-42c3-8f7c-5c42f6db49c3','2018-02-23 10:48:50','2018-02-23 11:15:13','9671586',NULL,NULL,2,'m3','MESSAGE','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('22b25e58-00eb-4b80-88ca-ca97e9a1eee7','2018-02-24 14:00:19','2018-02-24 14:03:09','9671512',NULL,NULL,4,'m5','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('2302cf12-4bd7-4321-a786-40479d8dddff','2018-02-24 14:00:19','2018-02-24 14:03:09','9671517',NULL,NULL,9,'q2 response','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('231dec7e-c75f-4f2b-a78d-9ae64a71a970','2018-02-24 14:00:19','2018-02-24 14:03:09','9671514',NULL,NULL,6,'q1','QUESTION','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('2a6c726e-a8fe-43bf-b5ad-4a19a7d652a6','2018-02-24 13:53:21','2018-02-24 13:53:21','9671503',NULL,NULL,1,'q1','QUESTION','23f513de-f287-4ae2-9a0a-f287801aabdf');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('3163b931-2b11-47e2-99fa-3197c9e85ff6','2018-02-24 14:00:19','2018-02-24 14:03:09','9671513',NULL,NULL,5,'m6','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('3378ca0f-cea7-4699-8566-0e6d45e9a4c8','2018-02-23 10:48:50','2018-02-23 11:15:13','9671590',NULL,NULL,6,'q1 response','MESSAGE','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('3c3b5173-4985-4b18-9ba4-5b10c51eee71','2018-02-24 13:43:35','2018-02-24 13:45:09','9671546',NULL,NULL,3,'q1','QUESTION','86685011-d6a8-450f-b587-d75a07cd21c1');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('47664d5c-443b-4df7-b4d6-4794fa078e45','2018-02-24 13:56:23','2018-02-24 13:56:23','9671497',NULL,NULL,3,'q1','QUESTION','dbd73e0c-65ed-44d7-9f15-b30fd7ce0826');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('485abd41-97b6-4434-8d18-17e2dca7e9dd','2018-02-24 13:43:35','2018-02-24 13:45:09','9671543',NULL,NULL,0,'m1','MESSAGE','86685011-d6a8-450f-b587-d75a07cd21c1');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('49c45d85-f0d0-4d30-ab37-100349d7aefc','2018-02-23 10:48:50','2018-02-23 11:15:13','9671591',NULL,NULL,7,'q2','QUESTION','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('4d511897-8a14-4e37-8b48-3bde43121a9b','2018-02-23 10:48:50','2018-02-23 11:24:18','9671626',NULL,NULL,6,'q1 response','MESSAGE','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('530f6ea8-0665-4a1e-b9e8-ea0e01ec896e','2018-02-24 13:43:35','2018-02-24 13:45:09','9671545',NULL,NULL,2,'m3','MESSAGE','86685011-d6a8-450f-b587-d75a07cd21c1');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('5aea6e67-1326-413a-a814-e423a2a5faaf','2018-02-24 13:43:35','2018-02-24 13:45:09','9671544',NULL,NULL,1,'m2','MESSAGE','86685011-d6a8-450f-b587-d75a07cd21c1');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('69a75758-9bd7-44c7-bc25-85edc99d465d','2018-02-24 13:56:23','2018-02-24 13:56:23','9671494',NULL,NULL,0,'m1','MESSAGE','dbd73e0c-65ed-44d7-9f15-b30fd7ce0826');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('6a50503e-48f8-4b35-9604-5274ecfe575e','2018-02-24 14:00:19','2018-02-24 14:03:09','9671515',NULL,NULL,7,'q1 response','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('6b3eebc1-c4f9-46a0-af54-a051927b6cb4','2018-02-23 10:48:50','2018-02-23 11:24:18','9671627',NULL,NULL,7,'q2','QUESTION','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('6c9a79ed-ae3c-45aa-872e-d87e145f52eb','2018-02-23 10:48:50','2018-02-23 11:15:13','9671588',NULL,NULL,4,'m5','MESSAGE','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('6e768678-f602-4b67-8720-dfc9f5cce90c','2018-02-24 13:46:38','2018-02-24 13:48:38','9671531',NULL,NULL,3,'q1 response','MESSAGE','9b5d0d3a-689e-4ee9-a091-05cd02841d67');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('6f187818-428f-47e6-b661-cf94a463d732','2018-02-23 10:48:50','2018-02-23 11:21:47','9671648',NULL,NULL,2,'q2','QUESTION','f920b85f-992d-43a8-92c8-c935444ec472');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('6f3d037b-7dda-4325-a8a2-f4028bb34aeb','2018-02-24 13:41:33','2018-02-24 13:41:33','9671565',NULL,NULL,0,'m1','MESSAGE','37c54756-7669-4476-8ff8-25a8714df614');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('77124324-7855-4baa-a664-6239f5f34668','2018-02-23 10:48:50','2018-02-23 11:15:13','9671589',NULL,NULL,5,'q1','QUESTION','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('798fa860-fe26-40d3-844f-1abe66122e80','2018-02-24 14:00:19','2018-02-24 14:03:09','9671508',NULL,NULL,0,'m1','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('8a3094ef-26ee-42c6-9418-1c4bf89398e8','2018-02-23 10:48:50','2018-02-23 11:24:18','9671623',NULL,NULL,3,'m4','MESSAGE','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('9d75488f-cb21-4fe1-9eca-cf4ba82ad1cc','2018-02-24 13:56:23','2018-02-24 13:56:23','9671496',NULL,NULL,2,'m3','MESSAGE','dbd73e0c-65ed-44d7-9f15-b30fd7ce0826');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('9f4febb0-7376-4e38-bc42-32511c4fb1e9','2018-02-23 10:48:50','2018-02-23 11:21:47','9671646',NULL,NULL,0,'m1','MESSAGE','f920b85f-992d-43a8-92c8-c935444ec472');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('a1c18a46-2589-41f4-99a3-e886e65bd6f6','2018-02-24 13:41:33','2018-02-24 13:41:33','9671567',NULL,NULL,2,'q2','QUESTION','37c54756-7669-4476-8ff8-25a8714df614');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('add28325-8709-443b-af60-3fbf221b9df9','2018-02-24 13:46:38','2018-02-24 13:48:38','9671528',NULL,NULL,0,'m1','MESSAGE','9b5d0d3a-689e-4ee9-a091-05cd02841d67');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('b428ca05-f784-4474-ae1c-1be9ad2572e5','2018-02-23 10:48:50','2018-02-23 11:24:18','9671622',NULL,NULL,2,'m3','MESSAGE','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('b7388bfe-c66d-4ab7-926f-bee4a25efcc4','2018-02-24 13:46:38','2018-02-24 13:48:38','9671529',NULL,NULL,1,'m2','MESSAGE','9b5d0d3a-689e-4ee9-a091-05cd02841d67');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('b786e5f0-df62-486f-be84-fa019cdd9f44','2018-02-23 10:48:50','2018-02-23 11:15:13','9671587',NULL,NULL,3,'m4','MESSAGE','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('b809c4fa-7382-4cd4-82c4-f6c1df25a0d3','2018-02-24 14:00:19','2018-02-24 14:03:09','9671516',NULL,NULL,8,'q2','QUESTION','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('bab30ee7-b4ed-466a-9646-bb5fa4635f86','2018-02-24 13:46:38','2018-02-24 13:48:38','9671530',NULL,NULL,2,'q1','QUESTION','9b5d0d3a-689e-4ee9-a091-05cd02841d67');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('cea170d7-142a-4e67-aa9c-052536260f9c','2018-02-24 13:53:22','2018-02-24 13:53:22','9671504',NULL,NULL,2,'q1 response','MESSAGE','23f513de-f287-4ae2-9a0a-f287801aabdf');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('d434a30a-1f4a-4c2f-9fd2-0fc0cebcdfb3','2018-02-24 13:56:23','2018-02-24 13:56:23','9671495',NULL,NULL,1,'m2','MESSAGE','dbd73e0c-65ed-44d7-9f15-b30fd7ce0826');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('d44428b9-9cb6-4411-bb8f-26355c402c5c','2018-02-23 10:48:50','2018-02-23 11:24:18','9671621',NULL,NULL,1,'m2','MESSAGE','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('dd5ae3c6-e987-4997-a62b-a56e3c8d574e','2018-02-23 10:48:50','2018-02-23 11:21:47','9671649',NULL,NULL,3,'q3','QUESTION','f920b85f-992d-43a8-92c8-c935444ec472');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('e587920d-13b1-45fb-8ce1-4d6d872fc211','2018-02-24 13:41:33','2018-02-24 13:41:33','9671566',NULL,NULL,1,'q1','QUESTION','37c54756-7669-4476-8ff8-25a8714df614');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('e5ce6175-4f81-4223-8b36-d6848644d12d','2018-02-24 14:00:19','2018-02-24 14:03:09','9671510',NULL,NULL,2,'m3','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('ea7a2cf3-5a0f-40ca-a286-bc591beb656a','2018-02-23 10:48:50','2018-02-23 11:15:13','9671584',NULL,NULL,0,'m1','MESSAGE','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('eea46dda-03c9-454e-b22a-96e8c18d1124','2018-02-23 10:48:50','2018-02-23 11:15:13','9671592',NULL,NULL,8,'q2 response','MESSAGE','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('f0dbdcc3-6c6d-4a1a-aa8c-b30707055565','2018-02-23 10:48:50','2018-02-23 11:24:18','9671625',NULL,NULL,5,'q1','QUESTION','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('fa2c6c51-aec1-4ee5-a5fb-32b2abb396f7','2018-02-23 10:48:50','2018-02-23 11:15:13','9671585',NULL,NULL,1,'m2','MESSAGE','5e168c38-a75f-47f3-8e99-8eeab8e9a8e4');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('fcdec4df-e60f-4cd6-9de0-b0e0cabf029d','2018-02-24 14:00:19','2018-02-24 14:03:09','9671511',NULL,NULL,3,'m4','MESSAGE','ebbd65b8-5e82-4abf-bdad-630482b16b6d');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('fd4e1a19-1997-4a0e-81ec-921feb5c4145','2018-02-24 13:41:33','2018-02-24 13:41:33','9671568',NULL,NULL,3,'q3','QUESTION','37c54756-7669-4476-8ff8-25a8714df614');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('fd8b0a9b-2ca5-4632-88be-880e3fade354','2018-02-23 10:48:50','2018-02-23 11:24:18','9671620',NULL,NULL,0,'m1','MESSAGE','eb154a75-ec2c-47dd-ad0f-d24d78ec9e4c');

INSERT INTO `message` (`call_flow_element_id`) VALUES ('04f856c7-2a15-45e3-8e18-4b1432f76077');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('09ac31bc-ec1f-4593-8146-0abfe9e0917a');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('0be447da-5481-443f-a20a-0fc26bf8de21');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('0d306506-c8c0-441f-ae4c-ca82d35d4c31');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('0ff83990-8926-4e92-a120-434250367bdd');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('12edd996-3af1-4656-b7b4-f971c49410e5');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('21c6fdcb-84f3-42c3-8f7c-5c42f6db49c3');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('22b25e58-00eb-4b80-88ca-ca97e9a1eee7');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('2302cf12-4bd7-4321-a786-40479d8dddff');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('3163b931-2b11-47e2-99fa-3197c9e85ff6');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('3378ca0f-cea7-4699-8566-0e6d45e9a4c8');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('485abd41-97b6-4434-8d18-17e2dca7e9dd');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('4d511897-8a14-4e37-8b48-3bde43121a9b');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('530f6ea8-0665-4a1e-b9e8-ea0e01ec896e');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('5aea6e67-1326-413a-a814-e423a2a5faaf');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('69a75758-9bd7-44c7-bc25-85edc99d465d');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('6a50503e-48f8-4b35-9604-5274ecfe575e');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('6c9a79ed-ae3c-45aa-872e-d87e145f52eb');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('6e768678-f602-4b67-8720-dfc9f5cce90c');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('6f3d037b-7dda-4325-a8a2-f4028bb34aeb');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('798fa860-fe26-40d3-844f-1abe66122e80');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('8a3094ef-26ee-42c6-9418-1c4bf89398e8');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('9d75488f-cb21-4fe1-9eca-cf4ba82ad1cc');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('9f4febb0-7376-4e38-bc42-32511c4fb1e9');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('add28325-8709-443b-af60-3fbf221b9df9');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('b428ca05-f784-4474-ae1c-1be9ad2572e5');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('b7388bfe-c66d-4ab7-926f-bee4a25efcc4');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('b786e5f0-df62-486f-be84-fa019cdd9f44');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('cea170d7-142a-4e67-aa9c-052536260f9c');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('d434a30a-1f4a-4c2f-9fd2-0fc0cebcdfb3');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('d44428b9-9cb6-4411-bb8f-26355c402c5c');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('e5ce6175-4f81-4223-8b36-d6848644d12d');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('ea7a2cf3-5a0f-40ca-a286-bc591beb656a');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('eea46dda-03c9-454e-b22a-96e8c18d1124');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('fa2c6c51-aec1-4ee5-a5fb-32b2abb396f7');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('fcdec4df-e60f-4cd6-9de0-b0e0cabf029d');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('fd8b0a9b-2ca5-4632-88be-880e3fade354');

INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('02ae38da-2633-4ab2-b0e5-e9d911680130');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('231dec7e-c75f-4f2b-a78d-9ae64a71a970');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('2a6c726e-a8fe-43bf-b5ad-4a19a7d652a6');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('3c3b5173-4985-4b18-9ba4-5b10c51eee71');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('47664d5c-443b-4df7-b4d6-4794fa078e45');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('49c45d85-f0d0-4d30-ab37-100349d7aefc');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('6b3eebc1-c4f9-46a0-af54-a051927b6cb4');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('6f187818-428f-47e6-b661-cf94a463d732');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('77124324-7855-4baa-a664-6239f5f34668');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('a1c18a46-2589-41f4-99a3-e886e65bd6f6');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('b809c4fa-7382-4cd4-82c4-f6c1df25a0d3');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('bab30ee7-b4ed-466a-9646-bb5fa4635f86');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('dd5ae3c6-e987-4997-a62b-a56e3c8d574e');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('e587920d-13b1-45fb-8ce1-4d6d872fc211');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('f0dbdcc3-6c6d-4a1a-aa8c-b30707055565');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`) VALUES ('fd4e1a19-1997-4a0e-81ec-921feb5c4145');

INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('01c6b4bd-1838-4b0c-ab70-bb7606837286',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'fd4e1a19-1997-4a0e-81ec-921feb5c4145',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('0481eb61-cde5-42ba-8ea6-629d70bfb3da',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'6b3eebc1-c4f9-46a0-af54-a051927b6cb4',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('0d130fcb-7f60-452c-8c24-3121d5b54335',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'bab30ee7-b4ed-466a-9646-bb5fa4635f86',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('1732887a-352b-479e-8fba-81dfaf2b2b82',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'b809c4fa-7382-4cd4-82c4-f6c1df25a0d3',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('23d83b87-a0e9-4fad-b527-2b70c9158817',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'dd5ae3c6-e987-4997-a62b-a56e3c8d574e',3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('2c2fafa4-652e-4d78-a87f-9c53668afa34',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'2a6c726e-a8fe-43bf-b5ad-4a19a7d652a6',4);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('2eea99f0-9899-492c-b64d-63c60bad792e',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'3c3b5173-4985-4b18-9ba4-5b10c51eee71',4);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('384c1e5c-9d38-441d-87ab-147e648d7217',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'2a6c726e-a8fe-43bf-b5ad-4a19a7d652a6',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('3ce9b490-b2f8-4147-917f-b1e18fd339da',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'dd5ae3c6-e987-4997-a62b-a56e3c8d574e',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('3e498211-7e3c-4d21-b66c-4d60b8777f69',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'bab30ee7-b4ed-466a-9646-bb5fa4635f86',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('3fb7e61e-1f6c-4a86-8ded-5ae540ad8904',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'e587920d-13b1-45fb-8ce1-4d6d872fc211',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('4305ee0d-326a-410c-a84e-10ee7b84ae97',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'e587920d-13b1-45fb-8ce1-4d6d872fc211',4);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('473beadf-52a1-446a-bd07-dafd038d06bb',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'47664d5c-443b-4df7-b4d6-4794fa078e45',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('4e748526-39de-4298-888d-1b6256d26711',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'231dec7e-c75f-4f2b-a78d-9ae64a71a970',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('5289a96d-685b-4824-88ca-ec102eb030fd',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'b809c4fa-7382-4cd4-82c4-f6c1df25a0d3',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('52a65a92-bd03-40e3-ad61-a81614ec4f9e',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'6b3eebc1-c4f9-46a0-af54-a051927b6cb4',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('53a7e0fb-6fb0-4a68-a634-fe631d82c690',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'6f187818-428f-47e6-b661-cf94a463d732',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('59a46535-df74-483f-b88d-0a0b70a52d7b',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'6f187818-428f-47e6-b661-cf94a463d732',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('59a93bd7-597a-4254-9e27-84759784a206',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'231dec7e-c75f-4f2b-a78d-9ae64a71a970',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('6c158885-5f32-41a2-95a2-edea8cdf20b7',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'a1c18a46-2589-41f4-99a3-e886e65bd6f6',4);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('725611ed-9814-4a5b-aef5-4c6cd7c1ad77',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'77124324-7855-4baa-a664-6239f5f34668',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('73da5b47-9a15-4277-9bdb-d44c382121c1',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'77124324-7855-4baa-a664-6239f5f34668',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('78aef476-0c5d-4ae6-a102-4ed19813dce5',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'f0dbdcc3-6c6d-4a1a-aa8c-b30707055565',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('7a203522-5fbe-46c0-be61-2b9c0903e993',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'02ae38da-2633-4ab2-b0e5-e9d911680130',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('7c6784b7-6156-4223-94a7-4e9cc3a1847c',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'02ae38da-2633-4ab2-b0e5-e9d911680130',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('7eb99197-8411-414d-81d9-b67a2f6852c3',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'fd4e1a19-1997-4a0e-81ec-921feb5c4145',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('89aca7f1-bdad-44fb-b8fc-b466a7994ce9',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'47664d5c-443b-4df7-b4d6-4794fa078e45',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('8de7dd20-b384-49c5-a93a-8e8d23f5053e',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'3c3b5173-4985-4b18-9ba4-5b10c51eee71',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('97365eb4-f7a9-4c2c-a35d-4938733e44b7',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'49c45d85-f0d0-4d30-ab37-100349d7aefc',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('9ed186a8-95c6-470a-b46e-61b6b319b662',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'dd5ae3c6-e987-4997-a62b-a56e3c8d574e',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('a96e38ef-ed41-4dfc-9712-5198c1300013',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'f0dbdcc3-6c6d-4a1a-aa8c-b30707055565',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('ae8e06ba-2439-4e89-84bf-65781b72aef8',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'a1c18a46-2589-41f4-99a3-e886e65bd6f6',3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('af682ebc-019e-4b70-a34f-e7bdca109731',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'e587920d-13b1-45fb-8ce1-4d6d872fc211',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('b1d9509a-3501-42cb-a5a7-237cee846df1',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'2a6c726e-a8fe-43bf-b5ad-4a19a7d652a6',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('b46b08f3-f5fb-4df2-ab67-a2bc5deb63ce',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'3c3b5173-4985-4b18-9ba4-5b10c51eee71',3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('c456eaff-c200-42d1-b1e0-a428f2c0cf36',NULL,'2018-02-24 14:03:09',NULL,0,NULL,'2a6c726e-a8fe-43bf-b5ad-4a19a7d652a6',3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('cbf867e4-c1d0-4058-82f5-3ce3891fd442',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'a1c18a46-2589-41f4-99a3-e886e65bd6f6',2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('ce8d5d53-0bcc-4033-a7c6-4a2aa5a9f3f7',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'a1c18a46-2589-41f4-99a3-e886e65bd6f6',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('d219425c-27a1-43af-8cb2-fcda5c7b4f98',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'e587920d-13b1-45fb-8ce1-4d6d872fc211',3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('d22336a7-238a-425f-8cf0-721926594767',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'49c45d85-f0d0-4d30-ab37-100349d7aefc',3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('d51cf47a-3560-4b7e-b1e2-6976a5e7c9f6',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'49c45d85-f0d0-4d30-ab37-100349d7aefc',1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('f41d9ac3-d14e-4cca-8ed9-88c5ab0c783a',NULL,'2018-02-23 11:26:05',NULL,0,NULL,'77124324-7855-4baa-a664-6239f5f34668',3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`is_correct`,`ivr_name`,`question_id`,`choice_id`) VALUES ('f4adb6ad-5c10-4b0c-8c80-2691772674ab',NULL,'2018-02-24 13:48:38',NULL,0,NULL,'3c3b5173-4985-4b18-9ba4-5b10c51eee71',1);
