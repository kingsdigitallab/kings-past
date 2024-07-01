SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.6 (Ubuntu 15.6-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '78594a31-e629-474e-adb5-8ff2631da4de', '{"action":"user_invited","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"supabase_admin","actor_via_sso":false,"log_type":"team","traits":{"user_email":"samantha.callaghan@kcl.ac.uk","user_id":"13dde45d-dc21-4609-8c0c-9010f75c0efa"}}', '2024-02-19 09:58:01.628557+00', ''),
	('00000000-0000-0000-0000-000000000000', '2913d125-22e4-4a61-91b1-5738c9cd5d5a', '{"action":"user_signedup","actor_id":"13dde45d-dc21-4609-8c0c-9010f75c0efa","actor_username":"samantha.callaghan@kcl.ac.uk","actor_via_sso":false,"log_type":"team"}', '2024-02-19 09:58:57.244763+00', ''),
	('00000000-0000-0000-0000-000000000000', '1cb05ca9-6bb5-40a4-81a9-cce007eea467', '{"action":"user_recovery_requested","actor_id":"13dde45d-dc21-4609-8c0c-9010f75c0efa","actor_username":"samantha.callaghan@kcl.ac.uk","actor_via_sso":false,"log_type":"user"}', '2024-02-19 10:06:32.61831+00', ''),
	('00000000-0000-0000-0000-000000000000', '27611b6b-6448-421a-976d-b7f76c53a5bc', '{"action":"user_recovery_requested","actor_id":"13dde45d-dc21-4609-8c0c-9010f75c0efa","actor_username":"samantha.callaghan@kcl.ac.uk","actor_via_sso":false,"log_type":"user"}', '2024-02-19 10:07:43.288471+00', ''),
	('00000000-0000-0000-0000-000000000000', '41998bc7-dd93-4676-bd74-80a6e4c86262', '{"action":"login","actor_id":"13dde45d-dc21-4609-8c0c-9010f75c0efa","actor_username":"samantha.callaghan@kcl.ac.uk","actor_via_sso":false,"log_type":"account"}', '2024-02-19 10:09:26.226264+00', ''),
	('00000000-0000-0000-0000-000000000000', '25b55fd1-baa2-417a-9be0-01d41b33d22c', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"samantha.callaghan@kcl.ac.uk","user_id":"13dde45d-dc21-4609-8c0c-9010f75c0efa","user_phone":""}}', '2024-02-19 10:21:22.409714+00', ''),
	('00000000-0000-0000-0000-000000000000', '856425d6-d2ce-4e89-a291-f6020d46bf29', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jmvieira@gmail.com","user_id":"a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd","user_phone":""}}', '2024-02-23 12:28:28.418035+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae11ab4b-7eca-450b-bc8f-d1f4870c0592', '{"action":"user_recovery_requested","actor_id":"a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd","actor_username":"jmvieira@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-02-23 12:28:37.733427+00', ''),
	('00000000-0000-0000-0000-000000000000', '838fbf46-1781-4666-9cb7-41c6fbbbcd16', '{"action":"login","actor_id":"a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd","actor_username":"jmvieira@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-02-23 12:30:23.819767+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', 'authenticated', 'authenticated', 'jmvieira@gmail.com', '$2a$10$mEYtE7BziMGL6/7H9JXR7.vEOfAGDmW9SxVKok/QnGrh/cRmIqxNK', '2024-02-23 12:28:28.420142+00', NULL, '', NULL, '', '2024-02-23 12:28:37.734808+00', '', '', NULL, '2024-02-23 12:30:23.820366+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-02-23 12:28:28.412685+00', '2024-02-23 12:30:23.822887+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', '{"sub": "a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd", "email": "jmvieira@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-02-23 12:28:28.417023+00', '2024-02-23 12:28:28.417082+00', '2024-02-23 12:28:28.417082+00', 'f8f9bfd8-12f7-47f3-8a54-0085b177a4f2');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('1e7e82ff-55f2-4947-a469-117143dd5742', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', '2024-02-23 12:30:23.8205+00', '2024-02-23 12:30:23.8205+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2.1 Safari/605.1.15', '90.247.72.161', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('1e7e82ff-55f2-4947-a469-117143dd5742', '2024-02-23 12:30:23.823371+00', '2024-02-23 12:30:23.823371+00', 'otp', 'bd014b29-488c-4ffd-802d-670af27d8023');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 3, 'Pq9aVgIq4FQRITRbm2UiZA', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', false, '2024-02-23 12:30:23.821538+00', '2024-02-23 12:30:23.821538+00', NULL, '1e7e82ff-55f2-4947-a469-117143dd5742');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: researcher; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."researcher" ("id", "name", "created_at", "added_by") VALUES
	(1, 'Erika Melek Delgado', '2024-02-27 14:12:42.366848+00', NULL),
	(2, 'Gillian Lamb', '2024-02-27 14:13:02.735719+00', NULL);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."country" ("id", "name", "created_at", "added_by") VALUES
	(1, 'Afghanistan', '2024-02-16 12:10:46.763128+00', NULL),
	(2, 'Åland Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(3, 'Albania', '2024-02-16 12:10:46.763128+00', NULL),
	(4, 'Algeria', '2024-02-16 12:10:46.763128+00', NULL),
	(5, 'American Samoa', '2024-02-16 12:10:46.763128+00', NULL),
	(6, 'Andorra', '2024-02-16 12:10:46.763128+00', NULL),
	(7, 'Angola', '2024-02-16 12:10:46.763128+00', NULL),
	(8, 'Anguilla', '2024-02-16 12:10:46.763128+00', NULL),
	(9, 'Antarctica', '2024-02-16 12:10:46.763128+00', NULL),
	(10, 'Antigua and Barbuda', '2024-02-16 12:10:46.763128+00', NULL),
	(11, 'Argentina', '2024-02-16 12:10:46.763128+00', NULL),
	(12, 'Armenia', '2024-02-16 12:10:46.763128+00', NULL),
	(13, 'Aruba', '2024-02-16 12:10:46.763128+00', NULL),
	(14, 'Australia', '2024-02-16 12:10:46.763128+00', NULL),
	(15, 'Austria', '2024-02-16 12:10:46.763128+00', NULL),
	(16, 'Azerbaijan', '2024-02-16 12:10:46.763128+00', NULL),
	(17, 'Bahamas', '2024-02-16 12:10:46.763128+00', NULL),
	(18, 'Bahrain', '2024-02-16 12:10:46.763128+00', NULL),
	(19, 'Bangladesh', '2024-02-16 12:10:46.763128+00', NULL),
	(20, 'Barbados', '2024-02-16 12:10:46.763128+00', NULL),
	(21, 'Belarus', '2024-02-16 12:10:46.763128+00', NULL),
	(22, 'Belgium', '2024-02-16 12:10:46.763128+00', NULL),
	(23, 'Belize', '2024-02-16 12:10:46.763128+00', NULL),
	(24, 'Benin', '2024-02-16 12:10:46.763128+00', NULL),
	(25, 'Bermuda', '2024-02-16 12:10:46.763128+00', NULL),
	(26, 'Bhutan', '2024-02-16 12:10:46.763128+00', NULL),
	(27, 'Bolivia', '2024-02-16 12:10:46.763128+00', NULL),
	(28, 'Bonaire', '2024-02-16 12:10:46.763128+00', NULL),
	(29, 'Bosnia and Herzegovina', '2024-02-16 12:10:46.763128+00', NULL),
	(30, 'Botswana', '2024-02-16 12:10:46.763128+00', NULL),
	(31, 'Bouvet Island', '2024-02-16 12:10:46.763128+00', NULL),
	(32, 'Brazil', '2024-02-16 12:10:46.763128+00', NULL),
	(33, 'British Indian Ocean Territory', '2024-02-16 12:10:46.763128+00', NULL),
	(34, 'Brunei', '2024-02-16 12:10:46.763128+00', NULL),
	(35, 'Bulgaria', '2024-02-16 12:10:46.763128+00', NULL),
	(36, 'Burkina Faso', '2024-02-16 12:10:46.763128+00', NULL),
	(37, 'Burundi', '2024-02-16 12:10:46.763128+00', NULL),
	(38, 'Cabo Verde', '2024-02-16 12:10:46.763128+00', NULL),
	(39, 'Cambodia', '2024-02-16 12:10:46.763128+00', NULL),
	(40, 'Cameroon', '2024-02-16 12:10:46.763128+00', NULL),
	(41, 'Canada', '2024-02-16 12:10:46.763128+00', NULL),
	(42, 'Cayman Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(43, 'Central African Republic', '2024-02-16 12:10:46.763128+00', NULL),
	(44, 'Chad', '2024-02-16 12:10:46.763128+00', NULL),
	(45, 'Chile', '2024-02-16 12:10:46.763128+00', NULL),
	(46, 'China', '2024-02-16 12:10:46.763128+00', NULL),
	(47, 'Christmas Island', '2024-02-16 12:10:46.763128+00', NULL),
	(48, 'Cocos (Keeling) Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(49, 'Colombia', '2024-02-16 12:10:46.763128+00', NULL),
	(50, 'Comoros', '2024-02-16 12:10:46.763128+00', NULL),
	(51, 'Congo', '2024-02-16 12:10:46.763128+00', NULL),
	(52, 'Congo (the Democratic Republic of the)', '2024-02-16 12:10:46.763128+00', NULL),
	(53, 'Cook Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(54, 'Costa Rica', '2024-02-16 12:10:46.763128+00', NULL),
	(55, 'Côte d''Ivoire', '2024-02-16 12:10:46.763128+00', NULL),
	(56, 'Croatia', '2024-02-16 12:10:46.763128+00', NULL),
	(57, 'Cuba', '2024-02-16 12:10:46.763128+00', NULL),
	(58, 'Curaçao', '2024-02-16 12:10:46.763128+00', NULL),
	(59, 'Cyprus', '2024-02-16 12:10:46.763128+00', NULL),
	(60, 'Czechia', '2024-02-16 12:10:46.763128+00', NULL),
	(61, 'Denmark', '2024-02-16 12:10:46.763128+00', NULL),
	(62, 'Djibouti', '2024-02-16 12:10:46.763128+00', NULL),
	(63, 'Dominica', '2024-02-16 12:10:46.763128+00', NULL),
	(64, 'Dominican Republic', '2024-02-16 12:10:46.763128+00', NULL),
	(65, 'Ecuador', '2024-02-16 12:10:46.763128+00', NULL),
	(66, 'Egypt', '2024-02-16 12:10:46.763128+00', NULL),
	(67, 'El Salvador', '2024-02-16 12:10:46.763128+00', NULL),
	(68, 'Equatorial Guinea', '2024-02-16 12:10:46.763128+00', NULL),
	(69, 'Eritrea', '2024-02-16 12:10:46.763128+00', NULL),
	(70, 'Estonia', '2024-02-16 12:10:46.763128+00', NULL),
	(71, 'Eswatini', '2024-02-16 12:10:46.763128+00', NULL),
	(72, 'Ethiopia', '2024-02-16 12:10:46.763128+00', NULL),
	(73, 'Falkland Islands (Malvinas)', '2024-02-16 12:10:46.763128+00', NULL),
	(74, 'Faroe Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(75, 'Fiji', '2024-02-16 12:10:46.763128+00', NULL),
	(76, 'Finland', '2024-02-16 12:10:46.763128+00', NULL),
	(77, 'France', '2024-02-16 12:10:46.763128+00', NULL),
	(78, 'French Guiana', '2024-02-16 12:10:46.763128+00', NULL),
	(79, 'French Polynesia', '2024-02-16 12:10:46.763128+00', NULL),
	(80, 'French Southern Territories', '2024-02-16 12:10:46.763128+00', NULL),
	(81, 'Gabon', '2024-02-16 12:10:46.763128+00', NULL),
	(82, 'Gambia', '2024-02-16 12:10:46.763128+00', NULL),
	(83, 'Georgia', '2024-02-16 12:10:46.763128+00', NULL),
	(84, 'Germany', '2024-02-16 12:10:46.763128+00', NULL),
	(85, 'Ghana', '2024-02-16 12:10:46.763128+00', NULL),
	(86, 'Gibraltar', '2024-02-16 12:10:46.763128+00', NULL),
	(87, 'Greece', '2024-02-16 12:10:46.763128+00', NULL),
	(88, 'Greenland', '2024-02-16 12:10:46.763128+00', NULL),
	(89, 'Grenada', '2024-02-16 12:10:46.763128+00', NULL),
	(90, 'Guadeloupe', '2024-02-16 12:10:46.763128+00', NULL),
	(91, 'Guam', '2024-02-16 12:10:46.763128+00', NULL),
	(92, 'Guatemala', '2024-02-16 12:10:46.763128+00', NULL),
	(93, 'Guernsey', '2024-02-16 12:10:46.763128+00', NULL),
	(94, 'Guinea', '2024-02-16 12:10:46.763128+00', NULL),
	(95, 'Guinea-Bissau', '2024-02-16 12:10:46.763128+00', NULL),
	(96, 'Guyana', '2024-02-16 12:10:46.763128+00', NULL),
	(97, 'Haiti', '2024-02-16 12:10:46.763128+00', NULL),
	(98, 'Heard Island and McDonald Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(99, 'Holy See', '2024-02-16 12:10:46.763128+00', NULL),
	(100, 'Honduras', '2024-02-16 12:10:46.763128+00', NULL),
	(101, 'Hong Kong', '2024-02-16 12:10:46.763128+00', NULL),
	(102, 'Hungary', '2024-02-16 12:10:46.763128+00', NULL),
	(103, 'Iceland', '2024-02-16 12:10:46.763128+00', NULL),
	(104, 'India', '2024-02-16 12:10:46.763128+00', NULL),
	(105, 'Indonesia', '2024-02-16 12:10:46.763128+00', NULL),
	(106, 'Iran', '2024-02-16 12:10:46.763128+00', NULL),
	(107, 'Iraq', '2024-02-16 12:10:46.763128+00', NULL),
	(108, 'Ireland', '2024-02-16 12:10:46.763128+00', NULL),
	(109, 'Isle of Man', '2024-02-16 12:10:46.763128+00', NULL),
	(110, 'Israel', '2024-02-16 12:10:46.763128+00', NULL),
	(111, 'Italy', '2024-02-16 12:10:46.763128+00', NULL),
	(112, 'Jamaica', '2024-02-16 12:10:46.763128+00', NULL),
	(113, 'Japan', '2024-02-16 12:10:46.763128+00', NULL),
	(114, 'Jersey', '2024-02-16 12:10:46.763128+00', NULL),
	(115, 'Jordan', '2024-02-16 12:10:46.763128+00', NULL),
	(116, 'Kazakhstan', '2024-02-16 12:10:46.763128+00', NULL),
	(117, 'Kenya', '2024-02-16 12:10:46.763128+00', NULL),
	(118, 'Kiribati', '2024-02-16 12:10:46.763128+00', NULL),
	(119, 'Kuwait', '2024-02-16 12:10:46.763128+00', NULL),
	(120, 'Kyrgyzstan', '2024-02-16 12:10:46.763128+00', NULL),
	(121, 'Laos', '2024-02-16 12:10:46.763128+00', NULL),
	(122, 'Latvia', '2024-02-16 12:10:46.763128+00', NULL),
	(123, 'Lebanon', '2024-02-16 12:10:46.763128+00', NULL),
	(124, 'Lesotho', '2024-02-16 12:10:46.763128+00', NULL),
	(125, 'Liberia', '2024-02-16 12:10:46.763128+00', NULL),
	(126, 'Libya', '2024-02-16 12:10:46.763128+00', NULL),
	(127, 'Liechtenstein', '2024-02-16 12:10:46.763128+00', NULL),
	(128, 'Lithuania', '2024-02-16 12:10:46.763128+00', NULL),
	(129, 'Luxembourg', '2024-02-16 12:10:46.763128+00', NULL),
	(130, 'Macao', '2024-02-16 12:10:46.763128+00', NULL),
	(131, 'Madagascar', '2024-02-16 12:10:46.763128+00', NULL),
	(132, 'Malawi', '2024-02-16 12:10:46.763128+00', NULL),
	(133, 'Malaysia', '2024-02-16 12:10:46.763128+00', NULL),
	(134, 'Maldives', '2024-02-16 12:10:46.763128+00', NULL),
	(135, 'Mali', '2024-02-16 12:10:46.763128+00', NULL),
	(136, 'Malta', '2024-02-16 12:10:46.763128+00', NULL),
	(137, 'Marshall Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(138, 'Martinique', '2024-02-16 12:10:46.763128+00', NULL),
	(139, 'Mauritania', '2024-02-16 12:10:46.763128+00', NULL),
	(140, 'Mauritius', '2024-02-16 12:10:46.763128+00', NULL),
	(141, 'Mayotte', '2024-02-16 12:10:46.763128+00', NULL),
	(142, 'Mexico', '2024-02-16 12:10:46.763128+00', NULL),
	(143, 'Micronesia', '2024-02-16 12:10:46.763128+00', NULL),
	(144, 'Moldova', '2024-02-16 12:10:46.763128+00', NULL),
	(145, 'Monaco', '2024-02-16 12:10:46.763128+00', NULL),
	(146, 'Mongolia', '2024-02-16 12:10:46.763128+00', NULL),
	(147, 'Montenegro', '2024-02-16 12:10:46.763128+00', NULL),
	(148, 'Montserrat', '2024-02-16 12:10:46.763128+00', NULL),
	(149, 'Morocco', '2024-02-16 12:10:46.763128+00', NULL),
	(150, 'Mozambique', '2024-02-16 12:10:46.763128+00', NULL),
	(151, 'Myanmar', '2024-02-16 12:10:46.763128+00', NULL),
	(152, 'Namibia', '2024-02-16 12:10:46.763128+00', NULL),
	(153, 'Nauru', '2024-02-16 12:10:46.763128+00', NULL),
	(154, 'Nepal', '2024-02-16 12:10:46.763128+00', NULL),
	(155, 'Netherlands', '2024-02-16 12:10:46.763128+00', NULL),
	(156, 'New Caledonia', '2024-02-16 12:10:46.763128+00', NULL),
	(157, 'New Zealand', '2024-02-16 12:10:46.763128+00', NULL),
	(158, 'Nicaragua', '2024-02-16 12:10:46.763128+00', NULL),
	(159, 'Niger', '2024-02-16 12:10:46.763128+00', NULL),
	(160, 'Nigeria', '2024-02-16 12:10:46.763128+00', NULL),
	(161, 'Niue', '2024-02-16 12:10:46.763128+00', NULL),
	(162, 'Norfolk Island', '2024-02-16 12:10:46.763128+00', NULL),
	(163, 'North Korea', '2024-02-16 12:10:46.763128+00', NULL),
	(164, 'North Macedonia', '2024-02-16 12:10:46.763128+00', NULL),
	(165, 'Northern Mariana Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(166, 'Norway', '2024-02-16 12:10:46.763128+00', NULL),
	(167, 'Oman', '2024-02-16 12:10:46.763128+00', NULL),
	(168, 'Pakistan', '2024-02-16 12:10:46.763128+00', NULL),
	(169, 'Palau', '2024-02-16 12:10:46.763128+00', NULL),
	(170, 'Palestine', '2024-02-16 12:10:46.763128+00', NULL),
	(171, 'Panama', '2024-02-16 12:10:46.763128+00', NULL),
	(172, 'Papua New Guinea', '2024-02-16 12:10:46.763128+00', NULL),
	(173, 'Paraguay', '2024-02-16 12:10:46.763128+00', NULL),
	(174, 'Peru', '2024-02-16 12:10:46.763128+00', NULL),
	(175, 'Philippines', '2024-02-16 12:10:46.763128+00', NULL),
	(176, 'Pitcairn', '2024-02-16 12:10:46.763128+00', NULL),
	(177, 'Poland', '2024-02-16 12:10:46.763128+00', NULL),
	(178, 'Portugal', '2024-02-16 12:10:46.763128+00', NULL),
	(179, 'Puerto Rico', '2024-02-16 12:10:46.763128+00', NULL),
	(180, 'Qatar', '2024-02-16 12:10:46.763128+00', NULL),
	(181, 'Réunion', '2024-02-16 12:10:46.763128+00', NULL),
	(182, 'Romania', '2024-02-16 12:10:46.763128+00', NULL),
	(183, 'Russia', '2024-02-16 12:10:46.763128+00', NULL),
	(184, 'Rwanda', '2024-02-16 12:10:46.763128+00', NULL),
	(185, 'Saint Barthélemy', '2024-02-16 12:10:46.763128+00', NULL),
	(186, 'Saint Helena', '2024-02-16 12:10:46.763128+00', NULL),
	(187, 'Saint Kitts and Nevis', '2024-02-16 12:10:46.763128+00', NULL),
	(188, 'Saint Lucia', '2024-02-16 12:10:46.763128+00', NULL),
	(189, 'Saint Martin (French part)', '2024-02-16 12:10:46.763128+00', NULL),
	(190, 'Saint Pierre and Miquelon', '2024-02-16 12:10:46.763128+00', NULL),
	(191, 'Saint Vincent and the Grenadines', '2024-02-16 12:10:46.763128+00', NULL),
	(192, 'Samoa', '2024-02-16 12:10:46.763128+00', NULL),
	(193, 'San Marino', '2024-02-16 12:10:46.763128+00', NULL),
	(194, 'Sao Tome and Principe', '2024-02-16 12:10:46.763128+00', NULL),
	(195, 'Saudi Arabia', '2024-02-16 12:10:46.763128+00', NULL),
	(196, 'Senegal', '2024-02-16 12:10:46.763128+00', NULL),
	(197, 'Serbia', '2024-02-16 12:10:46.763128+00', NULL),
	(198, 'Seychelles', '2024-02-16 12:10:46.763128+00', NULL),
	(199, 'Sierra Leone', '2024-02-16 12:10:46.763128+00', NULL),
	(200, 'Singapore', '2024-02-16 12:10:46.763128+00', NULL),
	(201, 'Sint Maarten (Dutch part)', '2024-02-16 12:10:46.763128+00', NULL),
	(202, 'Slovakia', '2024-02-16 12:10:46.763128+00', NULL),
	(203, 'Slovenia', '2024-02-16 12:10:46.763128+00', NULL),
	(204, 'Solomon Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(205, 'Somalia', '2024-02-16 12:10:46.763128+00', NULL),
	(206, 'South Africa', '2024-02-16 12:10:46.763128+00', NULL),
	(207, 'South Georgia and the South Sandwich Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(208, 'South Korea', '2024-02-16 12:10:46.763128+00', NULL),
	(209, 'South Sudan', '2024-02-16 12:10:46.763128+00', NULL),
	(210, 'Spain', '2024-02-16 12:10:46.763128+00', NULL),
	(211, 'Sri Lanka', '2024-02-16 12:10:46.763128+00', NULL),
	(212, 'Sudan', '2024-02-16 12:10:46.763128+00', NULL),
	(213, 'Suriname', '2024-02-16 12:10:46.763128+00', NULL),
	(214, 'Svalbard and Jan Mayen', '2024-02-16 12:10:46.763128+00', NULL),
	(215, 'Sweden', '2024-02-16 12:10:46.763128+00', NULL),
	(216, 'Switzerland', '2024-02-16 12:10:46.763128+00', NULL),
	(217, 'Syria', '2024-02-16 12:10:46.763128+00', NULL),
	(218, 'Taiwan (Province of China)', '2024-02-16 12:10:46.763128+00', NULL),
	(219, 'Tajikistan', '2024-02-16 12:10:46.763128+00', NULL),
	(220, 'Tanzania', '2024-02-16 12:10:46.763128+00', NULL),
	(221, 'Thailand', '2024-02-16 12:10:46.763128+00', NULL),
	(222, 'Timor-Leste', '2024-02-16 12:10:46.763128+00', NULL),
	(223, 'Togo', '2024-02-16 12:10:46.763128+00', NULL),
	(224, 'Tokelau', '2024-02-16 12:10:46.763128+00', NULL),
	(225, 'Tonga', '2024-02-16 12:10:46.763128+00', NULL),
	(226, 'Trinidad and Tobago', '2024-02-16 12:10:46.763128+00', NULL),
	(227, 'Tunisia', '2024-02-16 12:10:46.763128+00', NULL),
	(228, 'Turkey', '2024-02-16 12:10:46.763128+00', NULL),
	(229, 'Turkmenistan', '2024-02-16 12:10:46.763128+00', NULL),
	(230, 'Turks and Caicos Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(231, 'Tuvalu', '2024-02-16 12:10:46.763128+00', NULL),
	(232, 'Uganda', '2024-02-16 12:10:46.763128+00', NULL),
	(233, 'Ukraine', '2024-02-16 12:10:46.763128+00', NULL),
	(234, 'United Arab Emirates', '2024-02-16 12:10:46.763128+00', NULL),
	(235, 'United Kingdom', '2024-02-16 12:10:46.763128+00', NULL),
	(236, 'United States', '2024-02-16 12:10:46.763128+00', NULL),
	(237, 'United States Minor Outlying Islands', '2024-02-16 12:10:46.763128+00', NULL),
	(238, 'Uruguay', '2024-02-16 12:10:46.763128+00', NULL),
	(239, 'Uzbekistan', '2024-02-16 12:10:46.763128+00', NULL),
	(240, 'Vanuatu', '2024-02-16 12:10:46.763128+00', NULL),
	(241, 'Venezuela', '2024-02-16 12:10:46.763128+00', NULL),
	(242, 'Vietnam', '2024-02-16 12:10:46.763128+00', NULL),
	(243, 'Virgin Islands (British)', '2024-02-16 12:10:46.763128+00', NULL),
	(244, 'Virgin Islands (U.S.)', '2024-02-16 12:10:46.763128+00', NULL),
	(245, 'Wallis and Futuna', '2024-02-16 12:10:46.763128+00', NULL),
	(246, 'Western Sahara', '2024-02-16 12:10:46.763128+00', NULL),
	(247, 'Yemen', '2024-02-16 12:10:46.763128+00', NULL),
	(248, 'Zambia', '2024-02-16 12:10:46.763128+00', NULL),
	(249, 'Zimbabwe', '2024-02-16 12:10:46.763128+00', NULL);


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."currency" ("id", "name", "created_at", "added_by") VALUES
	(1, 'GBP', '2024-02-16 15:42:31.855033+00', NULL),
	(2, 'USD', '2024-02-16 15:42:31.855033+00', NULL);


--
-- Data for Name: place; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."place" ("id", "name", "slug", "alternative_names", "description", "created_at", "draft", "latitude", "longitude", "added_by") VALUES
	(1, 'London', 'london-1', NULL, NULL, '2024-04-22 15:50:28.751496+00', true, NULL, NULL, NULL);


--
-- Data for Name: donation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation" ("id", "name", "slug", "start_date", "end_date", "location", "description", "added_by", "created_at", "price", "currency", "draft") VALUES
	(3, 'Foundation of King''s', 'foundation-of-kings-3', '1830-01-01', '1830-01-01', NULL, 'Donation for the founding of King''s', 'Gillian Lamb', '2024-04-18 16:38:13.23196+00', 100, 'GBP', true);


--
-- Data for Name: organisation_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."organisation_type" ("id", "name", "created_at", "added_by") VALUES
	(7, 'University', '2024-04-18 16:44:39.99206+00', 'Gillian Lamb'),
	(8, 'Media', '2024-04-18 16:45:22.676763+00', 'Gillian Lamb'),
	(9, 'Legal group', '2024-04-18 16:46:38.24689+00', 'Gillian Lamb'),
	(11, 'Hospital', '2024-04-18 16:49:08.52805+00', 'Gillian Lamb'),
	(1, 'Charitable society', '2024-03-21 09:48:31.300135+00', 'Gillian Lamb'),
	(2, 'Campaign group', '2024-03-21 09:48:41.466043+00', 'Gillian Lamb'),
	(4, 'Political group', '2024-03-21 09:48:58.450085+00', 'Gillian Lamb'),
	(3, 'Business', '2024-03-21 09:48:49.255173+00', 'Gillian Lamb'),
	(5, 'Public school', '2024-03-21 09:49:17.278753+00', 'Gillian Lamb'),
	(6, 'University College', '2024-03-21 09:49:28.459365+00', 'Gillian Lamb'),
	(10, 'Social club or group', '2024-04-18 16:46:54.780838+00', 'Gillian Lamb'),
	(12, 'Heritage group', '2024-04-18 16:50:56.648494+00', 'Gillian Lamb');


--
-- Data for Name: organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."organisation" ("id", "name", "slug", "alternative_names", "description", "created_at", "organisation_type", "location", "founding_date", "dissolution_date", "draft", "added_by") VALUES
	(37, 'The Queen''s College, Oxford', 'the-queens-college-oxford-37', NULL, 'University of Oxford', '2024-03-21 09:59:33.213328+00', 'University College', NULL, '1341-01-01', NULL, true, 'Gillian Lamb'),
	(40, 'Bank of England', 'bank-of-england-40', NULL, 'Was privately owned by stockholders until nationalised in 1946 by Attlee government. ', '2024-03-21 11:38:14.030708+00', 'Business', NULL, '1694-01-01', NULL, true, 'Gillian Lamb'),
	(41, 'National Society for Promoting Religious Education', 'national-society-for-promoting-religious-education-41', 'National Society', 't promotes church schools and Christian education in line with the established church. Historically it was in strong competition with the nonconformist organization British and Foreign School Society. Both promoted the monitorial system, whereby a few paid teachers worked with senior students who in turn taught the junior students. The National Society was strongly supported by the Anglican clergy, Oxford and Cambridge universities, and the established church. The nonconformist Protestants were in strong opposition. Schools founded by the National Society were called National Schools.', '2024-03-29 23:02:52.059007+00', 'Charitable society', NULL, '1811-10-16', NULL, true, 'Gillian Lamb'),
	(4, 'Eton College', 'eton-college-4', 'Eton', 'Public school', '2024-02-29 14:12:24.923234+00', 'Public school', NULL, '1440-01-01', NULL, true, 'Gillian Lamb'),
	(5, 'St John''s, Cambridge', 'st-johns-cambridge-5', NULL, 'College at University of Cambridge', '2024-02-29 14:13:33.089388+00', 'University College', NULL, '1511-01-01', NULL, true, 'Gillian Lamb'),
	(10, 'West Indian Company', 'west-indian-company-10', NULL, 'Merchant company', '2024-02-29 14:19:25.473507+00', 'Business', NULL, '1602-01-01', '1792-01-01', true, 'Gillian Lamb'),
	(11, 'Charterhouse', 'charterhouse-11', NULL, 'Public school', '2024-02-29 14:20:11.242622+00', 'Public school', NULL, '1611-01-01', NULL, true, 'Gillian Lamb'),
	(16, 'Harrow', 'harrow-16', NULL, 'Public school', '2024-03-05 22:49:32.663318+00', 'Public school', NULL, '1572-01-01', NULL, true, 'Gillian Lamb'),
	(18, 'El Dock  Company', 'el-dock-company-18', NULL, NULL, '2024-03-05 23:12:53.478942+00', 'Business', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(17, 'Lincoln''s Inn', 'lincolns-inn-17', NULL, 'Law organisation', '2024-03-05 23:02:27.664094+00', 'Legal group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(42, 'National Maritime Museum', 'national-maritime-museum-42', NULL, 'Museum', '2024-03-29 23:56:24.290884+00', 'Heritage group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(6, 'Trinity College, Cambridge', 'trinity-college-cambridge-6', NULL, 'College at the University of Cambridge', '2024-02-29 14:14:17.493589+00', 'University College', NULL, '1546-01-01', NULL, true, 'Gillian Lamb'),
	(7, 'Chelmsford Grammar', 'chelmsford-grammar-7', NULL, NULL, '2024-02-29 14:14:47.283295+00', 'Public school', NULL, '1551-01-01', NULL, true, 'Gillian Lamb'),
	(13, 'Queen''s College, Cambridge', 'queens-college-cambridge-13', NULL, 'University college', '2024-02-29 14:28:07.55522+00', 'University College', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(19, 'Worcester College, Oxford', 'worcester-college-oxford-19', NULL, 'University College', '2024-03-05 23:21:54.76176+00', 'University College', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(36, 'Canterbury Association', 'canterbury-association-36', NULL, 'Association formed to promote settlement in New Zealand', '2024-03-21 09:47:53.65284+00', 'Social club or group', NULL, '1848-01-01', '1855-01-01', true, 'Gillian Lamb'),
	(26, 'British Institution', 'british-institution-26', NULL, 'Private 19th century club for promoting art', '2024-03-20 21:38:35.820422+00', 'Heritage group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(31, 'Lincoln, Oxford ', 'lincoln-oxford-31', NULL, 'University of Oxford', '2024-03-20 22:03:58.351533+00', 'University College', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(32, 'Magdalen College, Oxford', 'magdalen-college-oxford-32', NULL, 'College of University of Oxford', '2024-03-20 22:13:41.676563+00', 'University College', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(33, 'British and Foreign Bible Society', 'british-and-foreign-bible-society-33', NULL, 'Founded to ensure circulation of bible by William Wilberforce and Thomas Charles', '2024-03-21 09:45:50.47771+00', 'Charitable society', NULL, '1804-01-01', NULL, true, 'Gillian Lamb'),
	(34, 'Evangelical Alliance', 'evangelical-alliance-34', NULL, 'Society founded to promote evangelical beliefs', '2024-03-21 09:46:28.120994+00', 'Campaign group', NULL, '1846-01-01', NULL, true, 'Gillian Lamb'),
	(35, 'Society for the Suppression of the Opium Trade', 'society-for-the-suppression-of-the-opium-trade-35', NULL, 'Lobbying group to promote abolition of trade.', '2024-03-21 09:47:14.082755+00', 'Campaign group', NULL, '1874-01-01', '1917-01-01', true, 'Gillian Lamb'),
	(39, 'King''s College London', 'kings-college-london-39', NULL, 'King''s was established by royal charter in 1829 under the patronage of King George IV and the Duke of Wellington. In 1836, King''s became one of the two founding colleges of the University of London. It is one of the oldest university-level institutions in England. In the late 20th century, King''s grew through a series of mergers, including with Queen Elizabeth College and Chelsea College of Science and Technology (in 1985), the Institute of Psychiatry (in 1997), the United Medical and Dental Schools of Guy''s and St Thomas'' Hospitals and the Florence Nightingale School of Nursing and Midwifery (in 1998', '2024-03-21 10:56:28.538282+00', 'University', NULL, '1829-01-01', NULL, true, 'Gillian Lamb'),
	(25, 'Greenwich Hospital', 'greenwich-hospital-25', NULL, 'Permanent home for retired sailors', '2024-03-20 21:37:21.273769+00', 'Hospital', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(2, 'St Bartholomews Hospital', 'st-bartholomews-hospital-2', NULL, NULL, '2024-02-23 10:19:12.972002+00', 'Hospital', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(21, 'Royal College of Surgeons', 'royal-college-of-surgeons-21', NULL, 'Independent professional body', '2024-03-05 23:30:04.872443+00', 'Political group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(23, 'Board of Control of Indian Affairs', 'board-of-control-of-indian-affairs-23', NULL, 'Arm of control of the government responsible for managing the government''s interest in British India. Forerunner of the India Office.', '2024-03-20 21:26:27.092443+00', 'Political group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(24, 'Athaneum', 'athaneum-24', NULL, 'Non partisan club for professionals from diverse fields founded in 1824.', '2024-03-20 21:34:55.412633+00', 'Social club or group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(20, 'Royal Society Dining Club', 'royal-society-dining-club-20', NULL, NULL, '2024-03-05 23:24:33.185491+00', 'Social club or group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(28, 'Diletantte Society', 'diletantte-society-28', NULL, 'British society founded by group of noblemen. 60 members elected by secret ballot', '2024-03-20 21:51:24.928129+00', 'Social club or group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(30, 'Grillons Club', 'grillons-club-30', NULL, 'London''s most famous dining club. ', '2024-03-20 22:02:49.735624+00', 'Social club or group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(29, 'Society of Antiquaries', 'society-of-antiquaries-29', NULL, 'learned society of historians and archaeologists. Registered charity', '2024-03-20 21:55:04.644708+00', 'Social club or group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(43, 'The Graphic', 'the-graphic-43', NULL, 'The Graphic was a British weekly illustrated newspaper, first published on 4 December 1869 by William Luson Thomas''s company Illustrated Newspapers Ltd.  It was set up as a rival to the popular Illustrated London News. The influence of The Graphic within the art world was immense; its many admirers included Vincent van Gogh and Hubert von Herkomer. The Graphic was published on a Saturday and its original cover price was sixpence, while the Illustrated London News was fivepence.[2] In its first year, it described itself to advertisers as "a superior illustrated weekly newspaper, containing twenty-four pages imperial folio, printed on fine toned paper of beautiful quality, made expressly for the purpose and admirably adapted for the display of engravings".

In addition to its home market the paper had subscribers all around the British Empire and North America. The Graphic covered home news and news from around the Empire, and devoted much attention to literature, arts, sciences, the fashionable world, sport, music and opera. Royal occasions and national celebrations and ceremonials were also given prominent coverage.', '2024-03-30 07:55:35.262069+00', NULL, NULL, '1868-01-01', '1932-01-01', true, 'Gillian Lamb'),
	(44, 'National Society for Propagation of the Gospel', 'national-society-for-propagation-of-the-gospel-44', NULL, 'Founded under royal English charter. Linked tot he society for promoting christian knowledge. According to the terms of its charter the SPG was incorporated for the purposes of (1) "providing a maintenance for an orthodox Clergy in the plantations, colonies, and factories of Great Britain beyond the seas, for the instruction of the King''s loving subjects in the Christian religion"; (2) "making such other provisions as may be necessary for the propagation of the Gospel in those parts;" and (3) "receiving, managing, and disposing of the charity of His Majesty''s subjects for those purposes." Active in 18th century predominantly in North America bringing the gospel to enslaved black people as well as free white. Had to leave America after revolution and shifted focus to Canada and then after 1823 to Asia and Africa. Tended to develop community activities. Greatest mission successes were India where it is still prominent. ', '2024-03-31 07:12:30.417985+00', 'Campaign group', NULL, '1701-01-01', NULL, true, 'Gillian Lamb'),
	(45, 'Incorporated Church Building Society', 'incorporated-church-building-society-45', NULL, 'n 1818 the Society for Promoting the Enlargement and Building of Churches and Chapels was founded to provide funds for the building and enlargement of Anglican churches throughout England and Wales. It succeeded the system of church briefs by which churches were sometimes repaired. The Society was incorporated by Act of Parliament in 1828 as The Incorporated Society for Promoting the Enlargement, Building and Repairing of Churches and Chapels. Later in the century it adopted the title by which it is still known, The Incorporated Church Building Society (ICBS). Since 1982 the Society''s administration has been transferred to the Historic Churches Preservation Trust (subsequently the National Churches Trust).', '2024-03-31 07:19:30.051281+00', 'Political group', NULL, '1818-01-01', NULL, true, 'Gillian Lamb'),
	(46, 'Society for the Diffusion of Useful Knowledge', 'society-for-the-diffusion-of-useful-knowledge-46', NULL, ' It was a pioneer of cheap educational publishing in the 1820s. Its treatises discussed new scientific and technological subjects. The extension of education to all classes and all ages was the larger aim of this group of reformers, some of whom (Brougham, Birkbeck, and Macaulay) had also started a society to encourage the spread of infant schools in 1824 (The Times, 7 June 1824). It was agreed that the Society’s publications in its Library of Useful Knowledge would avoid party politics and religion, in order to appeal to the widest audience and also to avoid controversy among its members, who represented a broad spread of religious affiliation, from non-believers to liberal Anglicans and dissenters of various kinds', '2024-03-31 21:13:05.851152+00', 'Campaign group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(47, 'King''s College London', 'kings-college-london-47', 'KCL', 'University established in London in 1829. King''s was established by royal charter in 1829 under the patronage of King George IV and the Duke of Wellington. In 1836, King''s became one of the two founding colleges of the University of London. It is one of the oldest university-level institutions in England. In the late 20th century, King''s grew through a series of mergers, including with Queen Elizabeth College and Chelsea College of Science and Technology (in 1985), the Institute of Psychiatry (in 1997), the United Medical and Dental Schools of Guy''s and St Thomas'' Hospitals and the Florence Nightingale School of Nursing and Midwifery (in 1998).', '2024-04-18 16:42:10+00', 'University', NULL, '1830-04-30', NULL, true, 'Gillian Lamb'),
	(38, 'Society for Promoting Christian Knowledge', 'society-for-promoting-christian-knowledge-38', NULL, 'UK based charity founded in 1698 working worldwide to increase awareness. Oldest Anglican mission organisation in the world. Founded by Rev. Thomas Bray.  Sought to tackle number of political and social issues. Campaigned for penal reform, provided basic education for slaves in Caribbean. Built libraries in market towns and founded many charity schools. ldest Anglican mission organisation in the world. Founded to counter growth in vice and immorality. Committed to promotion of religion and learning in plantations abroad. Closely connected to CoE. Actively campaigned for penal reform, provided for widows and children of clergy who died overseas and provided basic education for slaves in the Caribbean. Built libraries in market towns, first 200 years founded many charity schools for poor children aged 7-11. Society provided teacher training. As the British Empire grew in the 19th century, SPCK supported the planting of new churches around the world. Funds were provided for church buildings, schools, theological training colleges, and to provide chaplains for the ships taking emigrants to their new homes.From the late 1800s to the early 20th century, SPCK ran a Training College for Lay Workers on Commercial Road in Stepney Green, London.hroughout the 18th century, SPCK was by far the largest producer of Christian literature in Britain.[citation needed] The range of its output was considerable - from pamphlets aimed at specific groups such as farmers, prisoners, soldiers, seamen, servants and slave-owners, to more general works on subjects such as baptism, confirmation, Holy Communion, the Prayer Book, and private devotion. Increasingly, more substantial books were also published, both on Christian subjects and, from the 1830s, on general educational topics as well. ', '2024-03-21 10:03:02.875669+00', 'Charitable society', NULL, '1698-01-01', NULL, true, 'Gillian Lamb'),
	(9, 'Great Northern Railway', 'great-northern-railway-9', NULL, 'University college', '2024-02-29 14:18:43.285057+00', 'Business', NULL, '1846-01-01', NULL, true, 'Gillian Lamb'),
	(12, 'Hackney Phalanx of High Church Men', 'hackney-phalanx-of-high-church-men-12', NULL, 'ideological social group. a body of friends (and to some extent of relations) sharing a common theological and political outlook, forming a compact group with an agreed attitude to most of the religious and political measures of the day. We might have described it as a "pressure group" if this did not exaggerate the self-consciousness of the Phalanx. They remained to the end a body of friends, rather than an ecclesiastical or a religious party.', '2024-02-29 14:20:49.00258+00', 'Campaign group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(8, 'East India Company', 'east-india-company-8', NULL, 'English, and later British, joint-stock company founded in 1600 and dissolved in 1874. It was formed to trade in the Indian Ocean region. It eventually came to control large parts of the Indian subcontinent. At its peak, the company was the largest corporation in the world by various measures and had its own armed forces in the form of the company''s three presidency armies, totalling about 260,000 soldiers, twice the size of the British army at the time. Accounted for c. 50% of world''s trade in 1770s and began British imperial presence in India. Came to suffer financial difficulties.  ', '2024-02-29 14:15:37.225339+00', 'Business', NULL, '1600-01-01', '1874-01-01', true, 'Gillian Lamb'),
	(3, 'Society of Psychorolutes', 'society-of-psychorolutes-3', NULL, 'Society for those bathing outdoors between November and March', '2024-02-29 14:11:04.140965+00', 'Social club or group', NULL, '1828-01-01', NULL, true, 'Gillian Lamb');


--
-- Data for Name: donation_agent_organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: ethnicity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."ethnicity" ("id", "name", "created_at", "added_by") VALUES
	(1, 'White', '2024-02-16 15:41:38.025487+00', NULL);


--
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."gender" ("id", "name", "created_at", "added_by") VALUES
	(2, 'Assigned male at birth', '2024-02-16 11:52:45.828403+00', NULL),
	(3, 'Identified as gender queer', '2024-02-16 11:52:45.828403+00', NULL),
	(1, 'Assigned female at birth', '2024-02-16 11:52:45.828403+00', NULL);


--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."language" ("id", "name", "created_at", "added_by") VALUES
	(189, 'Creoles and pidgins, English based', '2024-02-16 12:06:19.961591+00', NULL),
	(190, 'Creoles and pidgins, French-based', '2024-02-16 12:06:19.961591+00', NULL),
	(191, 'Creoles and pidgins, Portuguese-based', '2024-02-16 12:06:19.961591+00', NULL),
	(192, 'Ndebele, North; North Ndebele', '2024-02-16 12:06:19.961591+00', NULL),
	(193, 'Ndebele, South; South Ndebele', '2024-02-16 12:06:19.961591+00', NULL),
	(194, 'Abkhazian', '2024-02-16 12:06:19.961591+00', NULL),
	(195, 'Achinese', '2024-02-16 12:06:19.961591+00', NULL),
	(196, 'Acoli', '2024-02-16 12:06:19.961591+00', NULL),
	(197, 'Adangme', '2024-02-16 12:06:19.961591+00', NULL),
	(198, 'Adyghe', '2024-02-16 12:06:19.961591+00', NULL),
	(199, 'Afar', '2024-02-16 12:06:19.961591+00', NULL),
	(200, 'Afrihili', '2024-02-16 12:06:19.961591+00', NULL),
	(201, 'Afrikaans', '2024-02-16 12:06:19.961591+00', NULL),
	(202, 'Afro-Asiatic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(203, 'Ainu', '2024-02-16 12:06:19.961591+00', NULL),
	(204, 'Akan', '2024-02-16 12:06:19.961591+00', NULL),
	(205, 'Akkadian', '2024-02-16 12:06:19.961591+00', NULL),
	(206, 'Albanian', '2024-02-16 12:06:19.961591+00', NULL),
	(207, 'Aleut', '2024-02-16 12:06:19.961591+00', NULL),
	(208, 'Algonquian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(209, 'Altaic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(210, 'Amharic', '2024-02-16 12:06:19.961591+00', NULL),
	(211, 'Angika', '2024-02-16 12:06:19.961591+00', NULL),
	(212, 'Apache languages', '2024-02-16 12:06:19.961591+00', NULL),
	(213, 'Arabic', '2024-02-16 12:06:19.961591+00', NULL),
	(214, 'Aragonese', '2024-02-16 12:06:19.961591+00', NULL),
	(215, 'Arapaho', '2024-02-16 12:06:19.961591+00', NULL),
	(216, 'Arawak', '2024-02-16 12:06:19.961591+00', NULL),
	(217, 'Armenian', '2024-02-16 12:06:19.961591+00', NULL),
	(218, 'Assamese', '2024-02-16 12:06:19.961591+00', NULL),
	(219, 'Athapascan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(220, 'Australian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(221, 'Avaric', '2024-02-16 12:06:19.961591+00', NULL),
	(222, 'Avestan', '2024-02-16 12:06:19.961591+00', NULL),
	(223, 'Awadhi', '2024-02-16 12:06:19.961591+00', NULL),
	(224, 'Aymara', '2024-02-16 12:06:19.961591+00', NULL),
	(225, 'Azerbaijani', '2024-02-16 12:06:19.961591+00', NULL),
	(226, 'Balinese', '2024-02-16 12:06:19.961591+00', NULL),
	(227, 'Baltic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(228, 'Baluchi', '2024-02-16 12:06:19.961591+00', NULL),
	(229, 'Bambara', '2024-02-16 12:06:19.961591+00', NULL),
	(230, 'Bamileke languages', '2024-02-16 12:06:19.961591+00', NULL),
	(231, 'Banda languages', '2024-02-16 12:06:19.961591+00', NULL),
	(232, 'Bantu languages', '2024-02-16 12:06:19.961591+00', NULL),
	(233, 'Basa', '2024-02-16 12:06:19.961591+00', NULL),
	(234, 'Bashkir', '2024-02-16 12:06:19.961591+00', NULL),
	(235, 'Basque', '2024-02-16 12:06:19.961591+00', NULL),
	(236, 'Batak languages', '2024-02-16 12:06:19.961591+00', NULL),
	(237, 'Beja', '2024-02-16 12:06:19.961591+00', NULL),
	(238, 'Belarusian', '2024-02-16 12:06:19.961591+00', NULL),
	(239, 'Bemba', '2024-02-16 12:06:19.961591+00', NULL),
	(240, 'Bengali', '2024-02-16 12:06:19.961591+00', NULL),
	(241, 'Berber languages', '2024-02-16 12:06:19.961591+00', NULL),
	(242, 'Bhojpuri', '2024-02-16 12:06:19.961591+00', NULL),
	(243, 'Bihari languages', '2024-02-16 12:06:19.961591+00', NULL),
	(244, 'Bikol', '2024-02-16 12:06:19.961591+00', NULL),
	(245, 'Bini; Edo', '2024-02-16 12:06:19.961591+00', NULL),
	(246, 'Bislama', '2024-02-16 12:06:19.961591+00', NULL),
	(247, 'Blin', '2024-02-16 12:06:19.961591+00', NULL),
	(248, 'Bosnian', '2024-02-16 12:06:19.961591+00', NULL),
	(249, 'Braj', '2024-02-16 12:06:19.961591+00', NULL),
	(250, 'Breton', '2024-02-16 12:06:19.961591+00', NULL),
	(251, 'Buginese', '2024-02-16 12:06:19.961591+00', NULL),
	(252, 'Bulgarian', '2024-02-16 12:06:19.961591+00', NULL),
	(253, 'Buriat', '2024-02-16 12:06:19.961591+00', NULL),
	(254, 'Burmese', '2024-02-16 12:06:19.961591+00', NULL),
	(255, 'Caddo', '2024-02-16 12:06:19.961591+00', NULL),
	(256, 'Catalan', '2024-02-16 12:06:19.961591+00', NULL),
	(257, 'Caucasian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(258, 'Cebuano', '2024-02-16 12:06:19.961591+00', NULL),
	(259, 'Celtic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(260, 'Central American Indian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(261, 'Central Khmer', '2024-02-16 12:06:19.961591+00', NULL),
	(262, 'Chagatai', '2024-02-16 12:06:19.961591+00', NULL),
	(263, 'Chamic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(264, 'Chamorro', '2024-02-16 12:06:19.961591+00', NULL),
	(265, 'Chechen', '2024-02-16 12:06:19.961591+00', NULL),
	(266, 'Cherokee', '2024-02-16 12:06:19.961591+00', NULL),
	(267, 'Cheyenne', '2024-02-16 12:06:19.961591+00', NULL),
	(268, 'Chibcha', '2024-02-16 12:06:19.961591+00', NULL),
	(269, 'Chichewa', '2024-02-16 12:06:19.961591+00', NULL),
	(270, 'Chinese', '2024-02-16 12:06:19.961591+00', NULL),
	(271, 'Chinook jargon', '2024-02-16 12:06:19.961591+00', NULL),
	(272, 'Chipewyan', '2024-02-16 12:06:19.961591+00', NULL),
	(273, 'Choctaw', '2024-02-16 12:06:19.961591+00', NULL),
	(274, 'Chuukese', '2024-02-16 12:06:19.961591+00', NULL),
	(275, 'Chuvash', '2024-02-16 12:06:19.961591+00', NULL),
	(276, 'Coptic', '2024-02-16 12:06:19.961591+00', NULL),
	(277, 'Cornish', '2024-02-16 12:06:19.961591+00', NULL),
	(278, 'Corsican', '2024-02-16 12:06:19.961591+00', NULL),
	(279, 'Cree', '2024-02-16 12:06:19.961591+00', NULL),
	(280, 'Creek', '2024-02-16 12:06:19.961591+00', NULL),
	(281, 'Creoles and pidgins', '2024-02-16 12:06:19.961591+00', NULL),
	(282, 'Crimean Tatar', '2024-02-16 12:06:19.961591+00', NULL),
	(283, 'Croatian', '2024-02-16 12:06:19.961591+00', NULL),
	(284, 'Cushitic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(285, 'Czech', '2024-02-16 12:06:19.961591+00', NULL),
	(286, 'Dakota', '2024-02-16 12:06:19.961591+00', NULL),
	(287, 'Danish', '2024-02-16 12:06:19.961591+00', NULL),
	(288, 'Dargwa', '2024-02-16 12:06:19.961591+00', NULL),
	(289, 'Delaware', '2024-02-16 12:06:19.961591+00', NULL),
	(290, 'Dinka', '2024-02-16 12:06:19.961591+00', NULL),
	(291, 'Dogri', '2024-02-16 12:06:19.961591+00', NULL),
	(292, 'Dogrib', '2024-02-16 12:06:19.961591+00', NULL),
	(293, 'Dravidian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(294, 'Duala', '2024-02-16 12:06:19.961591+00', NULL),
	(295, 'Dutch', '2024-02-16 12:06:19.961591+00', NULL),
	(296, 'Dyula', '2024-02-16 12:06:19.961591+00', NULL),
	(297, 'Dzongkha', '2024-02-16 12:06:19.961591+00', NULL),
	(298, 'Eastern Frisian', '2024-02-16 12:06:19.961591+00', NULL),
	(299, 'Efik', '2024-02-16 12:06:19.961591+00', NULL),
	(300, 'Ekajuk', '2024-02-16 12:06:19.961591+00', NULL),
	(301, 'Elamite', '2024-02-16 12:06:19.961591+00', NULL),
	(302, 'English', '2024-02-16 12:06:19.961591+00', NULL),
	(303, 'Erzya', '2024-02-16 12:06:19.961591+00', NULL),
	(304, 'Esperanto', '2024-02-16 12:06:19.961591+00', NULL),
	(305, 'Estonian', '2024-02-16 12:06:19.961591+00', NULL),
	(306, 'Ewe', '2024-02-16 12:06:19.961591+00', NULL),
	(307, 'Ewondo', '2024-02-16 12:06:19.961591+00', NULL),
	(308, 'Fang', '2024-02-16 12:06:19.961591+00', NULL),
	(309, 'Fanti', '2024-02-16 12:06:19.961591+00', NULL),
	(310, 'Faroese', '2024-02-16 12:06:19.961591+00', NULL),
	(311, 'Fijian', '2024-02-16 12:06:19.961591+00', NULL),
	(312, 'Filipino', '2024-02-16 12:06:19.961591+00', NULL),
	(313, 'Finnish', '2024-02-16 12:06:19.961591+00', NULL),
	(314, 'Finno-Ugrian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(315, 'Fon', '2024-02-16 12:06:19.961591+00', NULL),
	(316, 'French', '2024-02-16 12:06:19.961591+00', NULL),
	(317, 'Friulian', '2024-02-16 12:06:19.961591+00', NULL),
	(318, 'Fulah', '2024-02-16 12:06:19.961591+00', NULL),
	(319, 'Ga', '2024-02-16 12:06:19.961591+00', NULL),
	(320, 'Gaelic', '2024-02-16 12:06:19.961591+00', NULL),
	(321, 'Galibi Carib', '2024-02-16 12:06:19.961591+00', NULL),
	(322, 'Galician', '2024-02-16 12:06:19.961591+00', NULL),
	(323, 'Ganda', '2024-02-16 12:06:19.961591+00', NULL),
	(324, 'Gayo', '2024-02-16 12:06:19.961591+00', NULL),
	(325, 'Gbaya', '2024-02-16 12:06:19.961591+00', NULL),
	(326, 'Geez', '2024-02-16 12:06:19.961591+00', NULL),
	(327, 'Georgian', '2024-02-16 12:06:19.961591+00', NULL),
	(328, 'German', '2024-02-16 12:06:19.961591+00', NULL),
	(329, 'Gilbertese', '2024-02-16 12:06:19.961591+00', NULL),
	(330, 'Gondi', '2024-02-16 12:06:19.961591+00', NULL),
	(331, 'Gorontalo', '2024-02-16 12:06:19.961591+00', NULL),
	(332, 'Gothic', '2024-02-16 12:06:19.961591+00', NULL),
	(333, 'Grebo', '2024-02-16 12:06:19.961591+00', NULL),
	(334, 'Greek', '2024-02-16 12:06:19.961591+00', NULL),
	(335, 'Guarani', '2024-02-16 12:06:19.961591+00', NULL),
	(336, 'Gujarati', '2024-02-16 12:06:19.961591+00', NULL),
	(337, 'Gwich''in', '2024-02-16 12:06:19.961591+00', NULL),
	(338, 'Haida', '2024-02-16 12:06:19.961591+00', NULL),
	(339, 'Haitian', '2024-02-16 12:06:19.961591+00', NULL),
	(340, 'Hausa', '2024-02-16 12:06:19.961591+00', NULL),
	(341, 'Hawaiian', '2024-02-16 12:06:19.961591+00', NULL),
	(342, 'Hebrew', '2024-02-16 12:06:19.961591+00', NULL),
	(343, 'Herero', '2024-02-16 12:06:19.961591+00', NULL),
	(344, 'Hiligaynon', '2024-02-16 12:06:19.961591+00', NULL),
	(345, 'Himachali languages', '2024-02-16 12:06:19.961591+00', NULL),
	(346, 'Hindi', '2024-02-16 12:06:19.961591+00', NULL),
	(347, 'Hiri Motu', '2024-02-16 12:06:19.961591+00', NULL),
	(348, 'Hittite', '2024-02-16 12:06:19.961591+00', NULL),
	(349, 'Hmong', '2024-02-16 12:06:19.961591+00', NULL),
	(350, 'Hungarian', '2024-02-16 12:06:19.961591+00', NULL),
	(351, 'Hupa', '2024-02-16 12:06:19.961591+00', NULL),
	(352, 'Iban', '2024-02-16 12:06:19.961591+00', NULL),
	(353, 'Icelandic', '2024-02-16 12:06:19.961591+00', NULL),
	(354, 'Ido', '2024-02-16 12:06:19.961591+00', NULL),
	(355, 'Igbo', '2024-02-16 12:06:19.961591+00', NULL),
	(356, 'Ijo languages', '2024-02-16 12:06:19.961591+00', NULL),
	(357, 'Iloko', '2024-02-16 12:06:19.961591+00', NULL),
	(358, 'Inari Sami', '2024-02-16 12:06:19.961591+00', NULL),
	(359, 'Indic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(360, 'Indonesian', '2024-02-16 12:06:19.961591+00', NULL),
	(361, 'Ingush', '2024-02-16 12:06:19.961591+00', NULL),
	(362, 'Inuktitut', '2024-02-16 12:06:19.961591+00', NULL),
	(363, 'Inupiaq', '2024-02-16 12:06:19.961591+00', NULL),
	(364, 'Iranian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(365, 'Irish', '2024-02-16 12:06:19.961591+00', NULL),
	(366, 'Iroquoian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(367, 'Italian', '2024-02-16 12:06:19.961591+00', NULL),
	(368, 'Japanese', '2024-02-16 12:06:19.961591+00', NULL),
	(369, 'Javanese', '2024-02-16 12:06:19.961591+00', NULL),
	(370, 'Jingpho', '2024-02-16 12:06:19.961591+00', NULL),
	(371, 'Kabardian', '2024-02-16 12:06:19.961591+00', NULL),
	(372, 'Kabyle', '2024-02-16 12:06:19.961591+00', NULL),
	(373, 'Kalaallisut', '2024-02-16 12:06:19.961591+00', NULL),
	(374, 'Kalmyk', '2024-02-16 12:06:19.961591+00', NULL),
	(375, 'Kamba', '2024-02-16 12:06:19.961591+00', NULL),
	(376, 'Kannada', '2024-02-16 12:06:19.961591+00', NULL),
	(377, 'Kanuri', '2024-02-16 12:06:19.961591+00', NULL),
	(378, 'Kara-Kalpak', '2024-02-16 12:06:19.961591+00', NULL),
	(379, 'Karachay-Balkar', '2024-02-16 12:06:19.961591+00', NULL),
	(380, 'Karelian', '2024-02-16 12:06:19.961591+00', NULL),
	(381, 'Karen languages', '2024-02-16 12:06:19.961591+00', NULL),
	(382, 'Kashmiri', '2024-02-16 12:06:19.961591+00', NULL),
	(383, 'Kashubian', '2024-02-16 12:06:19.961591+00', NULL),
	(384, 'Kawi', '2024-02-16 12:06:19.961591+00', NULL),
	(385, 'Kazakh', '2024-02-16 12:06:19.961591+00', NULL),
	(386, 'Khasi', '2024-02-16 12:06:19.961591+00', NULL),
	(387, 'Khoisan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(388, 'Khotanese', '2024-02-16 12:06:19.961591+00', NULL),
	(389, 'Kikuyu', '2024-02-16 12:06:19.961591+00', NULL),
	(390, 'Kimbundu', '2024-02-16 12:06:19.961591+00', NULL),
	(391, 'Kinyarwanda', '2024-02-16 12:06:19.961591+00', NULL),
	(392, 'Kirghiz', '2024-02-16 12:06:19.961591+00', NULL),
	(393, 'Komi', '2024-02-16 12:06:19.961591+00', NULL),
	(394, 'Kongo', '2024-02-16 12:06:19.961591+00', NULL),
	(395, 'Konkani', '2024-02-16 12:06:19.961591+00', NULL),
	(396, 'Korean', '2024-02-16 12:06:19.961591+00', NULL),
	(397, 'Kosraean', '2024-02-16 12:06:19.961591+00', NULL),
	(398, 'Kpelle', '2024-02-16 12:06:19.961591+00', NULL),
	(399, 'Kru languages', '2024-02-16 12:06:19.961591+00', NULL),
	(400, 'Kuanyama', '2024-02-16 12:06:19.961591+00', NULL),
	(401, 'Kumyk', '2024-02-16 12:06:19.961591+00', NULL),
	(402, 'Kurdish', '2024-02-16 12:06:19.961591+00', NULL),
	(403, 'Kurukh', '2024-02-16 12:06:19.961591+00', NULL),
	(404, 'Kutenai', '2024-02-16 12:06:19.961591+00', NULL),
	(405, 'Lahnda', '2024-02-16 12:06:19.961591+00', NULL),
	(406, 'Lamba', '2024-02-16 12:06:19.961591+00', NULL),
	(407, 'Land Dayak languages', '2024-02-16 12:06:19.961591+00', NULL),
	(408, 'Lao', '2024-02-16 12:06:19.961591+00', NULL),
	(409, 'Latin', '2024-02-16 12:06:19.961591+00', NULL),
	(410, 'Latvian', '2024-02-16 12:06:19.961591+00', NULL),
	(411, 'Lezghian', '2024-02-16 12:06:19.961591+00', NULL),
	(412, 'Limburgan', '2024-02-16 12:06:19.961591+00', NULL),
	(413, 'Lingala', '2024-02-16 12:06:19.961591+00', NULL),
	(414, 'Lithuanian', '2024-02-16 12:06:19.961591+00', NULL),
	(415, 'Lojban', '2024-02-16 12:06:19.961591+00', NULL),
	(416, 'Lower Sorbian', '2024-02-16 12:06:19.961591+00', NULL),
	(417, 'Lozi', '2024-02-16 12:06:19.961591+00', NULL),
	(418, 'Luba-Kasai', '2024-02-16 12:06:19.961591+00', NULL),
	(419, 'Luba-Katanga', '2024-02-16 12:06:19.961591+00', NULL),
	(420, 'Luiseno', '2024-02-16 12:06:19.961591+00', NULL),
	(421, 'Lule Sami', '2024-02-16 12:06:19.961591+00', NULL),
	(422, 'Lunda', '2024-02-16 12:06:19.961591+00', NULL),
	(423, 'Luo (Kenya and Tanzania)', '2024-02-16 12:06:19.961591+00', NULL),
	(424, 'Lushai', '2024-02-16 12:06:19.961591+00', NULL),
	(425, 'Luxembourgish', '2024-02-16 12:06:19.961591+00', NULL),
	(426, 'Macedonian', '2024-02-16 12:06:19.961591+00', NULL),
	(427, 'Madurese', '2024-02-16 12:06:19.961591+00', NULL),
	(428, 'Magahi', '2024-02-16 12:06:19.961591+00', NULL),
	(429, 'Maithili', '2024-02-16 12:06:19.961591+00', NULL),
	(430, 'Makasar', '2024-02-16 12:06:19.961591+00', NULL),
	(431, 'Malagasy', '2024-02-16 12:06:19.961591+00', NULL),
	(432, 'Malay', '2024-02-16 12:06:19.961591+00', NULL),
	(433, 'Malayalam', '2024-02-16 12:06:19.961591+00', NULL),
	(434, 'Maldivian', '2024-02-16 12:06:19.961591+00', NULL),
	(435, 'Maltese', '2024-02-16 12:06:19.961591+00', NULL),
	(436, 'Manchu', '2024-02-16 12:06:19.961591+00', NULL),
	(437, 'Mandar', '2024-02-16 12:06:19.961591+00', NULL),
	(438, 'Mandingo', '2024-02-16 12:06:19.961591+00', NULL),
	(439, 'Manipuri', '2024-02-16 12:06:19.961591+00', NULL),
	(440, 'Manobo languages', '2024-02-16 12:06:19.961591+00', NULL),
	(441, 'Manx', '2024-02-16 12:06:19.961591+00', NULL),
	(442, 'Maori', '2024-02-16 12:06:19.961591+00', NULL),
	(443, 'Mapuche', '2024-02-16 12:06:19.961591+00', NULL),
	(444, 'Marathi', '2024-02-16 12:06:19.961591+00', NULL),
	(445, 'Mari', '2024-02-16 12:06:19.961591+00', NULL),
	(446, 'Marshallese', '2024-02-16 12:06:19.961591+00', NULL),
	(447, 'Marwari', '2024-02-16 12:06:19.961591+00', NULL),
	(448, 'Masai', '2024-02-16 12:06:19.961591+00', NULL),
	(449, 'Mayan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(450, 'Mende', '2024-02-16 12:06:19.961591+00', NULL),
	(451, 'Mi''kmaq', '2024-02-16 12:06:19.961591+00', NULL),
	(452, 'Minangkabau', '2024-02-16 12:06:19.961591+00', NULL),
	(453, 'Mirandese', '2024-02-16 12:06:19.961591+00', NULL),
	(454, 'Mohawk', '2024-02-16 12:06:19.961591+00', NULL),
	(455, 'Moksha', '2024-02-16 12:06:19.961591+00', NULL),
	(456, 'Mon-Khmer languages', '2024-02-16 12:06:19.961591+00', NULL),
	(457, 'Mongo', '2024-02-16 12:06:19.961591+00', NULL),
	(458, 'Mongolian', '2024-02-16 12:06:19.961591+00', NULL),
	(459, 'Montenegrin', '2024-02-16 12:06:19.961591+00', NULL),
	(460, 'Mossi', '2024-02-16 12:06:19.961591+00', NULL),
	(461, 'Munda languages', '2024-02-16 12:06:19.961591+00', NULL),
	(462, 'N''Ko', '2024-02-16 12:06:19.961591+00', NULL),
	(463, 'Nahuatl languages', '2024-02-16 12:06:19.961591+00', NULL),
	(464, 'Nauru', '2024-02-16 12:06:19.961591+00', NULL),
	(465, 'Navajo; Navaho', '2024-02-16 12:06:19.961591+00', NULL),
	(466, 'Ndonga', '2024-02-16 12:06:19.961591+00', NULL),
	(467, 'Neapolitan', '2024-02-16 12:06:19.961591+00', NULL),
	(468, 'Nepali', '2024-02-16 12:06:19.961591+00', NULL),
	(469, 'Newari', '2024-02-16 12:06:19.961591+00', NULL),
	(470, 'Nias', '2024-02-16 12:06:19.961591+00', NULL),
	(471, 'Niger-Kordofanian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(472, 'Nilo-Saharan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(473, 'Niuean', '2024-02-16 12:06:19.961591+00', NULL),
	(474, 'Nogai', '2024-02-16 12:06:19.961591+00', NULL),
	(475, 'North American Indian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(476, 'Northern Frisian', '2024-02-16 12:06:19.961591+00', NULL),
	(477, 'Northern Sami', '2024-02-16 12:06:19.961591+00', NULL),
	(478, 'Norwegian', '2024-02-16 12:06:19.961591+00', NULL),
	(479, 'Norwegian ', '2024-02-16 12:06:19.961591+00', NULL),
	(480, 'Nubian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(481, 'Nuosu', '2024-02-16 12:06:19.961591+00', NULL),
	(482, 'Nyamwezi', '2024-02-16 12:06:19.961591+00', NULL),
	(483, 'Nyankole', '2024-02-16 12:06:19.961591+00', NULL),
	(484, 'Nyoro', '2024-02-16 12:06:19.961591+00', NULL),
	(485, 'Nzima', '2024-02-16 12:06:19.961591+00', NULL),
	(486, 'Ojibwa', '2024-02-16 12:06:19.961591+00', NULL),
	(487, 'Oriya', '2024-02-16 12:06:19.961591+00', NULL),
	(488, 'Oromo', '2024-02-16 12:06:19.961591+00', NULL),
	(489, 'Osage', '2024-02-16 12:06:19.961591+00', NULL),
	(490, 'Ossetian', '2024-02-16 12:06:19.961591+00', NULL),
	(491, 'Otomian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(492, 'Pahlavi', '2024-02-16 12:06:19.961591+00', NULL),
	(493, 'Palauan', '2024-02-16 12:06:19.961591+00', NULL),
	(494, 'Pali', '2024-02-16 12:06:19.961591+00', NULL),
	(495, 'Pampanga', '2024-02-16 12:06:19.961591+00', NULL),
	(496, 'Pangasinan', '2024-02-16 12:06:19.961591+00', NULL),
	(497, 'Papiamento', '2024-02-16 12:06:19.961591+00', NULL),
	(498, 'Papuan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(499, 'Pedi', '2024-02-16 12:06:19.961591+00', NULL),
	(500, 'Persian', '2024-02-16 12:06:19.961591+00', NULL),
	(501, 'Philippine languages', '2024-02-16 12:06:19.961591+00', NULL),
	(502, 'Phoenician', '2024-02-16 12:06:19.961591+00', NULL),
	(503, 'Pohnpeian', '2024-02-16 12:06:19.961591+00', NULL),
	(504, 'Polish', '2024-02-16 12:06:19.961591+00', NULL),
	(505, 'Portuguese', '2024-02-16 12:06:19.961591+00', NULL),
	(506, 'Prakrit languages', '2024-02-16 12:06:19.961591+00', NULL),
	(507, 'Punjabi', '2024-02-16 12:06:19.961591+00', NULL),
	(508, 'Pushto', '2024-02-16 12:06:19.961591+00', NULL),
	(509, 'Quechua', '2024-02-16 12:06:19.961591+00', NULL),
	(510, 'Rajasthani', '2024-02-16 12:06:19.961591+00', NULL),
	(511, 'Rapanui', '2024-02-16 12:06:19.961591+00', NULL),
	(512, 'Rarotongan', '2024-02-16 12:06:19.961591+00', NULL),
	(513, 'Romance languages', '2024-02-16 12:06:19.961591+00', NULL),
	(514, 'Romanian', '2024-02-16 12:06:19.961591+00', NULL),
	(515, 'Romansh', '2024-02-16 12:06:19.961591+00', NULL),
	(516, 'Romany', '2024-02-16 12:06:19.961591+00', NULL),
	(517, 'Rundi', '2024-02-16 12:06:19.961591+00', NULL),
	(518, 'Russian', '2024-02-16 12:06:19.961591+00', NULL),
	(519, 'Salishan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(520, 'Samaritan Aramaic', '2024-02-16 12:06:19.961591+00', NULL),
	(521, 'Sami languages', '2024-02-16 12:06:19.961591+00', NULL),
	(522, 'Samoan', '2024-02-16 12:06:19.961591+00', NULL),
	(523, 'Sandawe', '2024-02-16 12:06:19.961591+00', NULL),
	(524, 'Sango', '2024-02-16 12:06:19.961591+00', NULL),
	(525, 'Sanskrit', '2024-02-16 12:06:19.961591+00', NULL),
	(526, 'Santali', '2024-02-16 12:06:19.961591+00', NULL),
	(527, 'Sardinian', '2024-02-16 12:06:19.961591+00', NULL),
	(528, 'Sasak', '2024-02-16 12:06:19.961591+00', NULL),
	(529, 'Scots', '2024-02-16 12:06:19.961591+00', NULL),
	(530, 'Selkup', '2024-02-16 12:06:19.961591+00', NULL),
	(531, 'Semitic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(532, 'Serbian', '2024-02-16 12:06:19.961591+00', NULL),
	(533, 'Serer', '2024-02-16 12:06:19.961591+00', NULL),
	(534, 'Shan', '2024-02-16 12:06:19.961591+00', NULL),
	(535, 'Shona', '2024-02-16 12:06:19.961591+00', NULL),
	(536, 'Sicilian', '2024-02-16 12:06:19.961591+00', NULL),
	(537, 'Sidamo', '2024-02-16 12:06:19.961591+00', NULL),
	(538, 'Siksika', '2024-02-16 12:06:19.961591+00', NULL),
	(539, 'Sindhi', '2024-02-16 12:06:19.961591+00', NULL),
	(540, 'Sinhala', '2024-02-16 12:06:19.961591+00', NULL),
	(541, 'Sino-Tibetan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(542, 'Siouan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(543, 'Skolt Sami', '2024-02-16 12:06:19.961591+00', NULL),
	(544, 'Slave (Athapascan)', '2024-02-16 12:06:19.961591+00', NULL),
	(545, 'Slavic languages', '2024-02-16 12:06:19.961591+00', NULL),
	(546, 'Slovak', '2024-02-16 12:06:19.961591+00', NULL),
	(547, 'Slovenian', '2024-02-16 12:06:19.961591+00', NULL),
	(548, 'Sogdian', '2024-02-16 12:06:19.961591+00', NULL),
	(549, 'Somali', '2024-02-16 12:06:19.961591+00', NULL),
	(550, 'Songhai languages', '2024-02-16 12:06:19.961591+00', NULL),
	(551, 'Soninke', '2024-02-16 12:06:19.961591+00', NULL),
	(552, 'Sorbian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(553, 'Sotho', '2024-02-16 12:06:19.961591+00', NULL),
	(554, 'South American Indian languages', '2024-02-16 12:06:19.961591+00', NULL),
	(555, 'Southern Altai', '2024-02-16 12:06:19.961591+00', NULL),
	(556, 'Southern Sami', '2024-02-16 12:06:19.961591+00', NULL),
	(557, 'Spanish', '2024-02-16 12:06:19.961591+00', NULL),
	(558, 'Sranan Tongo', '2024-02-16 12:06:19.961591+00', NULL),
	(559, 'Sukuma', '2024-02-16 12:06:19.961591+00', NULL),
	(560, 'Sumerian', '2024-02-16 12:06:19.961591+00', NULL),
	(561, 'Sundanese', '2024-02-16 12:06:19.961591+00', NULL),
	(562, 'Susu', '2024-02-16 12:06:19.961591+00', NULL),
	(563, 'Swahili', '2024-02-16 12:06:19.961591+00', NULL),
	(564, 'Swati', '2024-02-16 12:06:19.961591+00', NULL),
	(565, 'Swedish', '2024-02-16 12:06:19.961591+00', NULL),
	(566, 'Swiss German', '2024-02-16 12:06:19.961591+00', NULL),
	(567, 'Syriac', '2024-02-16 12:06:19.961591+00', NULL),
	(568, 'Tagalog', '2024-02-16 12:06:19.961591+00', NULL),
	(569, 'Tahitian', '2024-02-16 12:06:19.961591+00', NULL),
	(570, 'Tai languages', '2024-02-16 12:06:19.961591+00', NULL),
	(571, 'Tajik', '2024-02-16 12:06:19.961591+00', NULL),
	(572, 'Tamashek', '2024-02-16 12:06:19.961591+00', NULL),
	(573, 'Tamil', '2024-02-16 12:06:19.961591+00', NULL),
	(574, 'Tatar', '2024-02-16 12:06:19.961591+00', NULL),
	(575, 'Telugu', '2024-02-16 12:06:19.961591+00', NULL),
	(576, 'Tereno', '2024-02-16 12:06:19.961591+00', NULL),
	(577, 'Tetum', '2024-02-16 12:06:19.961591+00', NULL),
	(578, 'Thai', '2024-02-16 12:06:19.961591+00', NULL),
	(579, 'Tibetan', '2024-02-16 12:06:19.961591+00', NULL),
	(580, 'Tigre', '2024-02-16 12:06:19.961591+00', NULL),
	(581, 'Tigrinya', '2024-02-16 12:06:19.961591+00', NULL),
	(582, 'Timne', '2024-02-16 12:06:19.961591+00', NULL),
	(583, 'Tiv', '2024-02-16 12:06:19.961591+00', NULL),
	(584, 'Tlingit', '2024-02-16 12:06:19.961591+00', NULL),
	(585, 'Tok Pisin', '2024-02-16 12:06:19.961591+00', NULL),
	(586, 'Tokelau', '2024-02-16 12:06:19.961591+00', NULL),
	(587, 'Tonga ', '2024-02-16 12:06:19.961591+00', NULL),
	(588, 'Tsimshian', '2024-02-16 12:06:19.961591+00', NULL),
	(589, 'Tsonga', '2024-02-16 12:06:19.961591+00', NULL),
	(590, 'Tswana', '2024-02-16 12:06:19.961591+00', NULL),
	(591, 'Tumbuka', '2024-02-16 12:06:19.961591+00', NULL),
	(592, 'Tupi languages', '2024-02-16 12:06:19.961591+00', NULL),
	(593, 'Turkish', '2024-02-16 12:06:19.961591+00', NULL),
	(594, 'Turkmen', '2024-02-16 12:06:19.961591+00', NULL),
	(595, 'Tuvalu', '2024-02-16 12:06:19.961591+00', NULL),
	(596, 'Tuvinian', '2024-02-16 12:06:19.961591+00', NULL),
	(597, 'Twi', '2024-02-16 12:06:19.961591+00', NULL),
	(598, 'Udmurt', '2024-02-16 12:06:19.961591+00', NULL),
	(599, 'Ugaritic', '2024-02-16 12:06:19.961591+00', NULL),
	(600, 'Uighur', '2024-02-16 12:06:19.961591+00', NULL),
	(601, 'Ukrainian', '2024-02-16 12:06:19.961591+00', NULL),
	(602, 'Umbundu', '2024-02-16 12:06:19.961591+00', NULL),
	(603, 'Unknown', '2024-02-16 12:06:19.961591+00', NULL),
	(604, 'Upper Sorbian', '2024-02-16 12:06:19.961591+00', NULL),
	(605, 'Urdu', '2024-02-16 12:06:19.961591+00', NULL),
	(606, 'Uzbek', '2024-02-16 12:06:19.961591+00', NULL),
	(607, 'Vai', '2024-02-16 12:06:19.961591+00', NULL),
	(608, 'Venda', '2024-02-16 12:06:19.961591+00', NULL),
	(609, 'Vietnamese', '2024-02-16 12:06:19.961591+00', NULL),
	(610, 'Volapük', '2024-02-16 12:06:19.961591+00', NULL),
	(611, 'Votic', '2024-02-16 12:06:19.961591+00', NULL),
	(612, 'Wakashan languages', '2024-02-16 12:06:19.961591+00', NULL),
	(613, 'Walloon', '2024-02-16 12:06:19.961591+00', NULL),
	(614, 'Waray', '2024-02-16 12:06:19.961591+00', NULL),
	(615, 'Washo', '2024-02-16 12:06:19.961591+00', NULL),
	(616, 'Welsh', '2024-02-16 12:06:19.961591+00', NULL),
	(617, 'Western Frisian', '2024-02-16 12:06:19.961591+00', NULL),
	(618, 'Wolaitta', '2024-02-16 12:06:19.961591+00', NULL),
	(619, 'Wolof', '2024-02-16 12:06:19.961591+00', NULL),
	(620, 'Xhosa', '2024-02-16 12:06:19.961591+00', NULL),
	(621, 'Yakut', '2024-02-16 12:06:19.961591+00', NULL),
	(622, 'Yao', '2024-02-16 12:06:19.961591+00', NULL),
	(623, 'Yapese', '2024-02-16 12:06:19.961591+00', NULL),
	(624, 'Yiddish', '2024-02-16 12:06:19.961591+00', NULL),
	(625, 'Yoruba', '2024-02-16 12:06:19.961591+00', NULL),
	(626, 'Yupik languages', '2024-02-16 12:06:19.961591+00', NULL),
	(627, 'Zande languages', '2024-02-16 12:06:19.961591+00', NULL),
	(628, 'Zapotec', '2024-02-16 12:06:19.961591+00', NULL),
	(629, 'Zaza', '2024-02-16 12:06:19.961591+00', NULL),
	(630, 'Zenaga', '2024-02-16 12:06:19.961591+00', NULL),
	(631, 'Zhuang', '2024-02-16 12:06:19.961591+00', NULL),
	(632, 'Zulu', '2024-02-16 12:06:19.961591+00', NULL),
	(633, 'Zuni', '2024-02-16 12:06:19.961591+00', NULL);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person" ("id", "name", "slug", "alternative_names", "description", "created_at", "gender", "language", "nationality", "ethnicity", "ethnicity_description", "nationality_description", "draft", "added_by") VALUES
	(1, 'Lord Arden', 'lord-arden-1', NULL, NULL, '2024-02-16 15:40:50.411136+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(108, 'Archdeacon Cambridge', 'archdeacon-cambridge-108', NULL, 'Part of Hackney Phalanx of High Church Men#', '2024-02-29 10:28:55.238724+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(106, 'Christopher Benson', 'christopher-benson-106', NULL, 'At Trinity College, 1809. MA in 1815, ordained spent some years as a curate at St John''s, Newcastle and St Giles. 1817 select preacher at Cambridge.', '2024-02-29 10:26:20.611192+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(117, 'John Lonsdale', 'john-lonsdale-117', NULL, 'Married the daughter of a hop merchant. Turned down the opportunity to be principal of KCL but ended up taking the post. Elected provost but declined. Consecrated 156 new churches. Personal wealth from profits  made from improvements to an estate leased on Sunak Island (Humber).', '2024-02-29 10:41:10.160362+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(113, 'Robert Henley', 'robert-henley-113', NULL, 'Eldest son of Baron Henley. 3rd class degree, called to bar. Married 3rd daughter of Sir Robert Peel. Was an evangelical, focused on reform of the English church and was preeminent among writers on church reform. Died of insanity.', '2024-02-29 10:35:26.818532+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(109, 'Astley P Cooper', 'astley-p-cooper-109', NULL, 'Father was clergyman, mother Maria Susanna Bransby, author of several novels. Age 16 sent to London and placed under Henry Cline. Became demonstrator of anatomy at St Thomas and in 1800 appointed to Guys. ', '2024-02-29 10:29:56.723253+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(115, 'Henry Hobhouse', 'henry-hobhouse-115', NULL, 'Archivist, called to bar, solicitor to HM customs, solicitor to the Treasury, sworn onto the privy council, one of the ecclesiastical commissioners for england. ', '2024-02-29 10:37:23.443327+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(111, 'George D''Oyley', 'george-doyley-111', NULL, 'Graduated as second wrangler, and was ordained in 1802. 1811 elected lecturer at Cambridge, very influential in foundation of Kings', '2024-02-29 10:33:10.16682+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(119, 'Sir John Nichol', 'sir-john-nichol-119', NULL, 'Peter Birt of Airmyn, Yorkshire and Wenvoe Castle, near Cardiff. John Luxmore, William Van Mildert, Sir Christopher Cole. Charles Franks, William Grant, Joseph Phillimore, Sir William Scott.', '2024-02-29 10:44:54.871937+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(116, 'Edward Hawke Locker', 'edward-hawke-locker-116', NULL, 'Clerk to Board of control for Indian affairs, was a prize agent.', '2024-02-29 10:39:56.321065+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(107, 'Benjamin Collins Brodie', 'benjamin-collins-brodie-107', NULL, 'Son of Peter Bellinger Brodie. Educated by father, who had been educated at Charterhouse and Worcester College, Oxford. Trained as a doctor. Learned pharmacy. Became very famous for the operation on Isambard Kingdom Brunel. Personal surgeon to the King. ', '2024-02-29 10:27:39.462692+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(112, 'Henry Halford', 'henry-halford-112', NULL, 'Brother was baron of the exchequer, another was warden of Merton college, another a diplomat, another father ofheadmaster of Llandaff. Elected physician to Middlesex Hospital. All manners, no substance.', '2024-02-29 10:34:22.529317+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(89, 'Richard Armstrong', 'richard-armstrong-89', NULL, NULL, '2024-02-20 11:49:11.130209+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(104, 'William Astell', 'william-astell-104', NULL, 'MP. Born William Thornton but took name Astell to inherit maternal grandmother''s estates. 2nd son. Partner in Godfrey Thornton and Sons and director of EIC (1800-46), Russia Company (1802), EI Dock Company (1805-1835), also chairman of Great Northern Railway Company. ', '2024-02-29 10:22:58.773379+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(121, 'William Sotheby', 'william-sotheby-121', NULL, 'Father died when he was 8 and he had guardians. Went to military academy in France, was stationed in Edinburgh where he met Mary. Sons died in service in army of EIC.  Eldest surviving son married cousin and became rear admiral.', '2024-02-29 10:48:42.14807+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(105, 'John Atkins', 'john-atkins-105', NULL, 'West India merchant of Halstead Place, Sevenoaks,elected alderman of London 1808, Sheriff of London 1810, Lord Mayor of London 1819. ', '2024-02-29 10:24:57.072512+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(114, 'Robert Harry Inglis', 'robert-harry-inglis-114', NULL, 'Father was a self made man and 3x chairman of the EIC. Evangelicalism, deep personal faith, became guardian to Henry Thornton''s 9 orphaned children, Strongly opposed Catholic relief bill. ', '2024-02-29 10:36:29.416395+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(102, 'Lancelot Shadwell', 'lancelot-shadwell-102', NULL, 'Last vice chancellor of England. Judge. Eldest son of a barrister and eminent conveyancer and his wife Elizabeth Whitmore. Educated at Eton college, St Johns College, Cambridge (1796). 1800 7th wrangler. Admitted to Lincoln''s Inn 1797, called to bar 10 Feb 1803', '2024-02-29 10:17:43.160851+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(2, 'Richard Edward Arden', 'richard-edward-arden-2', NULL, NULL, '2024-02-16 16:12:30.203633+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(103, 'Nicholas Conyngham Tyndal', 'nicholas-conyngham-tyndal-103', NULL, 'Born at Covall Hall, Chelmsford. Son of Robert Tindal, solicitor of Chelmsford and wife Sarah, daughter of John Pocock of Greenwich. 8th wrangler, gold medal. Admitted to Lincoln''s Inn 1802. Married Merelina. Daughter of captain in the navy', '2024-02-29 10:20:07+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(129, 'Henry Ellis', 'henry-ellis-129', NULL, 'English librarian and antiquarian. Worked at Oxford. Was secretary of Society of Antiquaries 1848-1853 and then director of the society from 1853-1857. Died 1869. Was founding member of the Royal Numismatic Society. ', '2024-02-29 11:17:08.566306+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(120, 'Sir George Thomas Staunton', 'sir-george-thomas-staunton-120', NULL, 'Educated entirely within the adult world, instructed in Chinese from beginning, father was a diplomat and accompanied him on his travel. Father arranged him as job as a writer in the EIC''s factory at Canton. Experienced translator. 1816 promoted to chief of Canton factory. Part of Lord Amherst''s mission. Supported Catholic emancipation. ', '2024-02-29 10:47:38.891199+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(125, 'Stephen Peter Godin', 'stephen-peter-godin-125', NULL, NULL, '2024-02-29 11:03:12.799823+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(122, 'Anthony Richardson', 'anthony-richardson-122', NULL, 'Merchant', '2024-02-29 10:52:01.085002+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(123, 'Henry Brougham', 'henry-brougham-123', NULL, 'British statesman born in Edinburgh, called to the bar. Became Lord High Chancellor. Prominent role in passing the 1832 Reform Act and 1833 Emancipation Bill. Defended Queen Caroline in her divorce. Had an affair with Harriette Wilson. Collaborated with William Wilberforce. Sir Charles Bell. Designed the brougham carriage. Married to Mary Spalding. Papers held at UCL.', '2024-02-29 10:52:57.361096+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(124, 'Lord Wensleydale', 'lord-wensleydale-124', NULL, 'Educated at Cambridge and won the Craven scholarship. Became famous judge. Married Cecilia', '2024-02-29 10:58:08.758874+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(126, 'Andrew Burnaby', 'andrew-burnaby-126', NULL, 'Archdeacon of Leicester. Travel writer. Married heiress Anne Edwyn of Baggrave Hall. Their grandson was great great grandfather of Queen Elizabeth II. ', '2024-02-29 11:04:57.337335+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(127, 'Benjamin Collins', 'benjamin-collins-127', NULL, 'Banker and printer. Editer of the Salisbury Journal. Bookseller.', '2024-02-29 11:08:03.98736+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(128, 'William Lawrence', 'william-lawrence-128', NULL, 'Brilliant scholar. During Lawrence''s surgical career he held the posts of Professor of Anatomy and Surgery, Royal College of Surgeons (1815–1822); Surgeon to the hospitals of Bridewell and Bethlem, and to the London Infirmary for Diseases of the Eye; Demonstrator of Anatomy, then Assistant Surgeon, later Surgeon, St Bartholomew''s Hospital (1824–1865). Later in his career, he was appointed Surgeon Extraordinary, later Serjeant Surgeon, to the Queen. His specialty was ophthalmology, although he practised in and lectured and wrote on all branches of surgery. Pugin and Queen Victoria were among his patients with eye problems. Radical. One of the group who launched the Lancet. One of three men who wrote on evolution. Married 1823 Louisa Senior, daughter of Mayfair haberdasher.', '2024-02-29 11:12:30.504038+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(133, 'Joshua Watson', 'joshua-watson-133', NULL, 'English wine merchant, philanthropist, a prominent member of the high church party and of several charitable organisations, who became known as "the best layman in England". Married Mary whose uncle was Charles Daubeney. Joshua from his early years was brought into contact with other members of the high-church party, of which he afterwards became the virtual leader. Among his early friends and advisers were William Stevens, the disciple and biographer of William Jones of Nayland, and founder of the Club of Nobody''s Friends, of which Joshua Watson was an original member; Jonathan Boucher, who became in 1785 vicar of Epsom, where John James Watson had his first curacy; and Sir John Richardson (afterwards a judge in the court of common pleas), who had been a college friend of John James Watson.Among other friends were Henry Handley Norris, with whom he maintained an unbroken friendship of nearly sixty years, and William Van Mildert, rector of St. Mary-le-Bow in the city (afterwards bishop of Durham). Van Mildert submitted both his Boyle Lectures and his Bampton Lectures to Watson''s revision, and was largely guided by his advice in literary matters. Nor was Van Mildert the only man of letters who showed confidence in his literary power. At the house of Van Mildert in Ely Place he met the elder Christopher Wordsworth, master of Trinity College, Cambridge, whom he joined in revising the proof-sheets of Christopher Wordsworth the younger''s work, Theophilus Anglicanus. These men were, with Archdeacon Benjamin Harrison and William Rowe Lyall, Watson''s chief friends and coadjutors. In 1814 Watson retired from business to devote himself exclusively to works of piety and charity. He never missed any meeting of the Society for Propagation of the Gospel, the Society for Promoting Christian Knowledge, or the National Society, and his counsel was highly valued. He took a deep interest in the colonial church, being an intimate friend of Bishop Middleton of Calcutta, Bishop Inglis of Nova Scotia, Bishop Broughton of Australasia, and subsequently Bishop Selwyn of New Zealand. In 1814 he was appointed, together with his friend Archdeacon Cambridge, treasurer of the Society for Promoting Christian Knowledge, which during his treasurership increased greatly its work and income. About the same time he became secretary of the relief fund for the German sufferers from the Napoleonic wars. In 1817 the Church Building Society, called at first the Church Room Society, was formed. Watson was largely instrumental in its foundation, drawing up the original resolution. This was quickly followed by a royal commission for church building issued under Lord Liverpool''s government. Watson was one of the commissioners, and found the work so engrossing that in 1822 he took a house, No. 6 Park Street, Westminster, where he lived for sixteen years, to be near the scene of his labours.He was also treasurer of the Clergy Orphan School, which was, perhaps, of all his benevolent schemes, the one nearest to his heart.', '2024-02-29 11:30:20.999889+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(137, 'Duke of Wellington', 'duke-of-wellington-137', 'Arthur Wellesley', 'British statesman, soldier, and Tory politician who was one of the leading military and political figures of 19th-century Britain, serving twice as prime minister of the United Kingdom. He is among the commanders who won and ended the Napoleonic Wars when the Seventh Coalition defeated Napoleon at the Battle of Waterloo in 1815. Bborn in the Kingdom of Ireland into an aristocratic Anglo-Irish family, belonging to the Protestant Ascendancy, beginning life as The Hon. Arthur Wesley. Wellesley was born the son of Anne, Countess of Mornington, and Garret Wesley, 1st Earl of Mornington. His father was himself the son of Richard Wesley, 1st Baron Mornington, and had a short career in politics representing the constituency of Trim in the Irish House of Commons before succeeding his father as Baron Mornington in 1758. Garret Mornington was also an accomplished composer, and in recognition of his musical and philanthropic achievements was elevated to the rank of Earl of Mornington in 1760.Wellesley''s mother was the eldest daughter of Arthur Hill-Trevor, 1st Viscount Dungannon, after whom Wellesley was named. His term as prime minister was marked by Roman Catholic Emancipation: the restoration of most civil rights to Roman Catholics in the United Kingdom of Great Britain and Ireland. The change was prompted by the landslide by-election win of Daniel O''Connell, a Roman Catholic Irish proponent of emancipation, who was elected despite not being legally allowed to sit in Parliament. In the House of Lords, facing stiff opposition, Wellington spoke for Catholic Emancipation, and according to some sources, gave one of the best speeches of his career. Wellington was born in Ireland and so had some understanding of the grievances of the Roman Catholic majority there; as Chief Secretary, he had given an undertaking that the remaining Penal Laws would only be enforced as "mildly" as possible. In 1811 Catholic soldiers were given freedom of worship and 18 years later the Roman Catholic Relief Act 1829 was passed with a majority of 105. Many Tories voted against the Act, and it passed only with the help of the Whigs. Wellington had threatened to resign as prime minister if King George IV did not give Royal Assent. The nickname "Iron Duke" originated from this period, when he experienced a high degree of personal and political unpopularity. During this time, Wellington was greeted by a hostile reaction from the crowds at the opening of the Liverpool and Manchester Railway. Wellington was gradually superseded as leader of the Tories by Robert Peel, while the party evolved into the Conservatives. When the Tories were returned to power in 1834, Wellington declined to become prime minister because he thought membership in the House of Commons had become essential. The king reluctantly approved Peel, who was in Italy.In 1824, one liaison came back to haunt him, when Wellington received a letter from a publisher, John Joseph Stockdale, offering to refrain from issuing an edition of the rather racy memoirs of one of his mistresses, Harriette Wilson, in exchange for money. It is said that the Duke promptly returned the letter, after scrawling across it, "Publish and be damned". However, Hibbert notes in his biography that the letter can be found among the Duke''s papers, with nothing written on it. It is certain that Wellington did reply, and the tone of a further letter from the publisher, quoted by Longford, suggests that he had refused in the strongest language to submit to blackmai ', '2024-02-29 11:40:24.882143+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(135, 'John Bowdler', 'john-bowdler-135', NULL, 'Campaigner for moral reform in Britain and a founder of the Church Building Society. His brother and sister were the editors of the expurgated Family Shakspeare. In 1795 Bowdler wrote a long letter to Lord Auckland about the high prices of the time, in which he attacked clergy and legislators for neglecting morality and religion. In 1796 he addressed letters on similar subjects to the Archbishop of Canterbury and bishops Beilby Porteus and Samuel Horsley. He published in 1797 a pamphlet entitled Reform or Ruin, in which he sought again to expose the immorality and irreligion of the nation. The pamphlet had a wide sale, and reached an eighth edition within a year.Bowdler was one of the founders of the Church Building Society.

', '2024-02-29 11:36:17.697183+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(134, 'Charles Daubeney', 'charles-daubeney-134', NULL, 'an English chemist, botanist and geologist. Educated at Winchester, Magdalen College Oxford. In November 1822, Daubeny succeeded Kidd as professor of chemistry at Oxford, and retained this post until 1855. In 1834, he was appointed to the chair of botany to which was subsequently attached that of rural economy. At the Oxford botanical garden he conducted numerous experiments upon the effect of changes in soil, light and the composition of the atmosphere upon vegetation. In 1830 he published in the Philosophical Transactions a paper on the iodine and bromine of mineral waters. In 1831 Daubeny represented the universities of England at the first meeting of the British Association, which at his request held their next session at Oxford. ', '2024-02-29 11:34:12.559668+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(132, 'Sir William Weller Pepys', 'sir-william-weller-pepys-132', NULL, '2nd Baron Pepys, was a lawyer who became Master in Chancery. He was a a member of Elizabeth Montagu’s circle, and corresponded with Hannah More for over forty years. He was a friend of Lord Lyttelton, and defended him against the criticisms made by Samuel Johnson in his Lives of the Poets. He was a close friend of Sir James Macdonald, the “Scottish Marcellus”. Pepys’ correspondence with Elizabeth Montagu, Hester Chapone and others was published in 1904 (ed. Alice Gaussen, London, John Lane).', '2024-02-29 11:28:40.004869+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(136, 'Lord Liverpool', 'lord-liverpool-136', NULL, 'Was prime minister 1812-1827. As prime minister, Jenkinson called for repressive measures at domestic level to maintain order after the Peterloo Massacre of 1819. He dealt smoothly with the Prince Regent when King George III was incapacitated. He also steered the country through the period of radicalism and unrest that followed the Napoleonic Wars. He favoured commercial and manufacturing interests as well as the landed interest. He sought a compromise of the heated issue of Catholic emancipation. The revival of the economy strengthened his political position. By the 1820s, he was the leader of a reform faction of "Liberal Tories" who lowered the tariff, abolished the death penalty for many offences, and reformed the criminal law. By the time of his death, however, the Tory party, which had dominated the House of Commons for over 40 years, was ripping itself apart.Died 1828.', '2024-02-29 11:38:03.70185+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(139, 'Henry Goulburn', 'henry-goulburn-139', NULL, 'British Conservative statesman and a member of the Peelite faction after 1846. Born in London, Goulburn was the eldest son of a wealthy planter, Munbee Goulburn, of Amity Hall, Vere Parish, Jamaica, and his wife Susannah, eldest daughter of William Chetwynd, 4th Viscount Chetwynd. He was educated at Trinity College, Cambridge.Goulburn''s inheritance included a number of sugar estates in Jamaica, with Amity Hall in the parish of Vere, now Clarendon Parish, being the most important. Slave labour was still being used to work the sugar plantations when he inherited the estates. Goulburn never visited Jamaica himself due to his health and political work. He relied on attorneys to manage his estates on his behalf. One attorney, in particular, Thomas Samson, held the top job at the estate from 1802 to 1818 and earned a reputation for cruelty towards Goulburn''s slaves.By 1818, the income from his Jamaican estates halved to less than £3,000 "although he did console himself that the condition of his slaves had probably improved".Goulburn was a member of the Canterbury Association from 27 March 1848.', '2024-02-29 11:55:18.886933+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(138, 'Sir Robert Peel', 'sir-robert-peel-138', NULL, 'British Conservative statesman who served twice as Prime Minister of the United Kingdom (1834–1835, 1841–1846), simultaneously serving as Chancellor of the Exchequer (1834–1835), and twice as Home Secretary (1822–1827, 1828–1830). He is regarded as the father of modern British policing, owing to his founding of the Metropolitan Police Service. Peel was one of the founders of the modern Conservative Party.The son of a wealthy textile manufacturer and politician, Peel was the first prime minister from an industrial business background. He earned a double first in classics and mathematics from Christ Church, Oxford. He entered the House of Commons in 1809 and became a rising star in the Tory Party. Peel entered the Cabinet as home secretary (1822–1827), where he reformed and liberalised the criminal law and created the modern police force, leading to a new type of officer known in tribute to him as "bobbies" and "peelers". After a brief period out of office he returned as home secretary under his political mentor the Duke of Wellington (1828–1830), also serving as Leader of the House of Commons. Initially, a supporter of continued legal discrimination against Catholics, Peel reversed himself and supported the Roman Catholic Relief Act 1829 and the 1828 repeal of the Test Act, claiming that "though emancipation was a great danger, civil strife was a greater danger".Peel often started from a traditional Tory position in opposition to a measure, then reversed his stance and became the leader in supporting liberal legislation. This happened with the Test Act, Catholic emancipation, the Reform Act, income tax and, most notably, the repeal of the Corn Laws. Historian A. J. P. Taylor wrote: "Peel was in the first rank of 19th-century statesmen. He carried Catholic Emancipation; he repealed the Corn Laws; he created the modern Conservative Party on the ruins of the old Toryism. Peel was born at Chamber Hall, Bury, Lancashire, to the industrialist and parliamentarian Sir Robert Peel, 1st Baronet, and his wife Ellen Yates. His father was one of the richest textile manufacturers of the early Industrial Revolution. Peel received his early education from a clergyman tutor in Bury and at a clergyman''s local school in Tamworth.He may also have attended Bury Grammar School or Hipperholme Grammar School, though evidence for either is anecdotal rather than textual. He started at Harrow School in February 1800. At Harrow, he was a contemporary of Lord Byron. Attended Christ Church, Oxford, which Peel attended 1805–1808, graduating with a double first. In 1805, Peel matriculated at Christ Church, Oxford. His tutor was Charles Lloyd, later Regius Professor of Divinity, on Peel''s recommendation appointed bishop of Oxford. In 1808 Peel became the first Oxford student to take a double first in Classics and Mathematics.








', '2024-02-29 11:50:24.825531+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(140, 'Henry Acland', 'henry-acland-140', NULL, 'English physician and educator.Educated at Harrow and Christ Church, Oxford. He was elected Fellow of All Souls College, Oxford in 1840, and then studied medicine in London and Edinburgh. Returning to Oxford, he was appointed Lee''s reader in anatomy at Christ Church in 1845, was made a Fellow of the Royal Society in 1847. Acland was also interested in questions of public health. He served on the Royal Commission on sanitary laws in England and Wales in 1869. He published a study of the cholera outbreak at Oxford in 1854, together with various pamphlets on sanitary matters.He married Sarah Cotton, daughter of William Cotton and Sarah Lane, on 14 July 1846. They had seven sons and a daughter', '2024-02-29 12:12:49.04391+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(143, 'Lord Sidmouth', 'lord-sidmouth-143', NULL, 'British Tory statesman who served as prime minister of the United Kingdom from 1801 to 1804.Henry Addington was the son of Anthony Addington, Pitt the Elder''s physician; and Mary Addington, the daughter of the Rev. Haviland John Hiley, headmaster of Reading School. As a consequence of his father''s position, Addington was a childhood friend of William Pitt the Younger. Addington studied at Reading School, Winchester, and Brasenose College, Oxford, and then studied law at Lincoln''s Inn. He married Ursula Mary Hammond in 1781; she brought an income of £1,000 a year into the marriage. In 1802, Addington accepted an honorary position as vice-president for life on the Court of Governors of London''s Foundling Hospital for abandoned babies.', '2024-02-29 12:22:38.924295+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(149, 'David Wilkie', 'david-wilkie-149', NULL, ' a Scottish[1] painter, especially known for his genre scenes. He painted successfully in a wide variety of genres, including historical scenes, portraits, including formal royal ones, and scenes from his travels to Europe and the Middle East. His main base was in London, but he died and was buried at sea, off Gibraltar, returning from his first trip to the Middle East. He was sometimes known as the "people''s painter". David Wilkie was born in Pitlessie Fife in Scotland on 18 November 1785. He was the son of the parish minister of Cults, Fife. Caroline Wilkie was a relative.[5] He developed a love for art at an early age. In 1799, after he had attended school at Pitlessie, Kingskettle and Cupar, his father reluctantly agreed to his becoming a painter. Through the influence of the Earl of Leven Wilkie was admitted to the Trustees'' Academy in Edinburgh, and began the study of art under John Graham. From William Allan (afterwards Sir William Allan and president of the Royal Scottish Academy) and John Burnet, the engraver of Wilkie''s works, we have an interesting account of his early studies, of his indomitable perseverance and power of close application, of his habit of haunting fairs and marketplaces, and transferring to his sketchbook all that struck him as characteristic and telling in figure or incident, and of his admiration for the works of Alexander Carse and David Allan, two Scottish painters of scenes from humble life', '2024-02-29 12:38:15.681954+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(147, 'Robert Southey', 'robert-southey-147', NULL, 'British poet of the Romantic school, and Poet Laureate from 1813 until his death. Like the other Lake Poets, William Wordsworth and Samuel Taylor Coleridge, Southey began as a radical but became steadily more conservative as he gained respect for Britain and its institutions. Other romantics such as Byron accused him of siding with the establishment for money and status. He is remembered especially for the poem "After Blenheim" and the original version of "Goldilocks and the Three Bears". In some respects, Southey was ahead of his time in his views on social reform. For example, he was an early critic of the evils the new factory system brought to early 19th-century Britain. He was appalled by the living conditions in towns like Birmingham and Manchester and especially by employment of children in factories and outspoken about them. He sympathised with the pioneering socialist plans of Robert Owen, advocated that the state promotes public works to maintain high employment, and called for universal education.', '2024-02-29 12:34:55.57813+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(150, 'Arthur Locker', 'arthur-locker-150', NULL, ' English novelist and journalist.second son of Edward Hawke Locker, he was born at Greenwich on 2 July 1828; Frederick Locker-Lampson was his brother. He was educated at Charterhouse School and Pembroke College, Oxford, where he matriculated on 6 May 1847, and graduated B.A. in 1851.Locker went into commerce in a Liverpool office. Attracted by the Australian Gold Rush of the time, he emigrated to Victoria, and there took up journalism and writing. He returned to the UK in 1861, where he wrote extensively for newspapers and magazines. In 1863 Locker obtained work with The Times, which lasted until 1870, when he was appointed editor of The Graphic a few months after it was founded. He brought on young writers.In December 1891 poor health saw Locker retire. After visiting Madeira and the Isle of Wight, he died at 79 West Hill, Highgate, London, on 23 June 1893. He was twice married, to Mary Jane Rouse and after her death to Catharine Sarah Carpenter née Clulioth.

', '2024-02-29 12:40:08.728428+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(146, 'Jonathan Boucher', 'jonathan-boucher-146', NULL, 'English clergyman, teacher, preacher and philologist. Jonathan Boucher was born in Blencogo, near Wigton, Cumberland, and educated at the Wigton Grammar School. After training in Workington, Jonathan became a teacher, at St. Bees School and in 1759 went to Virginia, where he became a private tutor in the families of Virginia planters. Invited to become vicar of a nearby Anglican church, but lacking any religious qualifications, he briefly returned to England, to be ordained by the bishop of London in March 1762. He also carried a cane around the colony.He landed in America again on 12 July, was associated with the Anglican Church, and remained until 1775 as rector of various Virginia and Maryland parishes, including St. Mary''s, Caroline County, Virginia, Hanover, King George County, Virginia, and St Anne''s in Annapolis, Maryland and in 1771, St. Barnabas Church, Upper Marlboro, Maryland. He was widely known as an eloquent preacher, and his scholarly attainments won for him the friendship and esteem of some of the ablest scholars in the colonies. Boucher was an accomplished writer and scholar, contributed largely to William Hutchinson''s History of the County of Cumberland (2 vols., 1794 seq.), and published A View of the Causes and Consequences of the American Revolution (1797), dedicated to General George Washington, and consisting of thirteen discourses delivered in America between 1763 and 1775. He married three times, first in America in 1772 to Eleanor Addison, of which little is known, other than that his wife did not appear to return to Britain with him; they had a daughter named Eleanor Boucher. His second marriage occurred in England in 1787 to Mary Elizabeth Foreman, who died the following year. His last marriage in 1789 was to Elizabeth James (née Hodgson), a widow to Dr. John James. James and Boucher had seven children together, including Barton Boucher.', '2024-02-29 12:31:49.686944+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(131, 'Frances Burney', 'frances-burney-131', NULL, 'Novelist, diarist, playwright also known as Fanny Burney and Madame d''Arblay. All Burney''s novels explore the lives of English aristocrats and satirise their social pretensions and personal foibles, with an eye to larger questions such as the politics of female identity. With one exception, Burney never succeeded in having her plays performed, largely due to objections from her father, who thought that publicity from such an effort would be damaging to her reputation. The exception was Edwy and Elgiva, which was not well received by the public and closed after the first night''s performance despite having Sarah Siddons in the cast.From her fifteenth year Frances lived in the midst of a brilliant social circle, gathered round her father in Poland Street, and later in St Martin''s Street. Garrick was a constant visitor, and would arrive before eight o''clock in the morning. Of the various "lyons" they entertained she leaves a graphic account, notably of Omai, the young man from Raiatea, and of Alexis Orlov, a favourite of Catherine the Great. She first met Dr Johnson at her father''s home in March 1777.Married General Alexandre d''Arblay, French emigre and supported the family through her writings. ', '2024-02-29 11:23:38.630795+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(152, 'Henry Dundas', 'henry-dundas-152', NULL, 'styled as Lord Melville from 1802, was the trusted lieutenant of British prime minister William Pitt and the most powerful politician in Scotland in the late 18th century. From 1776-78, Dundas acted as counsel to an escaped slave, Joseph Knight, who had been purchased in Jamaica and later taken to Scotland. As a young man Knight tried to escape from his owner, and when that failed he launched a legal battle for his freedom. The case went to Scotland''s highest civil court, where Dundas led Knight''s legal team, in the case of Knight v. Wedderburn.[', '2024-03-20 22:51:55.434232+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(144, 'Admiral William Parry', 'admiral-william-parry-144', NULL, ' a Royal Navy officer and explorer best known for his 1819–1820 expedition through the Parry Channel, probably the most successful in the long quest for the Northwest Passage, until it was finally negotiated by Roald Amundsen in 1906. In 1827, Parry attempted one of the earliest expeditions to the North Pole. He reached 82° 45'' N, setting a record for human exploration Farthest North that stood for nearly five decades before being surpassed at 83° 20'' N by Albert Hastings Markham in 1875. Parry was born in Bath, Somerset, the son of Caleb Hillier Parry and Sarah Rigby. He was educated at King Edward''s School.At the age of thirteen he joined the flagship of Admiral Sir William Cornwallis in the Channel fleet as a first-class volunteer, in 1806 became a midshipman, and in 1810 received promotion to the rank of lieutenant in the frigate Alexander, which spent the next three years in the protection of the Spitsbergen whale fishery. Parry took advantage of this opportunity for the study and practice of astronomical observations in northern latitudes, and afterwards published the results of his studies in a small volume on Nautical Astronomy by Night. From 1813 to 1817 he served on the North American Station.Parry''s character was influenced by his religiousness, and besides the journals of his different voyages he also wrote a Lecture to Seamen, and Thoughts on the Parental Character of God. He was noted as "an evangelical [Christian] and an ardent advocate of moral reform in the navy.



', '2024-02-29 12:25:30.461339+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(145, 'Lord John Russell', 'john-russell-145', NULL, 'British Whig and Liberal statesman who served as Prime Minister of the United Kingdom from 1846 to 1852 and again from 1865 to 1866.The third son of the 6th Duke of Bedford, Russell was educated at Westminster School and Edinburgh University before entering Parliament in 1813. In 1828 he took a leading role in the repeal of the Test Acts which discriminated against Catholics and Protestant dissenters. He was one of the principal architects of the Reform Act 1832, which was the first major reform of Parliament since the Restoration, and a significant early step on the road to democracy and away from rule by the aristocracy and landed gentry. He favoured expanding the right to vote to the middle classes and enfranchising Britain''s growing industrial towns and cities, but he never advocated universal suffrage and he opposed the secret ballot. Russell was outspoken on many issues over the course of his career, advocating Catholic emancipation in the 1820s, calling for the repeal of the Corn Laws in 1845, denouncing Pope Pius IX''s revival of Catholic bishoprics in 1850, and supporting Italian unification during the 1860s. Russell''s political agenda was frequently frustrated by his lack of a reliable Commons majority. However, his government was able to secure a number of notable social reforms. Russell introduced teachers'' pensions and used Orders in Council to make grants for teacher training. The Public Baths and Wash-houses Acts of 1847 and 1848 enabled local authorities to build municipal baths and washing facilities for the growing urban working classes. Russell lent his support to the passage of the Factories Act 1847, which restricted the working hours of women and young persons (aged 13–18) in textile mills to 10 hours per day.Russell married Adelaide Lister (widow of Thomas Lister, 2nd Baron Ribblesdale, who had died in 1832) on 11 April 1835. Together they had two daughters:

', '2024-02-29 12:27:39.647072+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(156, 'John Kemble', 'john-kemble-156', NULL, 'Brother to the famous Sarah Siddons. Joined the company  and became theatre manager and fought with Sheridan.', '2024-03-20 23:13:56.433845+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(154, 'Richard Sheridan', 'richard-sheridan-154', NULL, 'Richard Sheridan was an Anglo-Irish playwright, writer and Whig politician who sat in the British House of Commons from 1780 to 1812, representing the constituencies of Stafford, Westminster and Ilchester. Was a pupil at Harrow. Fought two duels. Wrote the School for Scandal. In 1780, Sheridan entered the House of Commons as the ally of Charles James Fox on the side of the American Colonials in the political debate of that year. He is said to have paid the burgesses of Stafford five guineas apiece to allow him to represent them. As a consequence, his first speech in Parliament was a defence against the charge of bribery.He held the posts of Receiver-General of the Duchy of Cornwall (1804–1807) and Treasurer of the Navy (1806–1807). Sheridan was noted for his close political relationship with the Prince of Wales, leading a faction of his supporters in the Commons. By 1805 when the Prince was cooling on his previous support of Catholic Emancipation Sheridan, George Tierney and others announced their own opposition to it.[22]

When, after 32 years in Parliament, he lost re-election in 1812, his creditors closed in on him and his last years were harassed by debt and disappointment. On hearing of his debts, the American Congress offered Sheridan £20,000 in recognition of his efforts to prevent the American War of Independence. He refused the offer. Sheridan was good friends with Georgiana Cavendish and Henrietta Ponsonby. He sexually harassed women and was a womaniser.  ', '2024-03-20 23:01:03.620811+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(151, 'Earl of Aberdeen', 'earl-of-aberdeen-151', NULL, ' British statesman, diplomat and landowner, successively a Tory, Conservative and Peelite politician and specialist in foreign affairs. He served as Prime Minister from 1852 until 1855 in a coalition between the Whigs and Peelites, with Radical and Irish support. The Aberdeen ministry was filled with powerful and talented politicians, whom Aberdeen was largely unable to control and direct. Despite his trying to avoid this happening, it took Britain into the Crimean War, and fell when its conduct became unpopular, after which Aberdeen retired from politics.', '2024-03-20 22:48:20.820944+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(157, 'Richard Payne Knight', 'richard-payne-knight-157', NULL, NULL, '2024-03-20 23:15:14.759219+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(159, 'Henry Cline', 'henry-cline-159', NULL, 'English surgeon and president of the Royal College of Surgeons. Political radical, associated with leading supporters of the French revolution, a farmer and Fellow of the Royal Society. Apprenticed to Thomas Smith, one of the surgeons. ', '2024-03-21 10:07:36.968363+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(161, 'Nathaniel Woodward', 'nathaniel-woodward-161', NULL, 'Founded 11 schools for the middle classes to provide education based on sound principle and sound knowledge firmly grounded in the Christian faith. Began life as an evangelical but increasingly drawn to Tractarian movement. ', '2024-03-21 11:24:43.457459+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(118, 'William Manning', 'william-manning-118', NULL, 'Son of a merchant and his wife Elizabeth, daughter and heir of John Ryan, a planter and slave owner in St Kitts and Santa Cruz. His father also came from a planter family and soon after his marriage started a merchant house in Bristol, trading in West Indies. His son inherited 2/3 of the Ryan estates on Santa Cruz. Connection with Smith took him into Pitt''s circle. Staunch supporter of the government. Agent for St Vincent, leading spokesman of West Indies interests in the Commons. Campaigned for a dock to construct the dock. Provided finance for slave owners and became a slave owner himself. Promoted compensation for slave owners. Good friends with Wilberforce. Went bankrupt in 1831 and withdrew from public life. Died in 1834', '2024-02-29 10:42:39.211942+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(160, 'William Cotton', 'william-cotton-160', NULL, 'William Cotton, born in 1786 in Leytonstone, was a founding member of the council of King’s College London. Cotton was a merchant, inventor, banker, and philanthropist, who during his lifetime built numerous churches and schools for the working classes. Cotton came from a well-established upper middle-class family. His father (Joseph Cotton, 1745-1825) had made his money as a captain for the East India Company (EIC) taking advantage of expanding imperial trade and was later appointed a director of the EIC. His grandfather (Dr Nathaniel Cotton, 1705-1788) was a highly respected physician.  Cotton was a deeply religious man and during his lifetime was involved with societies such as the Colonial Bishoprics Fund, Hackney Phalanx of Prominent Churchmen and Society for the Promotion of Christian Knowledge. Cotton believed that moral reform was the best form of patriotism. Importantly, he argued that the poor needed to be relieved of their poverty before their morals could be judged. His philanthropy therefore focused on the promotion of institutions that could relieve economic and social pressures. This included his zeal for building churches, promoting public baths, wash houses and model lodging houses.  

However, Cotton’s behaviour was not always so exemplary. During his time at Chigwell Grammar, 15-year-old Cotton was accused of setting fire to the headmaster’s garden. Cotton married Sarah Fowler in 1812. The couple had seven children together and Cotton maintained a keen interest in their upbringing and education. Reflecting both his business shrewdness and his familial shipping legacy, Cotton first began his career at the Limehouse shipping firm Huddart & Co. which he later adopted full control of, he also invented steam driven rope making machinery and in 1851 was awarded the Telford Medal from the Institution of Civil Engineers. During his tenure at the Bank of England, Cotton alongside Home Secretary Sir Robert Peel and Conservative plantation owner, Henry Goulburn, produced the Bank Charter Act of 1844. One of his most valued inventions was an automatic weighing machine for sovereigns, colloquially referred to as ‘the governor’, which won a medal at the Great Exhibition of 1851 and was used extensively at the Bank of England. William Cotton became a fellow of the Royal Society in 1821, was elected chairman of the London Hospital in 1827 and became treasurer in 1837 echoing some of the roles he undertook for the newly founded King’s College London in 1829. He also used the many connections he made through these roles to fundraise for King’s College London. However, the man he had the most contact with at King’s was his friend Henry Nelson Coleridge, who was also an important council member. Cotton was described by historian Hearnshaw as a ‘venerable member’ of King’s and one whose death in 1866 marked ‘the first age of the college’ coming to an end.', '2024-03-21 11:22:08.076963+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(153, 'William Pitt', 'william-pitt-153', NULL, 'Pitt was a British statesman, the youngest and last prime minister of Great Britain from 1783 until the Acts of Union 1800 and then first prime minister of the United Kingdom from January 1801. He left office in March 1801, but served as prime minister again from 1804 until his death in 1806. He was also Chancellor of the Exchequer for all of his time as prime minister. He is known as "Pitt the Younger" to distinguish him from his father, William Pitt, 1st Earl of Chatham, who had previously served as prime minister and is referred to as "William Pitt the Elder" (or "Chatham" by historians). Pitt, although often referred to as a Tory, or "new Tory", called himself an "independent Whig" and was generally opposed to the development of a strict partisan political system.Pitt was regarded as an outstanding administrator who worked for efficiency and reform, bringing in a new generation of competent administrators. He increased taxes to pay for the great war against France and cracked down on radicalism. To engage the threat of Irish support for France, he engineered the Acts of Union 1800 and tried (but failed) to secure Catholic emancipation as part of the Union. He created the "new Toryism", which revived the Tory Party and enabled it to stay in power for the next quarter-century.', '2024-03-20 22:55:20.198157+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(130, 'William Clift', 'william-clift-130', NULL, 'Born into a large poor family. Had a talent for illustrating. Taken on as an unpaid apprentice in the Hunter museum. Clift achieved respect and popularity within the scientific community of his time. Dr. South spoke of him as ''a kindly-hearted creature, always ready to impart and not to appropriate information,'' and with a ''head crammed full of knowledge.''[citation needed] Benjamin Brodie the elder praised his industry and his thirst for the acquisition of knowledge, his sagacity and keen observation. He was esteemed by Sir Joseph Banks, Dr. Wollaston, Sir Humphry Davy. Through the influence of the latter, he was elected Fellow of the Royal Society on 8 May 1823.

He was a member of the Chemical Society, a group of members of the Royal Society who submitted papers to the parent institution with the object of promoting the study of animal chemistry.Gideon Mantell acknowledged his debt to Clift in the original memoir on the Iguanodon. Baron Cuvier acknowledged his assistance in the concluding volume of his work on fossil remains. Clift''s knowledge of osteology is referred to by Sir Charles Lyell and his researches in anatomical science were referenced by Sir Benjamin Brodie.He was the compiler of the catalog of the osteology in the Hunterian Museum, and he gave valuable evidence to the parliamentary committee on medical education in 1834. Dr. Westby-Gibson is the owner of two manuscripts in shorthand, giving the particulars of forty-nine lectures delivered by Dr. Haighton at Guy''s Hospital 1814–15, which are believed to be the work of Clift. His portrait, from a daguerreotype, is in Claudet''s Historical Gallery and his bust in plaster, with the date 1843, is placed on the entrance door to the western museum of the College of Surgeon', '2024-02-29 11:19:58.923679+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(142, 'William Wilberforce', 'william-wilberforce-142', NULL, ' British politician, a philanthropist, and a leader of the movement to abolish the slave trade. A native of Kingston upon Hull, Yorkshire, he began his political career in 1780, and became an independent Member of Parliament (MP) for Yorkshire (1784–1812). In 1785, he underwent a conversion experience and became an Evangelical Anglican, which resulted in major changes to his lifestyle and a lifelong concern for reform.In 1787, Wilberforce came into contact with Thomas Clarkson and a group of activists against the slave trade, including Granville Sharp, Hannah More and Charles Middleton. They persuaded Wilberforce to take on the cause of abolition, and he became a leading English abolitionist. He headed the parliamentary campaign against the British slave trade for 20 years until the passage of the Slave Trade Act of 1807.Wilberforce was convinced of the importance of religion, morality and education. He championed causes and campaigns such as the Society for the Suppression of Vice, British missionary work in India, the creation of a free colony in Sierra Leone, the foundation of the Church Mission Society and the Society for the Prevention of Cruelty to Animals. His underlying conservatism led him to support politically and socially repressive legislation, and resulted in criticism that he was ignoring injustices at home while campaigning for the enslaved abroad.In later years, Wilberforce supported the campaign for the complete abolition of slavery and continued his involvement after 1826, when he resigned from Parliament because of his failing health. That campaign led to the Slavery Abolition Act 1833, which abolished slavery in most of the British Empire. Wilberforce died just three days after hearing that the passage of the Act through Parliament was assured. He was buried in Westminster Abbey, close to his friend William Pitt the Younger. Attended Hull Grammar School, which at the time was headed by a young, dynamic headmaster, Joseph Milner, who was to become a lifelong friend. In October 1776, at the age of seventeen, Wilberforce went up to St John''s College, Cambridge.In October 1784, Wilberforce embarked upon a tour of Europe which would ultimately change his life and determine his future career. He travelled with his mother and sister in the company of Isaac Milner, the brilliant younger brother of his former headmaster, who had been Fellow of Queens'' College, Cambridge, in the year when Wilberforce first went up. ', '2024-02-29 12:17:37.077638+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(141, 'Agnes Cotton', 'agnes-cotton-141', NULL, '(27 February 1828 – 20 May 1899) was an English social reformer and philanthropist. She founded and ran a home in Leytonstone for ''fallen girls'' called The Pastures.Cotton was considered to be a philanthropist by the time she was 18. She helped her sister Sarah Acland in her philanthropy projects and started to create her own projects to care for children in Leytonstone. Her siblings included the judge Henry Cotton, the philanthropist Sarah Acland, and the missionary William Cotton. In 1865, Cotton opened a children''s home with an attached laundry for girls. This was expanded when she moved to The Cedars, a home once operated as an orphanage/school by the Methodist preacher Mary Bosanquet. She renamed the house ''The Pastures. In about 1880, Cotton paid for an expansion of the existing building. The site in Leytonstone now included a chapel, industrial laundry, school and was known as the ''Home of the Good Shepherd'' to differentiate it from ''The Pastures,'' which was the former base. Previously Cotton''s good works had been funded by herself, her family, and well wishers; in the 1880s the home attracted funding from the state. It was registered under the Criminal Law Amendment Act, although it was not a home for delinquent girls but a place of training in laundry work for girls who had been involved in prostitution. Rumours about harsh treatment inside of The Pastures began to spread in 1894. Rumours varied from stories about the girls being unsupervised, to abused, to stories about Cotton being too old for the job. The Home Office was called into investigate after Reverend A. Drew, a chairman of the London School Board, demanded an inquiry. Inspector William Inglis concluded that the rumours were false, and exonerated Cotton. Despite her exoneration, the London School Board cut ties with Cotton in 1895.', '2024-02-29 12:14:48.744236+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(148, 'Charles Knight', 'charles-knight-148', NULL, 'English publisher, editor and author. He published and contributed to works such as The Penny Magazine, The Penny Cyclopaedia, and The English Cyclopaedia, and established the Local Government Chronicle.on of a bookseller and printer at Windsor, he was apprenticed to his father. On completion of his indentures he took up journalism and had an interest in several newspaper speculations,[1] including the Windsor, Slough and Eton Express.In 1823, in conjunction with friends he had made as publisher (1820–1821) of The Etonian, he started Knight''s Quarterly Magazine, to which Winthrop Mackworth Praed, Derwent Coleridge and Thomas Macaulay contributed. It lasted for only six issues, but it made Knight''s name as publisher and author, beginning a career which lasted over forty years.[1] The periodical included an 1824 review of Frankenstein in which Percy Bysshe Shelley was attributed as the author in a comparison with his wife''s second novel Valperga. One of his early publications was the diary of the naval chaplain Henry Teonge (c. 1620–1690).[2] From 1826 to 1827, he published the second series of Alaric Alexander Watts'' monthly magazine The Literary Magnet. In 1827 Knight was forced to give up publishing, and became the superintendent of the publications of the Society for the Diffusion of Useful Knowledge, for which he projected and edited The British Almanack and Companion, begun in 1828. In 1829 he resumed business on his own account with the publication of The Library of Entertaining Knowledge, writing several volumes of the series himself. In 1832 and 1833 he started The Penny Magazine (1832-1845) and The Penny Cyclopaedia.', '2024-02-29 12:36:07.127204+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(155, 'Thomas Lawrence', 'thomas-lawrence-155', NULL, 'as an English portrait painter and the fourth president of the Royal Academy. A child prodigy, he was born in Bristol and began drawing in Devizes, where his father was an innkeeper at the Bear Hotel in the Market Square. At age ten, having moved to Bath, he was supporting his family with his pastel portraits. At 18, he went to London and soon established his reputation as a portrait painter in oils, receiving his first royal commission, a portrait of Queen Charlotte, in 1789. He stayed at the top of his profession until his death, aged 60, in 1830.Self-taught, he was a brilliant draughtsman and known for his gift of capturing a likeness, as well as his virtuoso handling of paint. He became an associate of the Royal Academy in 1791, a full member in 1794, and president in 1820.By the time the Prince of Wales was made regent in 1811, Lawrence was acknowledged as the country''s foremost portrait painter.Lawrence arrived back in London 30 March 1820 to find that the president of the Royal Academy, Benjamin West, had died. That very evening Lawrence was voted the new president, a position he would hold until his death 10 years later. George III had died in January; Lawrence was granted a place in the procession for the coronation of George IV. On 28 February 1822 he was elected as a Fellow of the Royal Society "for his eminence in art".', '2024-03-20 23:07:24.153968+00', NULL, 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(162, 'Matthew Tindal', 'matthew-tindal-162', NULL, 'Eminent English deist author. His works, highly influential at the dawn of the Enlightenment, caused great controversy and challenged the Christian consensus of his time. Studied at Lincoln College, Oxford. Was a utilitarian.', '2024-03-29 22:08:42.794998+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(163, 'Lord Wensleydale', 'lord-wensleydale-163', NULL, '9th son of merchant, Thomas Parke. Attended Macclesfield grammar and then Trinity College Cambridge. Called to the bar. Retained by crown to support bill of pains and penalties against Queen Caroline in 1820. Appointed judge 1828 and then served in court of exchequer until death 1855. No political party.', '2024-03-29 22:14:12.017573+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(164, 'John Pocock', 'john-pocock-164', NULL, 'Barrister born in Maidenhead, Berkshire. Only son of Isaac Pocock, playwright. Went to Eton, then Merton, Oxford. Called to bar 1847.', '2024-03-29 22:16:50.211365+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, NULL),
	(165, 'Benjamin Collins Brodie', 'benjamin-collins-brodie-165', NULL, 'Born in Wiltshire, Educated at home and then went ot London to join lectures at St Bartholomews.1803 entered St George''s, as surgical pupil of Everard Home. Spirited defender of Home after he was accused of plagiarising brother in law John Hunter. Was made senior surgeon of St Georges. Produced influential text called. Diseases of the Joints (1818). This important and influential text, which skilfully analysed case histories, and aimed to teach surgeons how to preserve limbs that might otherwise have been amputated, went through five editions, and was translated into several languages. It included descriptions of hysterical pseudo-fracture of the spine, and the first clinical description of ankylosing spondylitis. In the fifth edition (1850) he identified Brodie''s disease, a chronic synovitis in which an affected joint undergoes a pulpy degeneration. In 1828 he devised a technique for trephining the tibia for chronic inflammation (Brodie''s abscess); in 1835 he pioneered a technique for correction of abnormalities in the anal sphincter (Brodie''s pile); and in 1840 he identified a particular form of breast tumour (Brodie''s tumour).He firmly believed that its moral, religious, and scientific education and leadership should distinguish the élite of the medical profession. He therefore strongly supported the foundation of the London Medical Gazette in 1827 to counter Thomas Wakley''s assertions in The Lancet that hospital surgeons and the council of the Royal College of Surgeons were corrupt. He was president of the Royal Medical and Chirurgical Society (1839), where he introduced discussions at meetings. In 1844 he was elected president of the Royal College of Surgeons, having been for many years examiner and member of the council, and having introduced important improvements into the system of examinations and the structure of its hitherto self-perpetuating council. Together with Joseph Henry Green and John Simon he was closely involved in the complex negotiations that led to the Medical Act of 1858.', '2024-03-29 22:47:23.932771+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(166, 'Sir John Vaughan', 'sir-john-vaughan-166', NULL, 'Baron of the Exchequer. Educated at Rugby, matriculated at Queen''s College, Oxford. Married first wife Augusta, 2nd daughter Henry Beauchamp. Appointed solicitor general to Queen Charlotte. Conducted crown''s case against Sir Frances Burdett for seditious libel following comments on Peterloo massacre.', '2024-03-29 23:22:12.520649+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(167, 'Sir Charles Richard Vaughan', 'sir-charles-richard-vaughan-167', NULL, 'diplomatist, son of James Vaughan, physician, of Leicester, and Hester, daughter of John Smalley (who had married a daughter of Sir Richard Halford), was born at Leicester on 20 December 1774. harles Vaughan was educated at Rugby School, where he entered on 22 January 1788, and at Merton College, Oxford, matriculating on 26 October 1791. Elected Radcliffe travelling fellow on 4 December 1800, and spent the next three years in Germany, France, and Spain. In 1804 he visited Constantinople, Asia Minor, and Syria. In 1809 Vaughan was also appointed private secretary to Henry Bathurst, third Earl Bathurst, secretary for foreign affairs. On 5 January 1810 he became secretary of legation (later of embassy) in Spain, whither he returned with the minister, Henry Wellesley. He was sent to Britain in 1811 to give information as to the state of politics in Spain. n 5 April 1820 he went to Paris as secretary of embassy under his old friend Sir Charles Stuart, and on 8 February 1823 became minister-plenipotentiary to the confederated states of Switzerland. He was appointed envoy-extraordinary and minister-plenipotentiary to the United States in 1825, and on 23 March he was made privy councillor. Though, in Sir Charles Webster''s view, a man of ''no great ability'' (Webster, 1.69), he dealt with important matters such as the Canadian boundary, the Latin American republics, the slave trade, and the tariff. On one occasion he was fiercely reprimanded by Canning for exceeding instructions (Temperley, 288). Palmerston thought him ''a steady sensible man, though not very showy'' ', '2024-03-29 23:32:54.598234+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(168, 'Henry Hobhouse', 'henry-hobhouse-168', NULL, 'archivist, called to bar, solicitor to HM customs, solicitor to the Treasury, sworn onto the privy council, one of the ecclesiastical commissioners for England. ', '2024-03-29 23:43:34.882993+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(169, 'Edward Hawke Locker', 'edward-hawke-locker-169', NULL, 'Hospital administrator. Clerk to Board of Control for Indian affairs, was a prize agent. Royal Society, Royal Hospital, Athaneum, The Plain Englishman, Greenwich Hospital, British Institution, National Maritime Museum, ', '2024-03-29 23:50:31.913846+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(171, 'James Mill', 'james-mill-171', NULL, 'Mill was a proponent of British imperialism, justifying it on utilitarian grounds.[11] He considered it part of a civilising mission for Britain to impose its rule on India.[11] Mill saw his own work for the East India Company as important for the improvement of Indian society. Scottish historian, economist, political theorist and philosopher. He is counted among the founders of the Ricardian school of economics. He also wrote The History of British India (1817) and was one of the prominent historians to take a colonial approach. He was the first writer to divide Indian history into three parts: Hindu, Muslim and British, a classification which has proved surpassingly influential in the field of Indian historical studies.', '2024-03-31 21:04:00.365077+00', NULL, NULL, 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(172, 'George Birkbeck', 'george-birkbeck-172', NULL, 'as a British physician, academic, philanthropist, pioneer in adult education and a professor of natural philosophy at the Andersonian Institute. He is the founder of Birkbeck, University of London and was head of the Chemical Society. He is one of the creators of the earliest chemistry laboratory for undergraduates at University College London, and is also known for the creation of mechanics'' institutes in Scotland and London. Quaker. Went to Sedbergh, studied medicine at Leeds and London.', '2024-03-31 21:08:06.777901+00', 'Assigned male at birth', NULL, 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb');


--
-- Data for Name: donation_agent_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation_agent_person" ("id", "donation", "person", "added_by", "created_at") VALUES
	(1, 'foundation-of-kings-3', 'william-astell-104', 'Gillian Lamb', '2024-04-18 16:44:02.090358+00');


--
-- Data for Name: moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."moment" ("id", "name", "created_at", "added_by") VALUES
	(1, '1', '2024-02-27 13:42:24.940337+00', 'Erika Melek Delgado'),
	(5, '3
', '2024-02-27 13:47:51.356932+00', 'Erika Melek Delgado'),
	(7, '2', '2024-03-21 11:14:10.6361+00', 'Gillian Lamb');


--
-- Data for Name: donation_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation_moment" ("id", "created_at", "donation", "moment", "added_by") VALUES
	(1, '2024-04-18 16:38:46.20323+00', 'foundation-of-kings-3', '2', 'Gillian Lamb');


--
-- Data for Name: donation_recipient_organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation_recipient_organisation" ("id", "donation", "organisation", "added_by", "created_at") VALUES
	(1, 'foundation-of-kings-3', 'kings-college-london-47', 'Gillian Lamb', '2024-04-18 16:42:38.745067+00');


--
-- Data for Name: donation_recipient_person; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: donation_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: source; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: donation_source; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: donation_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: theme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."theme" ("id", "name", "created_at", "added_by") VALUES
	(1, 'Trans-Atlantic Slave Trade', '2024-02-23 14:10:25.486378+00', NULL);


--
-- Data for Name: donation_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: donation_url; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: event_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."event_type" ("id", "name", "created_at", "added_by") VALUES
	(1, 'Foundation', '2024-03-31 13:50:03.466565+00', 'Gillian Lamb');


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."event" ("id", "name", "slug", "event_type", "start_date", "end_date", "location", "description", "added_by", "created_at", "draft") VALUES
	(3, 'Creation of Society for the Diffusion of Useful Knowledge', 'creation-of-society-for-the-diffusion-of-useful-knowledge-3', 'Foundation', '1826-01-01', '1848-01-01', NULL, 'It was founded in 1826 by Henry Brougham, later Baron Brougham and Vaux, with a number of fellow educational reformers, many of them Whig or radical MPs and lawyers, to bring instruction to a mass readership
These reformers included James Mill, Zachary Macaulay, Lord John Russell, William Tooke, and George Birkbeck, founder in 1823, with Brougham’s support, of the first London Mechanics’ Institution (The Times, 3 December 1824, 31 January 1825, 9 July 1825)
The extension of education to all classes and all ages was the larger aim of this group of reformers, some of whom (Brougham, Birkbeck, and Macaulay) had also started a society to encourage the spread of infant schools in 1824 (The Times, 7 June 1824)
The SDUK was first proposed at a meeting convened by Brougham in Furnivall’s Inn in November 1826 (Quarterly Journal of Education, vol. IX, 1833)
The aim was to exploit recent advances in printing and distribution by publishing cheap, informative works to “supply the appetite which had been created by elementary instruction” (through infants’ schools and mechanics’ institutes) and to “direct the ability to read to useful ends”, as the Whig MP Thomas Spring Rice declared at a meeting of the Society in 1828 (The Times, 19 May 1828)
It was agreed that the Society’s publications in its Library of Useful Knowledge would avoid party politics and religion, in order to appeal to the widest audience and also to avoid controversy among its members, who represented a broad spread of religious affiliation, from non-believers to liberal Anglicans and dissenters of various kinds
Despite this precaution, the Society attracted negative attention from Tories and Church of England commentators
This was because its founders were well-known for other activities on behalf of political and educational reform
Many were prominent members of the Council of the new University of London (later University College London), founded in 1825 and preparing to open in October 1828 to teach students of all faiths and none, who were prevented from graduating at Oxford and Cambridge because they were not confessing Anglicans', NULL, '2024-03-31 20:35:33.45059+00', true);


--
-- Data for Name: event_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."event_moment" ("id", "created_at", "event", "moment", "added_by") VALUES
	(1, '2024-03-31 20:36:06.953839+00', 'creation-of-society-for-the-diffusion-of-useful-knowledge-3', '2', 'Gillian Lamb');


--
-- Data for Name: event_organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: event_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."event_person" ("id", "created_at", "event", "person", "added_by") VALUES
	(1, '2024-03-31 20:50:08.298346+00', 'creation-of-society-for-the-diffusion-of-useful-knowledge-3', 'henry-brougham-123', 'Gillian Lamb');


--
-- Data for Name: event_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: event_source; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: event_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: event_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: event_url; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: occupation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."occupation" ("id", "name", "created_at", "added_by") VALUES
	(1, 'Barrister', '2024-02-16 12:14:47.680472+00', 'Gillian Lamb'),
	(2, 'Noble', '2024-02-16 12:14:47.680472+00', 'Gillian Lamb'),
	(3, 'Politician', '2024-02-16 12:14:47.680472+00', 'Gillian Lamb'),
	(4, 'Bookseller', '2024-02-19 10:37:22.960314+00', 'Gillian Lamb'),
	(6, 'Doctor', '2024-03-20 22:29:10.58881+00', 'Gillian Lamb'),
	(7, 'Reverend', '2024-03-20 22:29:29.632558+00', 'Gillian Lamb'),
	(8, 'Surgeon', '2024-03-20 22:29:45.363131+00', 'Gillian Lamb'),
	(9, 'Writer', '2024-03-20 22:30:03.884153+00', 'Gillian Lamb'),
	(5, 'Company Director', '2024-03-20 22:28:52.231596+00', 'Gillian Lamb'),
	(11, 'Judge', '2024-03-20 22:30:54.837705+00', 'Gillian Lamb'),
	(12, 'Poet
', '2024-03-20 22:31:11.920228+00', 'Gillian Lamb'),
	(13, 'Diplomat', '2024-03-20 22:31:43.251714+00', 'Gillian Lamb'),
	(14, 'Administrator', '2024-03-20 22:40:52.332742+00', 'Gillian Lamb'),
	(15, 'Bishop', '2024-03-20 22:43:00.259267+00', 'Gillian Lamb'),
	(16, 'Financial', '2024-03-21 11:42:05.558194+00', 'Gillian Lamb'),
	(10, 'Merchant', '2024-03-20 22:30:30.61205+00', 'Gillian Lamb');


--
-- Data for Name: organisation_feature; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_language; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_member_of; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."organisation_moment" ("id", "created_at", "organisation", "moment", "added_by") VALUES
	(1, '2024-04-18 16:30:19.991788+00', 'eton-college-4', '2', 'Gillian Lamb'),
	(2, '2024-04-18 16:30:33.807198+00', 'st-johns-cambridge-5', '2', 'Gillian Lamb'),
	(3, '2024-04-18 16:30:47.262923+00', 'west-indian-company-10', '2', 'Gillian Lamb'),
	(4, '2024-04-18 16:31:05.405647+00', 'charterhouse-11', '2', 'Gillian Lamb'),
	(5, '2024-04-18 16:31:18.898669+00', 'harrow-16', '2', 'Gillian Lamb'),
	(6, '2024-04-18 16:31:38.713659+00', 'lincolns-inn-17', '2', 'Gillian Lamb'),
	(7, '2024-04-18 16:31:54.761351+00', 'great-northern-railway-9', '2', 'Gillian Lamb'),
	(8, '2024-04-18 16:32:14.814325+00', 'el-dock-company-18', '2', 'Gillian Lamb'),
	(9, '2024-04-18 16:32:29.822872+00', 'athaneum-24', '2', 'Gillian Lamb'),
	(10, '2024-04-18 16:32:43.301962+00', 'greenwich-hospital-25', '2', 'Gillian Lamb'),
	(11, '2024-04-18 16:32:58.725183+00', 'st-bartholomews-hospital-2', '2', 'Gillian Lamb'),
	(12, '2024-04-18 16:33:23.516458+00', 'society-of-psychorolutes-3', '2', 'Gillian Lamb');


--
-- Data for Name: organisation_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_source; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_url; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person_feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_feature" ("id", "created_at", "person", "image_url", "image_title", "image_description", "added_by") VALUES
	(1, '2024-06-27 13:57:27.059276+00', 'william-cotton-160', 'https://upload.wikimedia.org/wikipedia/commons/7/7d/William_Cotton_by_Matthew_Noble_1855.JPG', 'William Cotton by Matthew Noble 1855', 'Bust of William Cotton', NULL),
	(2, '2024-06-27 14:40:37.888768+00', 'sir-robert-peel-138', 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Sir_Robert_Peel%2C_2nd_Bt_by_John_Linnell.jpg', 'Sir Robert Peel, 2nd Bt, by John Linnell', 'Painting of Sir Robert Peel, from the National Portrait Gallery, London', NULL);


--
-- Data for Name: person_funder; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_funder" ("id", "created_at", "person", "organisation", "added_by") VALUES
	(1, '2024-03-21 10:56:50.96193+00', 'richard-edward-arden-2', 'kings-college-london-39', NULL);


--
-- Data for Name: person_relationship_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_relationship_type" ("id", "name", "created_at") VALUES
	(1, 'Spouse', '2024-03-21 09:49:59.041477+00'),
	(2, 'Schoolmate', '2024-03-21 09:50:08.430388+00'),
	(3, 'University compatriot', '2024-03-21 09:50:22.717325+00'),
	(4, 'Business', '2024-03-21 09:50:35.788372+00'),
	(5, 'Religious', '2024-03-21 09:51:00.674047+00'),
	(6, 'Family member', '2024-03-21 11:27:26.186439+00'),
	(7, 'Political', '2024-03-21 11:30:03.591321+00'),
	(8, 'Legal', '2024-03-29 22:19:49.138245+00'),
	(9, 'Friend', '2024-03-29 22:51:41.008061+00');


--
-- Data for Name: person_knows; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_knows" ("id", "created_at", "person", "knows", "added_by", "relationship") VALUES
	(28, '2024-03-21 11:25:49.077831+00', 'william-cotton-160', 'nathaniel-woodward-161', 'Gillian Lamb', 'Religious'),
	(29, '2024-03-21 11:27:05.292294+00', 'william-cotton-160', 'agnes-cotton-141', 'Gillian Lamb', 'Family member'),
	(30, '2024-03-21 11:29:45.775322+00', 'william-cotton-160', 'sir-robert-peel-138', 'Gillian Lamb', 'Political'),
	(31, '2024-03-21 11:35:43.31538+00', 'william-cotton-160', 'henry-acland-140', 'Gillian Lamb', 'Religious'),
	(2, '2024-02-22 14:06:08.587132+00', 'richard-armstrong-89', 'lord-arden-1', 'Gillian Lamb', NULL),
	(6, '2024-02-29 12:48:12.44902+00', 'lancelot-shadwell-102', 'anthony-richardson-122', 'Gillian Lamb', NULL),
	(3, '2024-02-22 14:06:40.805512+00', 'richard-armstrong-89', 'richard-edward-arden-2', 'Gillian Lamb', NULL),
	(9, '2024-02-29 12:50:55.920285+00', 'john-atkins-105', 'andrew-burnaby-126', 'Gillian Lamb', NULL),
	(12, '2024-03-20 22:16:32.194953+00', 'astley-p-cooper-109', 'duke-of-wellington-137', 'Gillian Lamb', NULL),
	(13, '2024-03-20 22:17:04.79425+00', 'astley-p-cooper-109', 'sir-robert-peel-138', 'Gillian Lamb', NULL),
	(21, '2024-03-20 22:52:44.24919+00', 'earl-of-aberdeen-151', 'henry-dundas-152', 'Gillian Lamb', NULL),
	(16, '2024-03-20 22:21:19.73161+00', 'benjamin-collins-brodie-107', 'william-clift-130', 'Gillian Lamb', NULL),
	(23, '2024-03-20 23:02:25.731888+00', 'earl-of-aberdeen-151', 'william-pitt-153', 'Gillian Lamb', NULL),
	(24, '2024-03-20 23:03:05.850881+00', 'earl-of-aberdeen-151', 'richard-sheridan-154', 'Gillian Lamb', NULL),
	(25, '2024-03-21 09:56:40.237339+00', 'archdeacon-cambridge-108', 'joshua-watson-133', 'Gillian Lamb', NULL),
	(26, '2024-03-21 09:57:03.30449+00', 'archdeacon-cambridge-108', 'john-bowdler-135', 'Gillian Lamb', NULL),
	(27, '2024-03-21 09:57:33.088247+00', 'archdeacon-cambridge-108', 'frances-burney-131', 'Gillian Lamb', NULL),
	(7, '2024-02-29 12:49:02.198266+00', 'nicholas-conyngham-tyndal-103', 'henry-brougham-123', 'Gillian Lamb', 'Business'),
	(8, '2024-02-29 12:50:04.919605+00', 'nicholas-conyngham-tyndal-103', 'lord-wensleydale-124', 'Gillian Lamb', 'Business'),
	(11, '2024-02-29 12:53:31.687513+00', 'henry-hobhouse-115', 'sir-robert-peel-138', 'Gillian Lamb', 'Political'),
	(33, '2024-03-29 22:19:14.678694+00', 'nicholas-conyngham-tyndal-103', 'lord-wensleydale-163', 'Gillian Lamb', 'Business'),
	(34, '2024-03-29 22:48:24.616178+00', 'benjamin-collins-brodie-165', 'benjamin-collins-127', 'Gillian Lamb', 'Family member'),
	(35, '2024-03-29 22:49:34.223809+00', 'benjamin-collins-brodie-165', 'william-lawrence-128', 'Gillian Lamb', 'Friend'),
	(36, '2024-03-29 22:50:43.608737+00', 'benjamin-collins-brodie-165', 'henry-ellis-129', 'Gillian Lamb', 'Friend'),
	(32, '2024-03-29 22:18:37.867901+00', 'nicholas-conyngham-tyndal-103', 'john-pocock-164', 'Gillian Lamb', 'Family member'),
	(37, '2024-03-29 23:23:30.227927+00', 'henry-halford-112', 'sir-john-vaughan-166', 'Gillian Lamb', 'Family member'),
	(38, '2024-03-29 23:33:49.944156+00', 'sir-john-vaughan-166', 'sir-charles-richard-vaughan-167', 'Gillian Lamb', 'Family member'),
	(39, '2024-03-29 23:34:47.684586+00', 'henry-halford-112', 'sir-charles-richard-vaughan-167', 'Gillian Lamb', 'Family member'),
	(40, '2024-03-29 23:39:16.936753+00', 'robert-henley-113', 'sir-robert-peel-138', 'Gillian Lamb', 'Family member');


--
-- Data for Name: person_member_of; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_member_of" ("id", "created_at", "person", "organisation", "added_by") VALUES
	(29, '2024-03-21 11:36:27.809939+00', 'william-cotton-160', 'east-india-company-8', 'Gillian Lamb'),
	(28, '2024-03-21 10:04:17.245985+00', 'archdeacon-cambridge-108', 'society-for-promoting-christian-knowledge-38', 'Gillian Lamb'),
	(1, '2024-02-29 14:23:05.607316+00', 'george-doyley-111', 'hackney-phalanx-of-high-church-men-12', 'Gillian Lamb'),
	(2, '2024-02-29 14:23:26.87985+00', 'john-lonsdale-117', 'hackney-phalanx-of-high-church-men-12', 'Gillian Lamb'),
	(3, '2024-02-29 14:23:59.816404+00', 'nicholas-conyngham-tyndal-103', 'hackney-phalanx-of-high-church-men-12', 'Gillian Lamb'),
	(5, '2024-02-29 14:26:31.233275+00', 'nicholas-conyngham-tyndal-103', 'trinity-college-cambridge-6', 'Gillian Lamb'),
	(4, '2024-02-29 14:25:28.930303+00', 'lancelot-shadwell-102', 'st-johns-cambridge-5', 'Gillian Lamb'),
	(44, '2024-03-31 07:05:10.489774+00', 'john-lonsdale-117', 'society-for-promoting-christian-knowledge-38', 'Gillian Lamb'),
	(45, '2024-03-31 07:13:12.06558+00', 'john-lonsdale-117', 'national-society-for-propagation-of-the-gospel-44', 'Gillian Lamb'),
	(25, '2024-03-20 22:14:15.807933+00', 'astley-p-cooper-109', 'magdalen-college-oxford-32', 'Gillian Lamb'),
	(24, '2024-03-05 23:20:28.030801+00', 'benjamin-collins-brodie-107', 'charterhouse-11', 'Gillian Lamb'),
	(22, '2024-03-05 23:17:11.455651+00', 'christopher-benson-106', 'trinity-college-cambridge-6', 'Gillian Lamb'),
	(21, '2024-03-05 23:16:43.144223+00', 'christopher-benson-106', 'eton-college-4', 'Gillian Lamb'),
	(46, '2024-03-31 07:15:31.743487+00', 'john-lonsdale-117', 'society-for-promoting-christian-knowledge-38', 'Gillian Lamb'),
	(19, '2024-03-05 23:15:21.297365+00', 'john-atkins-105', 'el-dock-company-18', 'Gillian Lamb'),
	(20, '2024-03-05 23:15:46.681747+00', 'john-atkins-105', 'west-indian-company-10', 'Gillian Lamb'),
	(18, '2024-03-05 23:14:18.917995+00', 'william-astell-104', 'el-dock-company-18', 'Gillian Lamb'),
	(17, '2024-03-05 23:11:06.343526+00', 'william-astell-104', 'great-northern-railway-9', 'Gillian Lamb'),
	(16, '2024-03-05 23:09:38.840941+00', 'william-astell-104', 'east-india-company-8', 'Gillian Lamb'),
	(15, '2024-03-05 23:07:52.974432+00', 'nicholas-conyngham-tyndal-103', 'chelmsford-grammar-7', 'Gillian Lamb'),
	(14, '2024-03-05 23:07:24.03236+00', 'nicholas-conyngham-tyndal-103', 'lincolns-inn-17', 'Gillian Lamb'),
	(13, '2024-03-05 23:03:38.071211+00', 'lancelot-shadwell-102', 'lincolns-inn-17', 'Gillian Lamb'),
	(12, '2024-03-05 22:56:38.453734+00', 'lancelot-shadwell-102', 'st-johns-cambridge-5', 'Gillian Lamb'),
	(11, '2024-03-05 22:55:54.14906+00', 'lancelot-shadwell-102', 'eton-college-4', 'Gillian Lamb'),
	(10, '2024-03-05 22:55:20.0203+00', 'lancelot-shadwell-102', 'society-of-psychorolutes-3', 'Gillian Lamb'),
	(9, '2024-03-05 22:54:03.418529+00', 'william-astell-104', 'great-northern-railway-9', 'Gillian Lamb'),
	(8, '2024-03-05 22:52:39.497402+00', 'william-astell-104', 'east-india-company-8', 'Gillian Lamb'),
	(7, '2024-02-29 14:27:28.876467+00', 'lord-arden-1', 'trinity-college-cambridge-6', 'Gillian Lamb'),
	(6, '2024-02-29 14:26:50.409889+00', 'christopher-benson-106', 'trinity-college-cambridge-6', 'Gillian Lamb'),
	(30, '2024-03-21 11:40:47.3452+00', 'william-cotton-160', 'bank-of-england-40', 'Gillian Lamb'),
	(33, '2024-03-29 22:17:52.008185+00', 'john-pocock-164', 'eton-college-4', 'Gillian Lamb'),
	(34, '2024-03-29 22:56:46.522363+00', 'astley-p-cooper-109', 'royal-college-of-surgeons-21', 'Gillian Lamb'),
	(35, '2024-03-29 22:57:20.58428+00', 'astley-p-cooper-109', 'royal-society-dining-club-20', 'Gillian Lamb'),
	(36, '2024-03-29 23:04:32.109419+00', 'archdeacon-cambridge-108', 'national-society-for-promoting-religious-education-41', 'Gillian Lamb'),
	(37, '2024-03-29 23:52:05.628799+00', 'edward-hawke-locker-169', 'royal-society-dining-club-20', 'Gillian Lamb'),
	(38, '2024-03-29 23:52:31.078618+00', 'edward-hawke-locker-169', 'athaneum-24', 'Gillian Lamb'),
	(39, '2024-03-29 23:53:18.235603+00', 'edward-hawke-locker-169', 'greenwich-hospital-25', 'Gillian Lamb'),
	(40, '2024-03-31 06:59:38.029045+00', 'edward-hawke-locker-116', 'the-graphic-43', 'Gillian Lamb'),
	(41, '2024-03-31 07:00:19.088481+00', 'edward-hawke-locker-116', 'eton-college-4', 'Gillian Lamb'),
	(42, '2024-03-31 07:00:59.613731+00', 'edward-hawke-locker-116', 'board-of-control-of-indian-affairs-23', NULL),
	(43, '2024-03-31 07:04:25.22031+00', 'john-lonsdale-117', 'eton-college-4', 'Gillian Lamb'),
	(47, '2024-03-31 21:05:12.769134+00', 'james-mill-171', 'society-for-promoting-christian-knowledge-38', 'Gillian Lamb'),
	(48, '2024-03-31 21:14:35.955734+00', 'george-birkbeck-172', 'society-for-the-diffusion-of-useful-knowledge-46', 'Gillian Lamb'),
	(49, '2024-03-31 21:14:56.467461+00', 'james-mill-171', 'society-for-the-diffusion-of-useful-knowledge-46', 'Gillian Lamb');


--
-- Data for Name: person_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_moment" ("id", "created_at", "person", "moment", "added_by") VALUES
	(1, '2024-03-21 11:14:44.002332+00', 'richard-edward-arden-2', '2', NULL),
	(2, '2024-03-21 11:14:57.085739+00', 'lord-arden-1', '2', NULL),
	(3, '2024-03-21 11:15:45.037152+00', 'lancelot-shadwell-102', '2', NULL),
	(4, '2024-03-21 11:15:59.983757+00', 'nicholas-conyngham-tyndal-103', '2', NULL),
	(5, '2024-03-21 11:16:11.860682+00', 'william-astell-104', '2', NULL),
	(6, '2024-03-21 11:16:35.570322+00', 'john-atkins-105', '2', NULL),
	(7, '2024-03-21 11:16:47.731123+00', 'christopher-benson-106', '2', NULL),
	(8, '2024-03-21 11:17:05.150608+00', 'benjamin-collins-brodie-107', '2', NULL),
	(9, '2024-03-21 11:17:18.359446+00', 'archdeacon-cambridge-108', '2', NULL),
	(10, '2024-03-21 11:17:33.665058+00', 'astley-p-cooper-109', '2', NULL),
	(11, '2024-03-21 11:18:20.896402+00', 'george-doyley-111', '2', NULL),
	(12, '2024-06-27 15:04:53.298043+00', 'william-cotton-160', '2', NULL);


--
-- Data for Name: person_occupation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_occupation" ("id", "person", "occupation", "created_at", "added_by") VALUES
	(1, 'lancelot-shadwell-102', 'Barrister', '2024-03-20 22:27:55.75265+00', NULL),
	(2, 'nicholas-conyngham-tyndal-103', 'Barrister', '2024-03-20 22:28:21.56275+00', NULL),
	(3, 'william-astell-104', 'Company Director', '2024-03-20 22:32:21.425759+00', NULL),
	(4, 'john-atkins-105', 'Merchant', '2024-03-20 22:32:42.708106+00', NULL),
	(5, 'christopher-benson-106', 'Reverend', '2024-03-20 22:33:05.44931+00', NULL),
	(6, 'benjamin-collins-brodie-107', 'Doctor', '2024-03-20 22:33:44.186797+00', NULL),
	(7, 'archdeacon-cambridge-108', 'Reverend', '2024-03-20 22:34:07.165337+00', NULL),
	(8, 'astley-p-cooper-109', 'Surgeon', '2024-03-20 22:34:55.125434+00', NULL),
	(10, 'george-doyley-111', 'Reverend', '2024-03-20 22:36:47.290049+00', NULL),
	(11, 'henry-halford-112', 'Doctor', '2024-03-20 22:37:34.383796+00', NULL),
	(12, 'robert-henley-113', 'Writer', '2024-03-20 22:38:15.820822+00', NULL),
	(13, 'robert-harry-inglis-114', 'Politician', '2024-03-20 22:39:45.645672+00', NULL),
	(14, 'edward-hawke-locker-116', 'Administrator', '2024-03-20 22:41:32.210361+00', NULL),
	(15, 'john-lonsdale-117', 'Bishop', '2024-03-20 22:43:34.118937+00', NULL),
	(16, 'william-manning-118', 'Merchant', '2024-03-20 22:44:12.826458+00', NULL),
	(17, 'sir-john-nichol-119', 'Judge', '2024-03-20 22:44:43.416977+00', NULL),
	(18, 'william-sotheby-121', 'Poet
', '2024-03-20 22:45:16.127537+00', NULL),
	(19, 'william-cotton-160', 'Financial', '2024-03-21 11:42:57.81037+00', 'Gillian Lamb');


--
-- Data for Name: person_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person_source; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person_url; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_feature; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_source; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_url; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 3, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."country_id_seq"', 249, true);


--
-- Name: currency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."currency_id_seq"', 2, true);


--
-- Name: donation_agent_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_agent_organisation_id_seq"', 1, false);


--
-- Name: donation_agent_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_agent_person_id_seq"', 1, true);


--
-- Name: donation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_id_seq"', 3, true);


--
-- Name: donation_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_moment_id_seq"', 1, true);


--
-- Name: donation_recipient_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_recipient_organisation_id_seq"', 1, true);


--
-- Name: donation_recipient_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_recipient_person_id_seq"', 1, false);


--
-- Name: donation_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_same_as_id_seq"', 1, false);


--
-- Name: donation_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_source_id_seq"', 1, false);


--
-- Name: donation_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_tag_id_seq"', 1, false);


--
-- Name: donation_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_theme_id_seq"', 1, false);


--
-- Name: donation_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_url_id_seq"', 1, false);


--
-- Name: ethnicity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ethnicity_id_seq"', 1, true);


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_id_seq"', 3, true);


--
-- Name: event_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_moment_id_seq"', 1, true);


--
-- Name: event_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_organisation_id_seq"', 3, true);


--
-- Name: event_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_person_id_seq"', 1, true);


--
-- Name: event_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_same_as_id_seq"', 1, false);


--
-- Name: event_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_source_id_seq"', 1, false);


--
-- Name: event_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_tag_id_seq"', 1, false);


--
-- Name: event_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_theme_id_seq"', 1, false);


--
-- Name: event_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_type_id_seq"', 1, true);


--
-- Name: event_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_url_id_seq"', 1, false);


--
-- Name: gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."gender_id_seq"', 3, true);


--
-- Name: language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."language_id_seq"', 633, true);


--
-- Name: moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."moment_id_seq"', 7, true);


--
-- Name: occupation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."occupation_id_seq"', 16, true);


--
-- Name: organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_id_seq"', 47, true);


--
-- Name: organisation_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_image_id_seq"', 1, false);


--
-- Name: organisation_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_language_id_seq"', 1, false);


--
-- Name: organisation_member_of_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_member_of_id_seq"', 1, false);


--
-- Name: organisation_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_moment_id_seq"', 12, true);


--
-- Name: organisation_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_same_as_id_seq"', 1, false);


--
-- Name: organisation_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_source_id_seq"', 1, false);


--
-- Name: organisation_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_tag_id_seq"', 1, false);


--
-- Name: organisation_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_theme_id_seq"', 1, false);


--
-- Name: organisation_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_type_id_seq"', 12, true);


--
-- Name: organisation_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_url_id_seq"', 1, false);


--
-- Name: person_funder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_funder_id_seq"', 1, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_id_seq"', 172, true);


--
-- Name: person_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_image_id_seq"', 2, true);


--
-- Name: person_knows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_knows_id_seq"', 40, true);


--
-- Name: person_member_of_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_member_of_organisation_id_seq"', 49, true);


--
-- Name: person_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_moment_id_seq"', 12, true);


--
-- Name: person_occupation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_occupation_id_seq"', 19, true);


--
-- Name: person_relationship_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_relationship_type_id_seq"', 9, true);


--
-- Name: person_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_same_as_id_seq"', 1, false);


--
-- Name: person_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_source_id_seq"', 1, false);


--
-- Name: person_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_tag_id_seq"', 1, false);


--
-- Name: person_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_theme_id_seq"', 1, false);


--
-- Name: person_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_url_id_seq"', 1, false);


--
-- Name: place_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_feature_id_seq"', 1, false);


--
-- Name: place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_id_seq"', 1, true);


--
-- Name: place_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_moment_id_seq"', 1, false);


--
-- Name: place_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_same_as_id_seq"', 1, false);


--
-- Name: place_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_source_id_seq"', 1, false);


--
-- Name: place_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_theme_id_seq"', 1, false);


--
-- Name: place_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_type_id_seq"', 1, false);


--
-- Name: place_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_url_id_seq"', 1, false);


--
-- Name: researcher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."researcher_id_seq"', 2, true);


--
-- Name: source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."source_id_seq"', 1, false);


--
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tag_id_seq"', 1, false);


--
-- Name: theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."theme_id_seq"', 1, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
