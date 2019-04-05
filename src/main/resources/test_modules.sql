INSERT INTO `course` (`id`, `name`, `status`, `version`,`ivr_id`) VALUES('51cc333d-5135-40b5-864a-0281ec59f0ef', 'Test Course', 'DRAFT', 3, '25506');


INSERT INTO `module` (`id`,`created_date`,`updated_date`,`description`,`name`,`status`,`version`,`previous_version_id`,`start_module_question_id`,`name_code`,`ivr_group`) VALUES ('6115e9c1-079e-4720-9005-17bb3a6051b0', '2018-04-12 11:12:56', '2018-04-18 11:41:07', NULL, 'Water and Food Safety', 'DRAFT', 4, NULL, NULL, 'water-and-food-safety_v4', '303170');
INSERT INTO `module` (`id`,`created_date`,`updated_date`,`description`,`name`,`status`,`version`,`previous_version_id`,`start_module_question_id`,`name_code`,`ivr_group`) VALUES ('65aa8422-46ac-4476-8863-f1ccb4a66d07', '2018-04-17 11:37:17', '2018-04-18 11:41:30', NULL, 'Hand Washing', 'DRAFT', 4, NULL, NULL, 'hand-washing_v4', '303169');


INSERT INTO `course_module` (`id`, `list_order`, `course_id`, `module_id`,`ivr_id`,`ivr_name`) VALUES ('e9f603be-daac-471b-9737-391442037a7f', 0, '51cc333d-5135-40b5-864a-0281ec59f0ef', '6115e9c1-079e-4720-9005-17bb3a6051b0', '10751157', 'Water and Food Safety');
INSERT INTO `course_module` (`id`, `list_order`, `course_id`, `module_id`,`ivr_id`,`ivr_name`) VALUES ('21182e0d-856d-4baa-8869-f9733bfedeaf', 1, '51cc333d-5135-40b5-864a-0281ec59f0ef', '65aa8422-46ac-4476-8863-f1ccb4a66d07', '10751158', 'Hand Washing');


INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('d479ed69-503f-4a19-a218-16cf6065e01f', '2018-04-12 11:12:56', '2018-04-17 16:10:21', '10748699', NULL, 0, NULL, 0, 'unit 1', NULL, '6115e9c1-079e-4720-9005-17bb3a6051b0');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('2f7cd23e-1ae1-4884-ad2e-c07f98306590', '2018-04-12 11:12:56', '2018-04-17 16:10:21', '10748697', NULL, 1, NULL, 1, 'unit 2', NULL, '6115e9c1-079e-4720-9005-17bb3a6051b0');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('6be8e901-e535-46bb-a077-9116895a6129', '2018-04-12 11:12:56', '2018-04-17 16:10:21', '10748704', NULL, 1, NULL, 2, 'unit 3', NULL, '6115e9c1-079e-4720-9005-17bb3a6051b0');

INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('a4e0208d-344c-4d5a-a98f-4314bb7856c0', '2018-04-17 11:37:17', '2018-04-17 16:10:21', '10750787', NULL, 0, NULL, 0, 'unit 1', NULL, '65aa8422-46ac-4476-8863-f1ccb4a66d07');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('b8559686-38a7-47b6-87f9-b1a5348891ce', '2018-04-17 11:37:17', '2018-04-17 16:10:21', '10750785', NULL, 1, NULL, 1, 'unit 2', NULL, '65aa8422-46ac-4476-8863-f1ccb4a66d07');
INSERT INTO `unit` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name`,`allow_replay`,`description`,`list_order`,`name`,`continuation_question_id`,`module_id`) VALUES ('6fbc3a93-f410-4848-990e-595b3d1b52a5', '2018-04-17 11:37:17', '2018-04-17 16:10:21', '10750782', NULL, 1, NULL, 2, 'unit 3', NULL, '65aa8422-46ac-4476-8863-f1ccb4a66d07');


INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('defe64ad-e333-420a-9c68-0879d487c970', '2018-05-07 13:13:37', '2018-05-07 13:22:56', '10748688', NULL, NULL, 0, 'intro', 'MESSAGE', 'd479ed69-503f-4a19-a218-16cf6065e01f');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('3850e964-6051-49a5-8abc-ae55e7859f38', '2018-05-07 13:13:37', '2018-05-07 13:22:56', '10748689', NULL, NULL, 1, 'q1', 'QUESTION', 'd479ed69-503f-4a19-a218-16cf6065e01f');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('70c9fc23-25a4-49ab-9bad-a6924cfbe1ea', '2018-05-07 13:13:37', '2018-05-07 13:22:56', '10748690', NULL, NULL, 2, 'q2', 'QUESTION', 'd479ed69-503f-4a19-a218-16cf6065e01f');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('cd9f5f93-7087-4ec6-becb-42304a626867', '2018-05-07 13:13:37', '2018-05-07 13:22:56', '10748691', NULL, NULL, 3, 'q3', 'QUESTION', 'd479ed69-503f-4a19-a218-16cf6065e01f');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('574eb952-1085-45b4-9d7a-24be63018d86', '2018-05-07 13:13:37', '2018-05-07 13:22:56', '10748695', NULL, NULL, 4, 'q4', 'QUESTION', 'd479ed69-503f-4a19-a218-16cf6065e01f');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('2f9c99a5-5da2-4b6f-b8b6-cff55e82fd1a', '2018-05-07 13:13:37', '2018-05-07 13:33:44', '10748199', NULL, NULL, 0, 'intro', 'MESSAGE', '2f7cd23e-1ae1-4884-ad2e-c07f98306590');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('cd6bb1a8-8674-48b7-8b78-d2ccc8004001', '2018-05-07 13:13:37', '2018-05-07 13:33:44', '10748200', NULL, NULL, 1, 'm1', 'MESSAGE', '2f7cd23e-1ae1-4884-ad2e-c07f98306590');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('fe4d9495-3c31-44df-993c-3dbbf1a38971', '2018-05-07 13:13:37', '2018-05-07 13:33:44', '10748201', NULL, NULL, 2, 'm2', 'MESSAGE', '2f7cd23e-1ae1-4884-ad2e-c07f98306590');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('a9bd3976-3a40-468a-aa3e-89f93f67a2ff', '2018-05-07 13:13:37', '2018-05-07 13:33:44', '10748202', NULL, NULL, 3, 'q1', 'QUESTION', '2f7cd23e-1ae1-4884-ad2e-c07f98306590');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('4edca650-896e-4ec9-ac47-1344e75965fa', '2018-05-07 13:13:37', '2018-05-07 13:33:44', '10748203', NULL, NULL, 4, 'q1 response', 'MESSAGE', '2f7cd23e-1ae1-4884-ad2e-c07f98306590');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('751b3e62-bcf2-424f-a714-540d5918cd50', '2018-05-07 13:13:37', '2018-05-07 13:33:44', '10748204', NULL, NULL, 5, 'q2', 'QUESTION', '2f7cd23e-1ae1-4884-ad2e-c07f98306590');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('257c8c11-85aa-4fdf-b5f9-ee6d22333860', '2018-05-07 13:13:37', '2018-05-07 13:33:44', '10748205', NULL, NULL, 6, 'q2 response', 'MESSAGE', '2f7cd23e-1ae1-4884-ad2e-c07f98306590');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('055cab0f-4f6a-4ff5-8f5f-f82ba7d8102d', '2018-05-07 13:13:37', '2018-05-07 13:37:53', '10748514', NULL, NULL, 0, 'intro', 'MESSAGE', '6be8e901-e535-46bb-a077-9116895a6129');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('74269a8e-4158-4db8-bdd6-6473766f20a7', '2018-05-07 13:13:37', '2018-05-07 13:37:53', '10748515', NULL, NULL, 1, 'm1', 'MESSAGE', '6be8e901-e535-46bb-a077-9116895a6129');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('84405599-f511-4b17-b568-08f2257b2d4e', '2018-05-07 13:13:37', '2018-05-07 13:37:53', '10748516', NULL, NULL, 2, 'm2', 'MESSAGE', '6be8e901-e535-46bb-a077-9116895a6129');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('a667ecdc-5fe2-41b3-a8c4-b17ffb8ccce4', '2018-05-07 13:13:37', '2018-05-07 13:37:53', '10748517', NULL, NULL, 3, 'q1', 'QUESTION', '6be8e901-e535-46bb-a077-9116895a6129');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('bf2797ea-c182-4fd0-9fa6-3bd39b28c83e', '2018-05-07 13:13:37', '2018-05-07 13:37:53', '10748518', NULL, NULL, 4, 'q1 response', 'MESSAGE', '6be8e901-e535-46bb-a077-9116895a6129');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('4ef64c74-76c6-459e-ba28-d6e6ec38883c', '2018-05-07 13:13:37', '2018-05-07 13:37:53', '10748519', NULL, NULL, 5, 'q2', 'QUESTION', '6be8e901-e535-46bb-a077-9116895a6129');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('3f72160c-ea26-45d3-9d8e-1b41a41f22f9', '2018-05-07 13:13:37', '2018-05-07 13:37:53', '10748520', NULL, NULL, 6, 'q2 response', 'MESSAGE', '6be8e901-e535-46bb-a077-9116895a6129');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('c2a910c7-cbed-417e-9f0a-c9e38802f48c', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10748989', NULL, NULL, 0, 'intro', 'MESSAGE', 'a4e0208d-344c-4d5a-a98f-4314bb7856c0');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('817c13de-5f06-493d-a7f3-aecfe815bb38', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10748990', NULL, NULL, 1, 'q1', 'QUESTION', 'a4e0208d-344c-4d5a-a98f-4314bb7856c0');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('871c9580-8572-4aca-96f3-d0e0cd95a5ae', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10748991', NULL, NULL, 2, 'q2', 'QUESTION', 'a4e0208d-344c-4d5a-a98f-4314bb7856c0');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('449d30da-19ca-42b6-8a8d-9e34ca9a9853', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10748992', NULL, NULL, 3, 'q3', 'QUESTION', 'a4e0208d-344c-4d5a-a98f-4314bb7856c0');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('6b6e66b4-7646-45a3-8eaf-e1d1faf09f81', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10748996', NULL, NULL, 4, 'q4', 'QUESTION', 'a4e0208d-344c-4d5a-a98f-4314bb7856c0');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('542b932a-a014-48fc-9f97-99fe972ef67b', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10749250', NULL, NULL, 0, 'intro', 'MESSAGE', 'b8559686-38a7-47b6-87f9-b1a5348891ce');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('5ce5076f-9d40-4beb-a4da-6ec770961296', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10749251', NULL, NULL, 1, 'm1', 'MESSAGE', 'b8559686-38a7-47b6-87f9-b1a5348891ce');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('f755f2fa-e846-4556-850b-656b0c849faf', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10749252', NULL, NULL, 2, 'm2', 'MESSAGE', 'b8559686-38a7-47b6-87f9-b1a5348891ce');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('89b880fb-b18a-4a3c-a64c-8efe869183d4', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10749253', NULL, NULL, 3, 'q1', 'QUESTION', 'b8559686-38a7-47b6-87f9-b1a5348891ce');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('5999ef02-54b1-40da-bb40-f15dfdebb0dd', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10749254', NULL, NULL, 4, 'q1 response', 'MESSAGE', 'b8559686-38a7-47b6-87f9-b1a5348891ce');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('c7be12ea-1f44-4aa0-8cbc-285d6993a859', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10749258', NULL, NULL, 5, 'q2', 'QUESTION', 'b8559686-38a7-47b6-87f9-b1a5348891ce');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('37d368bc-8d11-438c-aea8-f8937c69e3a7', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10749259', NULL, NULL, 6, 'q2 response', 'MESSAGE', 'b8559686-38a7-47b6-87f9-b1a5348891ce');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('72e60492-cfa9-4509-bbfe-6bf8f1c17c58', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10750642', NULL, NULL, 0, 'intro', 'MESSAGE', '6fbc3a93-f410-4848-990e-595b3d1b52a5');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('ced5bcb5-f4ad-40ef-85f4-5e26b3968384', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10750643', NULL, NULL, 1, 'm1', 'MESSAGE', '6fbc3a93-f410-4848-990e-595b3d1b52a5');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('a1df695d-0745-40dc-a2c7-20f6015e8ad5', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10750649', NULL, NULL, 2, 'm2', 'MESSAGE', '6fbc3a93-f410-4848-990e-595b3d1b52a5');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('22424adb-73f0-40d0-9f41-503bc02fe02f', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10750644', NULL, NULL, 3, 'q1', 'QUESTION', '6fbc3a93-f410-4848-990e-595b3d1b52a5');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('1a427674-e07f-4df4-b5fd-92f739eb1f06', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10750645', NULL, NULL, 4, 'q1 response', 'MESSAGE', '6fbc3a93-f410-4848-990e-595b3d1b52a5');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('2ad4c88a-cb6a-4fbb-87e1-97a8716644bc', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10750650', NULL, NULL, 5, 'q2', 'QUESTION', '6fbc3a93-f410-4848-990e-595b3d1b52a5');
INSERT INTO `call_flow_element` (`id`,`created_date`,`updated_date`,`ivr_id`,`ivr_name` ,`content`,`list_order`,`name`,`type`,`unit_id`) VALUES ('1bb8c78f-bf44-40a0-847e-d2235c3ec193', '2018-05-07 13:13:40', '2018-05-07 13:44:53', '10750651', NULL, NULL, 6, 'q2 response', 'MESSAGE', '6fbc3a93-f410-4848-990e-595b3d1b52a5');


INSERT INTO `message` (`call_flow_element_id`) VALUES ('defe64ad-e333-420a-9c68-0879d487c970');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('2f9c99a5-5da2-4b6f-b8b6-cff55e82fd1a');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('cd6bb1a8-8674-48b7-8b78-d2ccc8004001');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('fe4d9495-3c31-44df-993c-3dbbf1a38971');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('4edca650-896e-4ec9-ac47-1344e75965fa');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('257c8c11-85aa-4fdf-b5f9-ee6d22333860');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('055cab0f-4f6a-4ff5-8f5f-f82ba7d8102d');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('74269a8e-4158-4db8-bdd6-6473766f20a7');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('84405599-f511-4b17-b568-08f2257b2d4e');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('bf2797ea-c182-4fd0-9fa6-3bd39b28c83e');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('3f72160c-ea26-45d3-9d8e-1b41a41f22f9');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('c2a910c7-cbed-417e-9f0a-c9e38802f48c');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('542b932a-a014-48fc-9f97-99fe972ef67b');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('5ce5076f-9d40-4beb-a4da-6ec770961296');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('f755f2fa-e846-4556-850b-656b0c849faf');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('5999ef02-54b1-40da-bb40-f15dfdebb0dd');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('37d368bc-8d11-438c-aea8-f8937c69e3a7');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('72e60492-cfa9-4509-bbfe-6bf8f1c17c58');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('ced5bcb5-f4ad-40ef-85f4-5e26b3968384');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('a1df695d-0745-40dc-a2c7-20f6015e8ad5');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('1a427674-e07f-4df4-b5fd-92f739eb1f06');
INSERT INTO `message` (`call_flow_element_id`) VALUES ('1bb8c78f-bf44-40a0-847e-d2235c3ec193');


INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('3850e964-6051-49a5-8abc-ae55e7859f38','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('70c9fc23-25a4-49ab-9bad-a6924cfbe1ea','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('cd9f5f93-7087-4ec6-becb-42304a626867','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('574eb952-1085-45b4-9d7a-24be63018d86','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('a9bd3976-3a40-468a-aa3e-89f93f67a2ff','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('751b3e62-bcf2-424f-a714-540d5918cd50','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('a667ecdc-5fe2-41b3-a8c4-b17ffb8ccce4','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('4ef64c74-76c6-459e-ba28-d6e6ec38883c','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('817c13de-5f06-493d-a7f3-aecfe815bb38','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('871c9580-8572-4aca-96f3-d0e0cd95a5ae','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('449d30da-19ca-42b6-8a8d-9e34ca9a9853','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('6b6e66b4-7646-45a3-8eaf-e1d1faf09f81','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('89b880fb-b18a-4a3c-a64c-8efe869183d4','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('c7be12ea-1f44-4aa0-8cbc-285d6993a859','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('22424adb-73f0-40d0-9f41-503bc02fe02f','PRE_TEST');
INSERT INTO `multiple_choice_question` (`call_flow_element_id`,`question_type`) VALUES ('2ad4c88a-cb6a-4fbb-87e1-97a8716644bc','PRE_TEST');


INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('24f6a6bd-6eee-466c-87db-25d9cfc303ba', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '3850e964-6051-49a5-8abc-ae55e7859f38', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('9952482b-cc50-4f50-a7ae-6c3f7c51fac4', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '3850e964-6051-49a5-8abc-ae55e7859f38', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('4c06c7fa-d9de-4ce8-a07d-3b1b17221b7c', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '70c9fc23-25a4-49ab-9bad-a6924cfbe1ea', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('4b0e26d7-dcd3-44dd-a321-118dac22f694', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '70c9fc23-25a4-49ab-9bad-a6924cfbe1ea', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('ec4fc36d-3865-4674-bab3-9d8a6b716ac7', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, 'cd9f5f93-7087-4ec6-becb-42304a626867', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('895f7239-d8eb-41d8-b9ed-86fd7bdb07ae', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, 'cd9f5f93-7087-4ec6-becb-42304a626867', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('944de7d6-46a9-442d-ba19-322dced4fa70', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '574eb952-1085-45b4-9d7a-24be63018d86', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('ca0ef245-ba74-45ec-bf92-cb1e87bd9d1b', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '574eb952-1085-45b4-9d7a-24be63018d86', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('721134e2-9b45-47f0-b6e9-abf755b3b0a3', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, 'a9bd3976-3a40-468a-aa3e-89f93f67a2ff', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('ec185dc1-6b2b-410a-bea0-0499c289d056', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, 'a9bd3976-3a40-468a-aa3e-89f93f67a2ff', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('e96ea60f-bb5d-4394-a064-8f5aa4652647', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '751b3e62-bcf2-424f-a714-540d5918cd50', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('b3ab622d-cda9-43c5-a55a-f83f6c7be258', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '751b3e62-bcf2-424f-a714-540d5918cd50', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('68d5f1ca-1f25-44c8-b1df-8d79e5450cb2', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, 'a667ecdc-5fe2-41b3-a8c4-b17ffb8ccce4', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('bed5b7dc-540f-4512-a28a-0bff090b2a5e', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, 'a667ecdc-5fe2-41b3-a8c4-b17ffb8ccce4', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('c471b2d6-f115-4e85-a5a8-5cea9923c90a', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '4ef64c74-76c6-459e-ba28-d6e6ec38883c', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('35f0d035-262c-4017-a3e3-c3504403f497', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '4ef64c74-76c6-459e-ba28-d6e6ec38883c', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('2f879371-94ef-490e-b174-64ea6c0f69cd', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '817c13de-5f06-493d-a7f3-aecfe815bb38', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('7f1e8243-ed67-4d54-b567-647016bea62a', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '817c13de-5f06-493d-a7f3-aecfe815bb38', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('8db3bbcd-7a4f-463c-be2b-fd42e60c35ce', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '871c9580-8572-4aca-96f3-d0e0cd95a5ae', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('d2d7115d-0297-4d3b-91ca-33704eee3777', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '871c9580-8572-4aca-96f3-d0e0cd95a5ae', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('f319f2c4-451b-42d1-aa35-c329a5d4108c', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '871c9580-8572-4aca-96f3-d0e0cd95a5ae', 3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('e92370d2-3e8c-43e4-b1e1-16c89a0c93f4', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '449d30da-19ca-42b6-8a8d-9e34ca9a9853', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('3ab45f01-9773-46da-96d4-ff976c01270e', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '449d30da-19ca-42b6-8a8d-9e34ca9a9853', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('94d5400e-14de-4d11-81a1-9e91d5501bea', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '6b6e66b4-7646-45a3-8eaf-e1d1faf09f81', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('6b4b0e81-1956-496e-9e09-cc9f622c942a', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '6b6e66b4-7646-45a3-8eaf-e1d1faf09f81', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('d5980312-3b20-42ba-a7b6-5cd7b4be081d', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '6b6e66b4-7646-45a3-8eaf-e1d1faf09f81', 3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('bca4e67a-8fee-4402-b640-adf774087457', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '89b880fb-b18a-4a3c-a64c-8efe869183d4', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('b962de30-4c37-4bd3-aa37-506635f6bc83', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '89b880fb-b18a-4a3c-a64c-8efe869183d4', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('645cfd94-002f-4bdd-a598-ebc0516c8d39', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, 'c7be12ea-1f44-4aa0-8cbc-285d6993a859', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('e5dc3108-d2c2-418c-9535-280261d1894a', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, 'c7be12ea-1f44-4aa0-8cbc-285d6993a859', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('b130a63b-b4fe-4a42-826c-b5533f02150a', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, 'c7be12ea-1f44-4aa0-8cbc-285d6993a859', 3);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('472bdefb-69a9-4e16-a081-f8d2c7fdb33d', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '22424adb-73f0-40d0-9f41-503bc02fe02f', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('b2b9caaf-0d6b-406c-a84b-7172cf32c575', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '22424adb-73f0-40d0-9f41-503bc02fe02f', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('04ca7482-b864-45ed-933f-d44d4a23375b', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '2ad4c88a-cb6a-4fbb-87e1-97a8716644bc', 1);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('faed55ad-03c4-4d3b-9241-04efdb8086c9', NULL, '2018-05-07 13:44:53', NULL, 'CORRECT', NULL, '2ad4c88a-cb6a-4fbb-87e1-97a8716644bc', 2);
INSERT INTO `choice` (`id`,`created_date`,`updated_date`,`description`,`type`,`ivr_name`,`question_id`,`choice_id`) VALUES ('3c856f30-97f7-47cf-8be6-0e31b783e545', NULL, '2018-05-07 13:44:53', NULL, 'INCORRECT', NULL, '2ad4c88a-cb6a-4fbb-87e1-97a8716644bc', 3);

