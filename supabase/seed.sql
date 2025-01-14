SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
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
	('00000000-0000-0000-0000-000000000000', '838fbf46-1781-4666-9cb7-41c6fbbbcd16', '{"action":"login","actor_id":"a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd","actor_username":"jmvieira@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-02-23 12:30:23.819767+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e902f588-d23a-40be-9822-c266a4538516', '{"action":"user_confirmation_requested","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-10-22 09:02:53.707566+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c35a6613-d833-4251-811b-bbdd514b4ea8', '{"action":"user_signedup","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"team"}', '2024-10-22 09:06:45.18841+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d617f79-8dbf-4a06-8c65-56347a89b7fd', '{"action":"user_recovery_requested","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"user"}', '2024-10-22 09:09:20.761915+00', ''),
	('00000000-0000-0000-0000-000000000000', '98b57a7f-d718-4612-86a8-46f48360d1ff', '{"action":"login","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"account"}', '2024-10-22 09:09:38.326831+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e06089cb-8f2c-4892-9cef-618d78b35c25', '{"action":"user_recovery_requested","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"user"}', '2024-10-22 09:13:51.549952+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b32a45c-f3ac-4d4f-9e30-6a4655ea7b12', '{"action":"login","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"account"}', '2024-10-22 09:14:11.703955+00', ''),
	('00000000-0000-0000-0000-000000000000', '26a54feb-377e-41fb-952e-d4c1af61b387', '{"action":"user_recovery_requested","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"user"}', '2024-10-22 09:26:37.405954+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5d93524-b09a-4b86-8119-76cd65c4acf9', '{"action":"login","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"account"}', '2024-10-22 09:27:17.484578+00', ''),
	('00000000-0000-0000-0000-000000000000', '90e576b4-f339-4994-9b2d-712c90ab3fc8', '{"action":"user_recovery_requested","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"user"}', '2024-10-22 09:27:38.034364+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b0fca1d-b47e-462a-976e-5fac7cabdbd0', '{"action":"login","actor_id":"abfd0a43-1863-4ea4-8711-a780d424354e","actor_username":"jose.m.vieira@kcl.ac.uk","actor_via_sso":false,"log_type":"account"}', '2024-10-22 09:29:58.972902+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', 'authenticated', 'authenticated', 'jmvieira@gmail.com', '$2a$10$mEYtE7BziMGL6/7H9JXR7.vEOfAGDmW9SxVKok/QnGrh/cRmIqxNK', '2024-02-23 12:28:28.420142+00', NULL, '', NULL, '', '2024-02-23 12:28:37.734808+00', '', '', NULL, '2024-02-23 12:30:23.820366+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-02-23 12:28:28.412685+00', '2024-02-23 12:30:23.822887+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'abfd0a43-1863-4ea4-8711-a780d424354e', 'authenticated', 'authenticated', 'jose.m.vieira@kcl.ac.uk', '$2a$10$no3nqOiKUUi0nucP0u5D5OPdc.T3w2vzVMPN.QsfBNB7uiOocjaQC', '2024-10-22 09:06:45.192552+00', NULL, '', '2024-10-22 09:02:53.713711+00', '', '2024-10-22 09:27:38.035349+00', '', '', NULL, '2024-10-22 09:29:58.979633+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "abfd0a43-1863-4ea4-8711-a780d424354e", "email": "jose.m.vieira@kcl.ac.uk", "email_verified": false, "phone_verified": false}', NULL, '2024-10-22 09:02:53.668274+00', '2024-10-22 09:29:58.983905+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', '{"sub": "a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd", "email": "jmvieira@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-02-23 12:28:28.417023+00', '2024-02-23 12:28:28.417082+00', '2024-02-23 12:28:28.417082+00', 'f8f9bfd8-12f7-47f3-8a54-0085b177a4f2'),
	('abfd0a43-1863-4ea4-8711-a780d424354e', 'abfd0a43-1863-4ea4-8711-a780d424354e', '{"sub": "abfd0a43-1863-4ea4-8711-a780d424354e", "email": "jose.m.vieira@kcl.ac.uk", "email_verified": false, "phone_verified": false}', 'email', '2024-10-22 09:02:53.696562+00', '2024-10-22 09:02:53.696619+00', '2024-10-22 09:02:53.696619+00', '3e9181ae-1d88-479b-947c-371d02ba8d6c');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('1e7e82ff-55f2-4947-a469-117143dd5742', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', '2024-02-23 12:30:23.8205+00', '2024-02-23 12:30:23.8205+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2.1 Safari/605.1.15', '90.247.72.161', NULL),
	('f5b4f2f0-a3b0-4dbf-bc7b-149e16b13be5', 'abfd0a43-1863-4ea4-8711-a780d424354e', '2024-10-22 09:06:45.207781+00', '2024-10-22 09:06:45.207781+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.78 Safari/537.36', '45.85.242.124', NULL),
	('24cc7ff4-0f6c-46c8-a51e-bb6dafb9f7b9', 'abfd0a43-1863-4ea4-8711-a780d424354e', '2024-10-22 09:09:38.329489+00', '2024-10-22 09:09:38.329489+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', '143.58.172.178', NULL),
	('3d9ea9a4-1530-431a-9750-e111ec859383', 'abfd0a43-1863-4ea4-8711-a780d424354e', '2024-10-22 09:14:11.710425+00', '2024-10-22 09:14:11.710425+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:130.0) Gecko/20100101 Firefox/130.0', '143.58.172.178', NULL),
	('a0b78765-c727-4f12-ab95-7abcb180818c', 'abfd0a43-1863-4ea4-8711-a780d424354e', '2024-10-22 09:27:17.490061+00', '2024-10-22 09:27:17.490061+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', '143.58.172.178', NULL),
	('ca4835e4-a67b-4018-92be-8fc4e54f509e', 'abfd0a43-1863-4ea4-8711-a780d424354e', '2024-10-22 09:29:58.979721+00', '2024-10-22 09:29:58.979721+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.78 Safari/537.36', '121.91.87.240', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('1e7e82ff-55f2-4947-a469-117143dd5742', '2024-02-23 12:30:23.823371+00', '2024-02-23 12:30:23.823371+00', 'otp', 'bd014b29-488c-4ffd-802d-670af27d8023'),
	('f5b4f2f0-a3b0-4dbf-bc7b-149e16b13be5', '2024-10-22 09:06:45.241266+00', '2024-10-22 09:06:45.241266+00', 'otp', '5d77a0a7-d746-4e87-930d-bef41bad3ed5'),
	('24cc7ff4-0f6c-46c8-a51e-bb6dafb9f7b9', '2024-10-22 09:09:38.334574+00', '2024-10-22 09:09:38.334574+00', 'otp', 'e53a7485-2485-4aef-872e-8d1da252d6aa'),
	('3d9ea9a4-1530-431a-9750-e111ec859383', '2024-10-22 09:14:11.719528+00', '2024-10-22 09:14:11.719528+00', 'otp', '7c8b1012-ea84-4e3f-a1ef-25cd619dfae7'),
	('a0b78765-c727-4f12-ab95-7abcb180818c', '2024-10-22 09:27:17.496865+00', '2024-10-22 09:27:17.496865+00', 'otp', '676dcf24-9140-4667-ae9a-30dddf30859f'),
	('ca4835e4-a67b-4018-92be-8fc4e54f509e', '2024-10-22 09:29:58.984489+00', '2024-10-22 09:29:58.984489+00', 'otp', '48c4954f-03a2-4b0f-bc47-e777b9e7e597');


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
	('00000000-0000-0000-0000-000000000000', 3, 'Pq9aVgIq4FQRITRbm2UiZA', 'a5fc8b41-9074-4e8f-96d8-2311c6bbc4dd', false, '2024-02-23 12:30:23.821538+00', '2024-02-23 12:30:23.821538+00', NULL, '1e7e82ff-55f2-4947-a469-117143dd5742'),
	('00000000-0000-0000-0000-000000000000', 4, '0QClGQQg7v57k3-6RnMz0Q', 'abfd0a43-1863-4ea4-8711-a780d424354e', false, '2024-10-22 09:06:45.220006+00', '2024-10-22 09:06:45.220006+00', NULL, 'f5b4f2f0-a3b0-4dbf-bc7b-149e16b13be5'),
	('00000000-0000-0000-0000-000000000000', 5, '0j9bVRDehw6F6SqhSagt_Q', 'abfd0a43-1863-4ea4-8711-a780d424354e', false, '2024-10-22 09:09:38.331326+00', '2024-10-22 09:09:38.331326+00', NULL, '24cc7ff4-0f6c-46c8-a51e-bb6dafb9f7b9'),
	('00000000-0000-0000-0000-000000000000', 6, 'eFab6gR1e7u19ugKTmZLDA', 'abfd0a43-1863-4ea4-8711-a780d424354e', false, '2024-10-22 09:14:11.713355+00', '2024-10-22 09:14:11.713355+00', NULL, '3d9ea9a4-1530-431a-9750-e111ec859383'),
	('00000000-0000-0000-0000-000000000000', 7, 'Jof5QsSl7iwwTzvmm4kXFA', 'abfd0a43-1863-4ea4-8711-a780d424354e', false, '2024-10-22 09:27:17.49246+00', '2024-10-22 09:27:17.49246+00', NULL, 'a0b78765-c727-4f12-ab95-7abcb180818c'),
	('00000000-0000-0000-0000-000000000000', 8, 'EuNErVyESe16vbQsGEujvA', 'abfd0a43-1863-4ea4-8711-a780d424354e', false, '2024-10-22 09:29:58.981084+00', '2024-10-22 09:29:58.981084+00', NULL, 'ca4835e4-a67b-4018-92be-8fc4e54f509e');


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
	(3, 'Jonah Miller', '2024-08-12 12:17:14+00', 'Erika Melek Delgado'),
	(4, 'Arin Edwards', '2024-08-12 12:19:27+00', 'Erika Melek Delgado'),
	(5, 'Im Chiew Ng', '2024-08-12 12:20:11+00', 'Erika Melek Delgado'),
	(6, 'Savina Kataria', '2024-08-12 12:20:42+00', 'Erika Melek Delgado'),
	(7, 'Ariunzaya Batkhuyag', '2024-08-12 12:21:23+00', 'Erika Melek Delgado'),
	(8, 'Samantha Callaghan', '2024-10-15 08:00:20.857381+00', 'Erika Melek Delgado'),
	(1, 'Erika Melek Delgado', '2024-02-27 14:12:42.366848+00', 'Erika Melek Delgado'),
	(2, 'Gillian Lamb', '2024-02-27 14:13:02.735719+00', 'Erika Melek Delgado');


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
	(249, 'Zimbabwe', '2024-02-16 12:10:46.763128+00', NULL),
	(252, 'Scotland', '2024-08-17 16:42:25+00', 'Arin Edwards'),
	(253, 'The Channel Islands', '2024-09-01 15:36:34+00', 'Arin Edwards');


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
	(1, 'London', 'london-1', NULL, NULL, '2024-04-22 15:50:28.751496+00', true, NULL, NULL, NULL),
	(3, 'Dublin', 'dublin-3', NULL, NULL, '2024-08-14 10:40:45+00', true, 53.349804, -6.26031, 'Erika Melek Delgado'),
	(4, 'Cambridge', 'cambridge-4', NULL, 'Cambridge is a city of Cambridgeshire county located in East England. ', '2024-08-14 14:31:16+00', true, 52.20254, 0.13124, 'Arin Edwards'),
	(5, 'Bury St Edmunds ', 'bury-st-edmunds-5', NULL, NULL, '2024-08-14 21:23:55.796777+00', true, 52.246868, 0.71119, 'Im Chiew Ng'),
	(8, 'Cheshire', 'cheshire-8', '', 'Cheshire is a county in northwest England', '2024-08-15 16:25:49.4292+00', true, 53.36464, -3.06927, 'Arin Edwards'),
	(9, 'Winchester', 'winchester-9', NULL, 'Winchester is a cathedral city in Hampshire, in south-east England. ', '2024-08-15 16:50:49+00', true, 51.06163, -1.31051, 'Arin Edwards'),
	(7, 'Salisbury', 'salisbury-7', '', 'Salisbury is a medieval cathedral city in the Wiltshire county of south England.', '2024-08-15 14:19:17+00', true, 51.067402, -1.79763, 'Arin Edwards'),
	(10, 'Northamptonshire', 'northampshire-10', NULL, 'Northamptonshire is a county in the East Midlands of England.', '2024-08-15 17:00:10+00', true, 52.240479, -0.902656, 'Arin Edwards'),
	(11, 'Oxford', 'oxford-11', NULL, 'Oxford is a city in central south England', '2024-08-15 18:27:09+00', true, 51.752022, -1.257677, 'Arin Edwards'),
	(12, 'India', 'india-12', NULL, NULL, '2024-08-16 15:34:18+00', true, 28.632429, 77.218788, 'Jonah Miller'),
	(13, 'Manfield', 'manfield-13', NULL, 'Yorkshire', '2024-08-16 15:51:03.239229+00', true, 54.22797, -1.37897, 'Jonah Miller'),
	(14, 'Anglesey', 'anglesey-14', NULL, 'Island off the north-west coast of Wales', '2024-08-16 16:37:07+00', true, 53.2833, -4.3333, 'Arin Edwards'),
	(15, 'Limerick', 'limerick-15', 'Contae Luimnigh', 'A south western county in Ireland', '2024-08-16 16:51:43+00', true, 52.668018, -8.630498, 'Arin Edwards'),
	(16, 'Somerset', 'somerset-16', NULL, 'A ceremonial county in South West England', '2024-08-16 16:59:29+00', true, 51.0635, 2.7547, 'Arin Edwards'),
	(17, 'The United Kingdom', 'the-united-kingdom-17', 'The British Isles, The UK, The United Kingdom of Great Britain and Northern Ireland', 'A sovereign island country in Northwestern Europe, comprising England, Scotland, Wales, and Northern Ireland.', '2024-08-17 14:50:16+00', true, 53.55, 2.4333, 'Arin Edwards'),
	(18, 'Leeds', 'leeds-18', NULL, 'A city in the northern English county of Yorkshire.', '2024-08-17 16:20:15.194684+00', true, 53.8008, 1.5491, 'Arin Edwards'),
	(19, 'Ellenborough', 'ellenborough-19', NULL, 'Ellenborough is a suburb of the town of Maryport, Cumbria, Cumberland, in the North West region of England.
', '2024-08-17 16:27:48+00', true, 54.71243, -3.47744, 'Arin Edwards'),
	(22, 'St Andrews, Scotland', '', NULL, NULL, '2024-08-20 16:53:35.133791+00', true, NULL, NULL, 'Ariunzaya Batkhuyag'),
	(20, 'Edinburgh, Scotland', 'edinburgh-20', NULL, NULL, '2024-08-20 16:47:00.368927+00', true, NULL, NULL, 'Ariunzaya Batkhuyag'),
	(23, 'Devon', 'devon-23', NULL, NULL, '2024-08-20 21:42:01.757624+00', true, 50.715557, -3.530875, 'Im Chiew Ng'),
	(24, 'Crimea', 'crimea-24', NULL, NULL, '2024-08-21 11:09:46+00', true, 45.308159, 34.563011, 'Jonah Miller'),
	(25, 'Sebastopol', 'sebastopol-25', NULL, NULL, '2024-08-21 11:11:15+00', true, 44.57681, 33.65782, 'Jonah Miller'),
	(26, 'Lucknow', 'lucknow-26', NULL, NULL, '2024-08-21 11:12:13+00', true, 26.846251, 80.949028, 'Jonah Miller'),
	(27, 'Kent', 'kent-27', NULL, 'A county in South East England.', '2024-08-26 14:14:49+00', true, 51.278709, 0.521725, 'Arin Edwards'),
	(28, 'Leicestershire', 'leicestershire-28', NULL, 'A county in the East Midlands of England', '2024-08-26 14:19:00+00', true, 52.634861, -1.12906, 'Arin Edwards'),
	(29, 'Yorkshire', 'yorkshire-29', NULL, ' A historic county in northern England.', '2024-08-26 14:23:32+00', true, 53.9591, 1.0792, 'Arin Edwards'),
	(30, 'Wortham', 'wortham-30', NULL, 'Suffolk', '2024-08-27 09:16:16+00', true, 52.33142, 1.26461, 'Jonah Miller'),
	(31, 'Jamaica', 'jamaica-31', NULL, NULL, '2024-08-27 09:22:21+00', true, 17.973379, -76.758659, 'Jonah Miller'),
	(32, 'Dorset', 'dorset-32', NULL, NULL, '2024-08-27 09:31:00+00', true, 50.710701, -2.43401, 'Jonah Miller'),
	(33, 'The Channel Islands
', 'the-channel-islands-33', 'Îles Anglo-Normandes', 'An archipelago in the English Channel, off the French coast of Normandy.', '2024-08-29 16:57:10+00', true, 49.372284, -2.364351, 'Arin Edwards'),
	(34, 'Berkshire', 'berkshire-34', 'Royal County of Berkshire', 'A county in South East England.', '2024-08-29 17:18:36+00', true, 51.410969, -0.83493, 'Arin Edwards'),
	(35, 'New Jersey', 'new-jersey-35', 'The Garden State', 'A state in both the Mid-Atlantic and Northeastern regions of the United States. ', '2024-08-29 17:38:30+00', true, 40.07304, -74.724319, 'Arin Edwards'),
	(36, 'Kilkenny', 'kilkenny-36', 'Cill Chainnigh, ''church of Cainnech''', 'A city in County Kilkenny, Ireland.', '2024-08-29 18:09:50+00', true, 52.647833, -7.243758, 'Arin Edwards'),
	(37, 'Waterford ', 'waterford-37', 'Port Láirge', 'City in the south-east of Ireland. ', '2024-09-02 09:59:51+00', true, 52.25679, -7.1292, 'Arin Edwards'),
	(38, 'Newfoundland', 'newfoundland-38', NULL, 'Newfoundland is a large island located in the most easterly province of Canada. ', '2024-09-02 12:49:58+00', true, 48.574375, -55.940954, 'Arin Edwards'),
	(39, 'Mathura', 'mathura-39', 'Muttra ', 'A city and admin headquarters of Mathura district in the state of Uttar Pradesh. ', '2024-09-07 13:27:24+00', true, 27.492413, 77.673676, 'Arin Edwards'),
	(40, 'Iberian Peninsula', 'iberian-peninsula-40', 'Peninsula', NULL, '2024-09-07 13:38:35+00', true, 40.483, 4.0876, 'Arin Edwards'),
	(41, 'Ireland', 'ireland-41', NULL, NULL, '2024-09-11 14:28:36.236099+00', true, NULL, NULL, 'Ariunzaya Batkhuyag'),
	(42, 'Zulu Kingdom ', 'zulu-kingdom-42', 'KwaZulu, KwaZulu-Natal, South Africa', NULL, '2024-09-11 15:32:51.101394+00', true, -30.845867, 30.372374, 'Arin Edwards'),
	(43, 'Cheltenham', 'cheltenham-43', NULL, NULL, '2024-09-12 10:56:34+00', true, 51.899386, -2.078253, 'Arin Edwards'),
	(44, 'Freemason''s Tavern', 'freemasons-tavern-44', '', 'Address: 61-65 Great Queen Street, London, wc2b 5bz
The Freemasons'' Tavern was established in 1775. It served as a meeting place for a variety of notable organisations from the 18th century until it was demolished in 1909 to make way for the Connaught Rooms.', '2024-10-15 18:22:14+00', true, 51.51574, -0.12044, 'Erika Melek Delgado');


--
-- Data for Name: donation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation" ("id", "name", "slug", "start_date", "end_date", "location", "description", "added_by", "created_at", "price", "currency", "draft") VALUES
	(3, 'Foundation of King''s', 'foundation-of-kings-3', '1830-01-01', '1830-01-01', NULL, 'Donation for the founding of King''s', 'Gillian Lamb', '2024-04-18 16:38:13.23196+00', 100, 'GBP', true),
	(13, 'Donation by Rev. Dr. Lord Bishop of Norwich of £200 to the foundation of King’s College London', 'rev-dr-lord-bishop-of-norwich-donation-to-foundation-of-kings-13', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June, 1828.  ', 'Erika Melek Delgado', '2024-10-14 21:06:42+00', 200, 'GBP', true),
	(18, 'Purchase of 52 shares of £100 by Rev Dr Lord Bishop of Norwich y to the foundation of King’s College London', 'purchase-of-52-shares-of-100-by-rev-dr-lord-bishop-of-norwich-y-to-the-foundation-of-kings-college-london-18', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June 1828.', 'Erika Melek Delgado', '2024-10-15 19:30:56+00', 5200, 'GBP', true),
	(19, 'Donation by Duke of Wellington K.G of £300 to the foundation of King’s College London', 'donation-by-duke-of-wellington-k-g-of-300-to-the-foundation-of-kings-college-london-19', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June 1828.', 'Erika Melek Delgado', '2024-10-16 15:54:14+00', 300, 'GBP', true),
	(11, 'Donation by Rev Dr Lord Bishop of Ely of 200 to the foundation of King’s College London', 'rev-dr-lord-bishop-of-ely-donation-to-foundation-of-kings-11', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June, 1828.  ', 'Erika Melek Delgado', '2024-10-14 20:57:13+00', 200, 'GBP', true),
	(17, 'Purchase of 22 shares of £100 by Rev Dr Lord Bishop of Ely to the foundation of King’s College London', 'purchase-of-22-shares-of-100-by-rev-dr-lord-bishop-of-ely-to-the-foundation-of-kings-college-london-17', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June, 1828. ', 'Erika Melek Delgado', '2024-10-15 19:05:46+00', 2200, 'GBP', true),
	(20, 'Purchase of 79 shares of £100 by Duke of Wellington to the foundation of King’s College London', 'purchase-of-79-shares-of-100-by-duke-of-wellington-to-the-foundation-of-kings-college-london-20', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June 1828.', 'Erika Melek Delgado', '2024-10-16 16:03:00+00', 7900, 'GBP', true),
	(21, 'Donation by The Lord Bishop of London of £1,000 to the foundation of King’s College London', 'donation-by-the-lord-bishop-of-london-of-1-000-to-the-foundation-of-kings-college-london-21', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June 1828.', 'Erika Melek Delgado', '2024-10-16 16:13:33+00', 1000, 'GBP', true),
	(22, 'Purchase of 46 shares of £100 by The Lord Bishop of London to the foundation of King’s College London', 'purchase-of-46-shares-of-100-by-the-lord-bishop-of-london-to-the-foundation-of-kings-college-london-22', '1828-06-21', '1828-06-21', 'freemasons-tavern-44', 'At a meeting of the Friends of this Institution, held at the Freemasons'' Tavern, on Saturday the 21st of June 1828.', 'Erika Melek Delgado', '2024-10-16 16:15:43+00', 4600, 'GBP', true);


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
	(12, 'Heritage group', '2024-04-18 16:50:56.648494+00', 'Gillian Lamb'),
	(13, 'University department', '2024-08-12 12:24:27+00', 'Jonah Miller'),
	(14, 'Military regiment', '2024-08-12 12:24:58+00', 'Jonah Miller'),
	(15, 'Corporation', '2024-08-15 13:52:17+00', 'Arin Edwards'),
	(16, 'College', '2024-08-15 14:13:41+00', 'Arin Edwards'),
	(17, 'Supreme legislative body', '2024-08-16 18:39:05+00', 'Arin Edwards'),
	(19, 'Publication', '2024-08-19 19:59:35+00', 'Arin Edwards'),
	(20, 'Private bank', '2024-08-19 20:05:25+00', 'Arin Edwards'),
	(21, 'Private members'' club', '2024-08-20 14:10:45.407928+00', 'Ariunzaya Batkhuyag'),
	(22, 'Academic society', '2024-08-20 17:04:01.167425+00', 'Ariunzaya Batkhuyag'),
	(23, 'Church', '2024-08-20 18:24:30.098243+00', 'Ariunzaya Batkhuyag'),
	(24, 'School', '2024-09-12 11:42:51.795134+00', NULL),
	(25, 'Missionary society', '2024-09-22 15:59:42.069301+00', 'Ariunzaya Batkhuyag');


--
-- Data for Name: organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."organisation" ("id", "name", "slug", "alternative_names", "description", "created_at", "organisation_type", "location", "founding_date", "dissolution_date", "draft", "added_by") VALUES
	(37, 'The Queen''s College, Oxford', 'the-queens-college-oxford-37', NULL, 'University of Oxford', '2024-03-21 09:59:33.213328+00', 'University College', NULL, '1341-01-01', NULL, true, 'Gillian Lamb'),
	(40, 'Bank of England', 'bank-of-england-40', NULL, 'Was privately owned by stockholders until nationalised in 1946 by Attlee government. ', '2024-03-21 11:38:14.030708+00', 'Business', NULL, '1694-01-01', NULL, true, 'Gillian Lamb'),
	(41, 'National Society for Promoting Religious Education', 'national-society-for-promoting-religious-education-41', 'National Society', 't promotes church schools and Christian education in line with the established church. Historically it was in strong competition with the nonconformist organization British and Foreign School Society. Both promoted the monitorial system, whereby a few paid teachers worked with senior students who in turn taught the junior students. The National Society was strongly supported by the Anglican clergy, Oxford and Cambridge universities, and the established church. The nonconformist Protestants were in strong opposition. Schools founded by the National Society were called National Schools.', '2024-03-29 23:02:52.059007+00', 'Charitable society', NULL, '1811-10-16', NULL, true, 'Gillian Lamb'),
	(4, 'Eton College', 'eton-college-4', 'Eton', 'Public school', '2024-02-29 14:12:24.923234+00', 'Public school', NULL, '1440-01-01', NULL, true, 'Gillian Lamb'),
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
	(52, 'Bombay Staff Corps', 'bombay-staff-corps-52', '1st Admin Division Essex Rifle Volunteers', NULL, '2024-08-13 20:55:21.817576+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(53, '53rd Foot', '53rd-foot-53', NULL, NULL, '2024-08-13 20:57:35.842635+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(44, 'National Society for Propagation of the Gospel', 'national-society-for-propagation-of-the-gospel-44', NULL, 'Founded under royal English charter. Linked tot he society for promoting christian knowledge. According to the terms of its charter the SPG was incorporated for the purposes of (1) "providing a maintenance for an orthodox Clergy in the plantations, colonies, and factories of Great Britain beyond the seas, for the instruction of the King''s loving subjects in the Christian religion"; (2) "making such other provisions as may be necessary for the propagation of the Gospel in those parts;" and (3) "receiving, managing, and disposing of the charity of His Majesty''s subjects for those purposes." Active in 18th century predominantly in North America bringing the gospel to enslaved black people as well as free white. Had to leave America after revolution and shifted focus to Canada and then after 1823 to Asia and Africa. Tended to develop community activities. Greatest mission successes were India where it is still prominent. ', '2024-03-31 07:12:30.417985+00', 'Campaign group', NULL, '1701-01-01', NULL, true, 'Gillian Lamb'),
	(45, 'Incorporated Church Building Society', 'incorporated-church-building-society-45', NULL, 'n 1818 the Society for Promoting the Enlargement and Building of Churches and Chapels was founded to provide funds for the building and enlargement of Anglican churches throughout England and Wales. It succeeded the system of church briefs by which churches were sometimes repaired. The Society was incorporated by Act of Parliament in 1828 as The Incorporated Society for Promoting the Enlargement, Building and Repairing of Churches and Chapels. Later in the century it adopted the title by which it is still known, The Incorporated Church Building Society (ICBS). Since 1982 the Society''s administration has been transferred to the Historic Churches Preservation Trust (subsequently the National Churches Trust).', '2024-03-31 07:19:30.051281+00', 'Political group', NULL, '1818-01-01', NULL, true, 'Gillian Lamb'),
	(46, 'Society for the Diffusion of Useful Knowledge', 'society-for-the-diffusion-of-useful-knowledge-46', NULL, ' It was a pioneer of cheap educational publishing in the 1820s. Its treatises discussed new scientific and technological subjects. The extension of education to all classes and all ages was the larger aim of this group of reformers, some of whom (Brougham, Birkbeck, and Macaulay) had also started a society to encourage the spread of infant schools in 1824 (The Times, 7 June 1824). It was agreed that the Society’s publications in its Library of Useful Knowledge would avoid party politics and religion, in order to appeal to the widest audience and also to avoid controversy among its members, who represented a broad spread of religious affiliation, from non-believers to liberal Anglicans and dissenters of various kinds', '2024-03-31 21:13:05.851152+00', 'Campaign group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(47, 'King''s College London', 'kings-college-london-47', 'KCL', 'University established in London in 1829. King''s was established by royal charter in 1829 under the patronage of King George IV and the Duke of Wellington. In 1836, King''s became one of the two founding colleges of the University of London. It is one of the oldest university-level institutions in England. In the late 20th century, King''s grew through a series of mergers, including with Queen Elizabeth College and Chelsea College of Science and Technology (in 1985), the Institute of Psychiatry (in 1997), the United Medical and Dental Schools of Guy''s and St Thomas'' Hospitals and the Florence Nightingale School of Nursing and Midwifery (in 1998).', '2024-04-18 16:42:10+00', 'University', NULL, '1830-04-30', NULL, true, 'Gillian Lamb'),
	(38, 'Society for Promoting Christian Knowledge', 'society-for-promoting-christian-knowledge-38', NULL, 'UK based charity founded in 1698 working worldwide to increase awareness. Oldest Anglican mission organisation in the world. Founded by Rev. Thomas Bray.  Sought to tackle number of political and social issues. Campaigned for penal reform, provided basic education for slaves in Caribbean. Built libraries in market towns and founded many charity schools. ldest Anglican mission organisation in the world. Founded to counter growth in vice and immorality. Committed to promotion of religion and learning in plantations abroad. Closely connected to CoE. Actively campaigned for penal reform, provided for widows and children of clergy who died overseas and provided basic education for slaves in the Caribbean. Built libraries in market towns, first 200 years founded many charity schools for poor children aged 7-11. Society provided teacher training. As the British Empire grew in the 19th century, SPCK supported the planting of new churches around the world. Funds were provided for church buildings, schools, theological training colleges, and to provide chaplains for the ships taking emigrants to their new homes.From the late 1800s to the early 20th century, SPCK ran a Training College for Lay Workers on Commercial Road in Stepney Green, London.hroughout the 18th century, SPCK was by far the largest producer of Christian literature in Britain.[citation needed] The range of its output was considerable - from pamphlets aimed at specific groups such as farmers, prisoners, soldiers, seamen, servants and slave-owners, to more general works on subjects such as baptism, confirmation, Holy Communion, the Prayer Book, and private devotion. Increasingly, more substantial books were also published, both on Christian subjects and, from the 1830s, on general educational topics as well. ', '2024-03-21 10:03:02.875669+00', 'Charitable society', NULL, '1698-01-01', NULL, true, 'Gillian Lamb'),
	(9, 'Great Northern Railway', 'great-northern-railway-9', NULL, 'University college', '2024-02-29 14:18:43.285057+00', 'Business', NULL, '1846-01-01', NULL, true, 'Gillian Lamb'),
	(12, 'Hackney Phalanx of High Church Men', 'hackney-phalanx-of-high-church-men-12', NULL, 'ideological social group. a body of friends (and to some extent of relations) sharing a common theological and political outlook, forming a compact group with an agreed attitude to most of the religious and political measures of the day. We might have described it as a "pressure group" if this did not exaggerate the self-consciousness of the Phalanx. They remained to the end a body of friends, rather than an ecclesiastical or a religious party.', '2024-02-29 14:20:49.00258+00', 'Campaign group', NULL, NULL, NULL, true, 'Gillian Lamb'),
	(8, 'East India Company', 'east-india-company-8', NULL, 'English, and later British, joint-stock company founded in 1600 and dissolved in 1874. It was formed to trade in the Indian Ocean region. It eventually came to control large parts of the Indian subcontinent. At its peak, the company was the largest corporation in the world by various measures and had its own armed forces in the form of the company''s three presidency armies, totalling about 260,000 soldiers, twice the size of the British army at the time. Accounted for c. 50% of world''s trade in 1770s and began British imperial presence in India. Came to suffer financial difficulties.  ', '2024-02-29 14:15:37.225339+00', 'Business', NULL, '1600-01-01', '1874-01-01', true, 'Gillian Lamb'),
	(3, 'Society of Psychorolutes', 'society-of-psychorolutes-3', NULL, 'Society for those bathing outdoors between November and March', '2024-02-29 14:11:04.140965+00', 'Social club or group', NULL, '1828-01-01', NULL, true, 'Gillian Lamb'),
	(48, 'Department of Military Science, King''s College London', 'department-of-military-science-kings-college-london-48', NULL, NULL, '2024-08-12 12:25:27+00', 'University department', 'london-1', '1848-09-01', '1859-08-31', true, 'Jonah Miller'),
	(49, 'Cold Harbour Royal Academy (Gosport)', 'cold-harbour-royal-academy-gosport-49', NULL, NULL, '2024-08-12 12:30:40+00', 'Public school', NULL, NULL, NULL, true, 'Jonah Miller'),
	(50, '74th (Highland) Foot', '74th-highland-foot-50', NULL, NULL, '2024-08-12 12:31:48+00', 'Military regiment', NULL, NULL, NULL, true, 'Jonah Miller'),
	(51, '16th Regiment Bombay Native Infantry', '16th-regiment-bombay-native-infantry-51', NULL, NULL, '2024-08-13 20:54:36.982631+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(54, ' 48th Foot', '48th-foot-54', NULL, NULL, '2024-08-13 20:58:13.018995+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(55, '15th Foot Pay Department', '15th-foot-pay-department-55', NULL, ' 2nd Batallion', '2024-08-13 20:58:56.534818+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(56, '15th Regiment Native Infantry', '15th-regiment-native-infantry-56', NULL, NULL, '2024-08-13 21:00:43.335893+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(57, 'Royal Engineers Establishment Civil Staff Surveyor and Architect', 'royal-engineers-establishment-civil-staff-surveyor-and-architect-57', NULL, NULL, '2024-08-14 10:06:32.934293+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(58, 'War Office Civil Servant', 'war-office-civil-servant-58', NULL, NULL, '2024-08-14 10:06:53.908481+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(60, 'Queen Anne''s Bounty', 'queen-annes-bounty-60', 'The Governors of the Bounty of Queen Anne for the augmentation of the maintenance of the poor clergy', 'Queen Anne''s Bounty was a scheme to receive the first fruits and tenths previously payable to the Crown and administered by the Exchequer, which augmented the incomes of the organisation and poorer clergy of the Church of England.', '2024-08-15 13:53:21+00', 'Corporation', 'london-1', '1704-11-03', '1947-04-02', true, 'Arin Edwards'),
	(61, 'Society of Antiquaries of London', 'society-of-antiquaries-of-london-61', NULL, 'The Society of Antiquaries of London is an independent, learned society of historians and archaeologists concerned with the study of the past. It is based in Burlington House, Piccadilly and received its royal charter 44 years after its founding date in 1751.', '2024-08-15 14:06:11+00', 'Charitable society', 'london-1', '1707-12-05', NULL, true, 'Arin Edwards'),
	(62, 'Wells Theological College
', 'wells-theological-college-62', NULL, 'Wells Theological College was first founded within the Cathedral Close of Wells Cathedral. The college caters to non-graduates and  graduates of old universities to receive specialist clerical training in preparation for ordination into the Church of England.', '2024-08-15 14:20:18+00', 'College', 'salisbury-7', '1840-05-01', NULL, true, 'Arin Edwards'),
	(63, 'Winchester College', 'winchester-college-63', NULL, 'Winchester College is a public school in Winchester, Hampshire, England. ', '2024-08-15 16:56:13+00', 'Public school', 'winchester-9', '1382-12-01', NULL, true, 'Arin Edwards'),
	(65, 'Dr Newcome''s School', 'dr-newcomes-school-65', 'Hackney School', '', '2024-08-16 10:36:29+00', 'Public school', 'london-1', '1756-06-01', '1815-06-01', true, 'Arin Edwards'),
	(66, 'British Army Commissariat Staff Corps', 'british-army-commissariat-staff-corps-66', NULL, NULL, '2024-08-16 14:27:31+00', 'Military regiment', NULL, NULL, NULL, true, 'Jonah Miller'),
	(67, 'Royal Artillery', 'royal-artillery-67', NULL, NULL, '2024-08-16 15:05:29+00', 'Military regiment', NULL, NULL, NULL, true, 'Jonah Miller'),
	(68, 'Madras Artillery', 'madras-artillery-68', NULL, NULL, '2024-08-16 15:30:23+00', 'Military regiment', NULL, NULL, NULL, true, 'Jonah Miller'),
	(69, '17th (Leicestershire) Foot', '17th-leicestershire-foot-69', NULL, NULL, '2024-08-16 15:54:34+00', 'Military regiment', NULL, NULL, NULL, true, 'Jonah Miller'),
	(70, 'Whigs', 'whigs-70', 'The Whigs ', 'British political party', '2024-08-17 14:40:43+00', 'Political group', 'london-1', '1678-01-01', '1859-01-01', true, 'Arin Edwards'),
	(71, 'National Society for Promoting Religious Education', 'national-society-for-promoting-religious-education-71', 'National Society for Promoting the Education of the Poor in the Principles of the Established Church, The Church of England Education Office, National Society', NULL, '2024-08-19 19:25:11+00', 'Charitable society', 'london-1', '1811-08-16', NULL, true, 'Arin Edwards'),
	(73, 'Society for Promoting Christian Knowledge
', 'society-for-promoting-christian-knowledge-73', NULL, NULL, '2024-08-19 19:39:05+00', 'Charitable society', 'london-1', '1698-01-01', NULL, true, 'Arin Edwards'),
	(74, 'Association of Friends of the Church', 'association-of-friends-of-the-church-74', NULL, NULL, '2024-08-19 19:54:13+00', 'Charitable society', 'the-united-kingdom-17', '1830-06-01', NULL, true, 'Arin Edwards'),
	(75, 'The British Critic', 'the-british-critic-75', 'The British Critic: A New Review', NULL, '2024-08-19 19:59:59+00', 'Publication', 'london-1', '1793-01-01', '1843-01-01', true, 'Arin Edwards'),
	(76, 'The Additional Curates Society', 'the-additional-curates-society-76', NULL, NULL, '2024-08-19 20:02:39+00', 'Charitable society', 'the-united-kingdom-17', '1837-01-01', NULL, true, 'Arin Edwards'),
	(77, 'Hoare''s bank', 'hoares-bank-77', 'C. Hoare & Co', NULL, '2024-08-19 20:05:50+00', 'Private bank', 'london-1', '1672-07-05', NULL, true, 'Arin Edwards'),
	(72, 'Society for the Propagation of the Gospel', 'society-for-the-propagation-of-the-gospel-72', 'United Society Partners in the Gospel, United Society for the Propagation of the Gospel, Society for the Propagation of the Gospel in Foreign Parts', NULL, '2024-08-19 19:34:02+00', 'Charitable society', 'london-1', '1701-01-01', NULL, true, 'Arin Edwards'),
	(78, 'Society for the Promotion of Christian Knowledge.', 'society-for-the-promotion-of-christian-knowledge-78', NULL, NULL, '2024-08-19 20:59:16.933864+00', 'Political group', 'london-1', '1698-01-01', NULL, true, 'Im Chiew Ng'),
	(79, 'Diocesan school at Trim', 'diocesan-school-at-trim-79', NULL, NULL, '2024-08-20 14:05:58.214707+00', NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(80, 'Brown''s Seminary Chelsea', 'browns-seminary-chelsea-80', NULL, NULL, '2024-08-20 14:06:31.683677+00', NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(81, 'City of London Club', 'city-of-london-club-81', NULL, NULL, '2024-08-20 14:08:36.309553+00', 'Social club or group', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(82, 'The Carlton Club', 'the-carlton-club-82', NULL, NULL, '2024-08-20 14:11:23.164224+00', 'Private members'' club', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(83, 'The Oriental Club', 'the-oriental-club-83', NULL, NULL, '2024-08-20 14:13:14.639252+00', 'Private members'' club', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(84, 'White''s', 'whites-84', NULL, NULL, '2024-08-20 14:14:11.206927+00', 'Social club or group', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(85, 'Highland and Agricultural Society', 'highland-and-agricultural-society-85', NULL, NULL, '2024-08-20 16:47:43.277717+00', 'Charitable society', 'edinburgh-20', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(86, 'University of St Andrews', 'university-of-st-andrews-86', NULL, NULL, '2024-08-20 16:54:10.262286+00', 'University', '', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(87, 'Royal Society', 'royal-society-87', 'The Royal Society of London for Improving Natural Knowledge', NULL, '2024-08-20 17:05:31.605533+00', 'Academic society', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(89, 'Speculative Society', 'speculative-society-89', NULL, NULL, '2024-08-20 18:26:18.285833+00', 'Social club or group', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(90, 'Surrey Church Association', 'surrey-church-association-90', NULL, NULL, '2024-08-20 18:26:41.045531+00', 'Church', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(91, 'National Society', 'national-society-91', 'The National Society (Church of England and Church in Wales) for the Promotion of Education', NULL, '2024-08-20 18:45:05.384162+00', 'Academic society', 'the-united-kingdom-17', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(64, 'New College, Oxford', 'new-college-oxford-64', 'The College of St Mary of Winchester in Oxford.', 'Founded by William of Wykeham,  New College Oxford is one of the constituent colleges of the University of Oxford.', '2024-08-15 20:20:41+00', 'University College', 'oxford-11', '1379-06-01', NULL, true, 'Arin Edwards'),
	(59, 'Pembroke College, Cambridge', 'pembroke-college-59', 'The Hall of Valence Marie, Pembroke Hall', 'Pembroke College is a constituent college of the University of Cambridge, England.', '2024-08-15 12:02:23+00', 'University College', 'cambridge-4', '1347-12-24', NULL, true, 'Arin Edwards'),
	(92, 'Christ''s College, Cambridge', 'christs-college-cambridge-92', NULL, NULL, '2024-08-20 18:50:23.598692+00', 'University College', 'cambridge-4', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(93, '5th Foot (Fusiliers)', '5th-foot-fusiliers-93', NULL, NULL, '2024-08-26 12:22:20.127827+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(94, '75th Foot', '75th-foot-94', NULL, NULL, '2024-08-26 12:22:39.244229+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(95, 'Royal Denbigh Militia', 'royal-denbigh-militia-95', NULL, NULL, '2024-08-26 12:22:58.662566+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(96, '63rd Foot', '63rd-foot-96', NULL, NULL, '2024-08-26 12:24:23.778814+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(97, '13th Defence Battalion', '13th-defence-battalion-97', NULL, NULL, '2024-08-26 12:24:40.498224+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(98, '46th Foot', '46th-foot-98', NULL, NULL, '2024-08-26 12:24:56.13093+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(99, '27th Regimental District', '27th-regimental-district-99', NULL, NULL, '2024-08-26 12:25:12.190607+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(100, 'Depot Battalion', 'depot-battalion-100', NULL, NULL, '2024-08-26 12:25:26.471532+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(101, '48th Madras Native Industry', '48th-madras-native-industry-101', NULL, NULL, '2024-08-26 12:27:44.610038+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(102, 'Madras Staff Corps', 'madras-staff-corps-102', NULL, NULL, '2024-08-26 12:28:00.313159+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(103, '29th Regiment of Braemar', '29th-regiment-of-braemar-103', NULL, NULL, '2024-08-26 12:29:05.542619+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(104, '22nd Kent Rifle Volunteer Corps', '22nd-kent-rifle-volunteer-corps-104', NULL, NULL, '2024-08-26 14:26:49+00', 'Military regiment', 'kent-27', '1860-03-30', '1870-11-01', true, 'Arin Edwards'),
	(105, '67th Foot', '67th-foot-105', NULL, NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(106, 'Connaught Rangers', 'connaught-rangers-106', NULL, NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(107, '89th Foot', '89th-foot-107', NULL, NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(108, '86th Foot', '86th-foot-108', NULL, NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(109, '7th Foot', '7th-foot-109', 'Paymaster', NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(110, '8th Foot', '8th-foot-110', NULL, NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(111, '14th Foot', '14th-foot-111', NULL, NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(112, '49th Foot', '49th-foot-112', NULL, NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(113, '63rd Foot', '63rd-foot-113', 'The Manchester Regiment', NULL, '2024-08-26 19:47:17.877998+00', 'Military regiment', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(114, '36th (Herefordshire) Foot', '36th-herefordshire-foot-114', NULL, NULL, '2024-08-27 09:12:51+00', 'Military regiment', NULL, NULL, NULL, true, 'Jonah Miller'),
	(115, '47th (Lancashire) Foot', '47th-lancashire-foot-115', NULL, NULL, '2024-08-27 09:29:46+00', 'Military regiment', NULL, NULL, NULL, true, 'Jonah Miller'),
	(116, '17th Regiment', '17th-regiment-116', 'The Leicestershire Regiment', '', '2024-08-29 17:04:37+00', 'Military regiment', 'leicestershire-28', '1688-09-27', '1914-01-01', true, 'Arin Edwards'),
	(118, '5th Batallion Royal Munster Fusiliers', '5th-batallion-royal-munster-fusiliers-118', NULL, NULL, '2024-08-29 17:15:14+00', 'Military regiment', 'limerick-15', '1881-01-01', '1922-01-01', true, 'Arin Edwards'),
	(119, '66th Berkshire Foot Regiment', '66th-berkshire-foot-regiment-119', NULL, NULL, '2024-08-29 17:22:11+00', 'Military regiment', 'berkshire-34', '1756-12-10', '1881-07-01', true, 'Arin Edwards'),
	(120, 'Royal Horse Artillery', 'royal-horse-artillery-120', NULL, NULL, '2024-08-29 17:31:13+00', 'Military regiment', 'london-1', '1793-02-01', '0001-01-01', true, 'Arin Edwards'),
	(121, '3rd (King''s Own) Regiment of Dragoons', '3rd-kings-own-regiment-of-dragoons-121', NULL, NULL, '2024-08-29 17:40:52+00', 'Military regiment', 'new-jersey-35', '1777-01-01', '1782-01-01', true, 'Arin Edwards'),
	(122, '3rd (the King''s Own) Regiment of Hussars', '3rd-the-kings-own-regiment-of-hussars-122', NULL, NULL, '2024-08-29 17:45:01+00', 'Military regiment', 'the-united-kingdom-17', '1685-01-01', '1958-01-01', true, 'Arin Edwards'),
	(123, '2nd Brigade North Irish Division', '2nd-brigade-north-irish-division-123', 'Antrim Artillery', NULL, '2024-08-29 17:49:46+00', 'Military regiment', 'the-united-kingdom-17', '1882-04-01', '1889-07-01', true, 'Arin Edwards'),
	(117, 'East York Regiment of Militia', 'east-york-regiment-of-militia-117', 'East Riding Trained Bands, East York Militia, 3rd (Reserve) Battalion', NULL, '2024-08-29 17:07:27+00', 'Military regiment', 'yorkshire-29', '1759-01-01', '1919-01-01', true, 'Arin Edwards'),
	(124, 'Christ Church, Oxford', 'christ-church-oxford-124', NULL, NULL, '2024-09-11 14:17:56.516671+00', 'University College', 'oxford-11', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(125, 'Church Education Society', 'church-education-society-125', NULL, NULL, '2024-09-11 14:29:00.655066+00', 'Church', 'ireland-41', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(126, 'Church of Ireland''s riposte to the state national schools', 'church-of-irelands-riposte-to-the-state-national-schools-126', NULL, NULL, '2024-09-11 14:29:40.55269+00', 'Church', 'ireland-41', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(127, 'Ashburton Grammar', 'ashburton-grammar-127', NULL, NULL, '2024-09-11 15:08:34.703822+00', 'College', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(128, 'Oriel College, Oxford', 'oriel-college-oxford-128', NULL, NULL, '2024-09-11 15:09:09.59796+00', 'University College', 'oxford-11', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(129, 'King''s College, Cambridge', 'kings-college-cambridge-129', NULL, NULL, '2024-09-11 15:33:09.178825+00', 'University College', 'cambridge-4', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(5, 'St John''s College, Cambridge', 'st-johns-cambridge-5', NULL, 'College at University of Cambridge', '2024-02-29 14:13:33.089388+00', 'University College', NULL, '1511-01-01', NULL, true, 'Gillian Lamb'),
	(130, 'Emmanuel College, Cambridge', 'emmanuel-college-cambridge-130', NULL, NULL, '2024-09-12 11:17:44.867702+00', 'University College', 'cambridge-4', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(131, 'Westminster School', 'westminster-school-131', NULL, NULL, '2024-09-12 11:43:29.15539+00', 'School', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(132, 'Almack''s', 'almacks-132', NULL, NULL, '2024-09-12 11:49:49.02019+00', 'Social club or group', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(133, 'Brook''s', 'brooks-133', NULL, NULL, '2024-09-12 11:50:31.434193+00', 'Social club or group', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(134, 'Boodle''s', 'boodles-134', NULL, NULL, '2024-09-12 11:51:08.18084+00', 'Social club or group', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(135, 'Rugby school', 'rugby-school-135', NULL, NULL, '2024-09-21 18:09:54.450223+00', 'Public school', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(136, 'Balliol College, Oxford', 'balliol-college-oxford-136', NULL, NULL, '2024-09-21 18:20:13.268429+00', 'University College', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(137, 'Corpus Christi, Oxford', 'corpus-christi-oxford-137', NULL, NULL, '2024-09-22 15:23:03.126162+00', 'University College', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(138, 'London Society for Promoting Christianity amongst the Jews', 'london-society-for-promoting-christianity-amongst-the-jews-138', NULL, NULL, '2024-09-22 16:00:23.129+00', 'Missionary society', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(139, 'Royal Society of Literature', 'royal-society-of-literature-139', NULL, NULL, '2024-09-22 16:02:49.035015+00', 'Charitable society', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(140, 'The Church Missionary Society.', 'the-church-missionary-society-140', NULL, NULL, '2024-09-22 16:05:11.161889+00', 'Missionary society', 'oxford-11', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(141, 'Royal Military Asylum', 'royal-military-asylum-141', NULL, NULL, '2024-09-22 16:23:56.093775+00', 'School', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(142, 'Church Building Commissioners', 'church-building-commissioners-142', NULL, NULL, '2024-09-23 11:03:20.717801+00', 'Charitable society', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(143, 'National Society for Promoting the Education of the Poor in the Principles of the Established Church', 'national-society-for-promoting-the-education-of-the-poor-in-the-principles-of-the-established-church-143', NULL, NULL, '2024-09-23 11:04:56.54233+00', 'Missionary society', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(144, 'Nobody''s Friends', 'nobodys-friends-144', NULL, NULL, '2024-09-23 11:07:28.296467+00', 'Private members'' club', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(145, 'St. Savior''s School Southwark', 'st-saviors-school-southwark-145', NULL, NULL, '2024-09-23 15:23:22.767101+00', 'School', 'london-1', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(146, 'Anti-Apartheid Society, KCL', 'anti-apartheid-society-at-kings-college-london-146', NULL, 'The Anti-Apartheid Society at King''s College London was founded in the 1980s with the aim of raising political awareness about the apartheid regime in South Africa. This society played a crucial role in mobilising students against the apartheid system, particularly by challenging the involvement of international firms that supported or benefited from the regime. The society was connected to the broader Anti-Apartheid Movement (AAM), which coordinated global efforts to end apartheid. Through its activities, the society sought to engage the student body in issues of global justice, emphasising the importance of solidarity with oppressed peoples.  ', '2025-01-12 11:51:43+00', 'Academic society', 'london-1', '1980-01-01', NULL, true, 'Erika Melek Delgado'),
	(147, 'Third World First Society, KCL', 'third-world-first-society-at-kings-college-london-147', '', 'The Third World First Society was established in 1978 to educate students on the injustices occurring in the developing world, often referred to as the ‘Third World’ in this period. This society focused on the economic exploitation and political challenges faced by countries that were formerly colonised. It highlighted the severe disparities in labour conditions, such as those in Brazil, where workers received only a small fraction of the value of the goods they produced. The society''s weekly meetings addressed a broad range of issues, including human rights, the arms trade, and the economic inequalities that perpetuate dependency on former colonial powers. The society played a pivotal role in fostering awareness of how colonial legacies continued to shape global economic and political dynamics.  The society became less active and eventually disbanded in 1989. ', '2025-01-12 11:56:30+00', 'Academic society', 'london-1', '1978-01-01', NULL, true, 'Erika Melek Delgado'),
	(148, 'War on Want Campaign, KCL', 'war-on-want-campaign-at-kings-college-london-148', NULL, 'The War on Want Society at King''s College, chaired by Michael Packs, was part of a broader initiative focused on providing humanitarian aid to newly independent countries. During the mid-1960s, under Packs'' leadership, the society raised funds for essential infrastructure projects in Algeria and Morocco, countries that had recently gained independence from colonial powers. By supporting the construction of wells and hospitals, the society played a significant role in the rebuilding efforts in these nations, embodying the decolonisation ethos of promoting self-sufficiency and empowerment for formerly colonised regions. ', '2025-01-12 11:57:53+00', 'Academic society', 'london-1', '1965-01-01', NULL, true, 'Erika Melek Delgado'),
	(149, 'Group Against Racial Discrimination, KCL', 'group-against-racial-discrimination-at-kings-college-london-149', 'G.A.R.D. ', 'G.A.R.D. opposed apartheid in South Africa and fought against racial discrimination in the UK. It encouraged students to support the National Union of South African Students and engage in the struggle against apartheid, while also addressing racial inequality within Britain. This group was central to raising awareness of racial justice at King’s. ', '2025-01-12 11:59:37+00', 'Academic society', 'london-1', '1965-01-01', NULL, true, 'Erika Melek Delgado'),
	(150, 'Campaign for Nuclear Disarmament, KCL', 'campaign-for-nuclear-disarmament-at-kings-college-london-150', 'CND', 'The Campaign for Nuclear Disarmament Society at King''s College, active since its establishment in 1958, focused on advocating for an independent foreign policy that would distance the UK from U.S. military interventions, such as the Vietnam War. The society''s grassroots approach invited students to engage in discussions about nuclear disarmament and to challenge the continuation of policies that reflected colonial power dynamics. Although not directly linked to decolonisation, CND''s advocacy for peace and opposition to imperialist wars aligned with the broader decolonisation movement. ', '2025-01-12 12:01:08+00', 'Academic society', 'london-1', '1958-01-01', NULL, true, 'Erika Melek Delgado'),
	(151, 'Afro-Caribbean Society, KCL', 'afro-caribbean-society-at-kings-college-london-151', 'ACS', 'The Afro-Caribbean Society (ACS) at King’s College London has been instrumental in promoting cultural awareness and fostering conversations around race and identity since its founding in 1983-1984. During the 1980s, the society played a significant role in addressing the experiences of post-decolonisation migrants, contributing to wider discussions about race in Britain. The society continues its mission today, actively celebrating African and Caribbean cultures and providing support for students. Its enduring presence highlights the ongoing importance of cultural advocacy at King’s. ', '2025-01-12 12:02:21+00', 'Academic society', 'london-1', '1983-01-01', NULL, true, 'Erika Melek Delgado');


--
-- Data for Name: donation_agent_organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: ethnicity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."ethnicity" ("id", "name", "created_at", "added_by") VALUES
	(1, 'White', '2024-02-16 15:41:38.025487+00', NULL),
	(2, 'Black', '2024-08-12 11:31:39.87036+00', 'Erika Melek Delgado');


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
	(209, 'George Vancouver ', 'george-vancouver-209', 'Captain George Vancouver ', '', '2024-08-17 16:51:51+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born in King''s Lynn, Norfolk.', true, 'Arin Edwards'),
	(123, 'Henry Brougham', 'henry-brougham-123', NULL, 'British statesman born in Edinburgh, called to the bar. Became Lord High Chancellor. Prominent role in passing the 1832 Reform Act and 1833 Emancipation Bill. Defended Queen Caroline in her divorce. Had an affair with Harriette Wilson. Collaborated with William Wilberforce. Sir Charles Bell. Designed the brougham carriage. Married to Mary Spalding. Papers held at UCL.', '2024-02-29 10:52:57.361096+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(124, 'Lord Wensleydale', 'lord-wensleydale-124', NULL, 'Educated at Cambridge and won the Craven scholarship. Became famous judge. Married Cecilia', '2024-02-29 10:58:08.758874+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(126, 'Andrew Burnaby', 'andrew-burnaby-126', NULL, 'Archdeacon of Leicester. Travel writer. Married heiress Anne Edwyn of Baggrave Hall. Their grandson was great great grandfather of Queen Elizabeth II. ', '2024-02-29 11:04:57.337335+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(127, 'Benjamin Collins', 'benjamin-collins-127', NULL, 'Banker and printer. Editer of the Salisbury Journal. Bookseller.', '2024-02-29 11:08:03.98736+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(128, 'William Lawrence', 'william-lawrence-128', NULL, 'Brilliant scholar. During Lawrence''s surgical career he held the posts of Professor of Anatomy and Surgery, Royal College of Surgeons (1815–1822); Surgeon to the hospitals of Bridewell and Bethlem, and to the London Infirmary for Diseases of the Eye; Demonstrator of Anatomy, then Assistant Surgeon, later Surgeon, St Bartholomew''s Hospital (1824–1865). Later in his career, he was appointed Surgeon Extraordinary, later Serjeant Surgeon, to the Queen. His specialty was ophthalmology, although he practised in and lectured and wrote on all branches of surgery. Pugin and Queen Victoria were among his patients with eye problems. Radical. One of the group who launched the Lancet. One of three men who wrote on evolution. Married 1823 Louisa Senior, daughter of Mayfair haberdasher.', '2024-02-29 11:12:30.504038+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(133, 'Joshua Watson', 'joshua-watson-133', NULL, 'English wine merchant, philanthropist, a prominent member of the high church party and of several charitable organisations, who became known as "the best layman in England". Married Mary whose uncle was Charles Daubeney. Joshua from his early years was brought into contact with other members of the high-church party, of which he afterwards became the virtual leader. Among his early friends and advisers were William Stevens, the disciple and biographer of William Jones of Nayland, and founder of the Club of Nobody''s Friends, of which Joshua Watson was an original member; Jonathan Boucher, who became in 1785 vicar of Epsom, where John James Watson had his first curacy; and Sir John Richardson (afterwards a judge in the court of common pleas), who had been a college friend of John James Watson.Among other friends were Henry Handley Norris, with whom he maintained an unbroken friendship of nearly sixty years, and William Van Mildert, rector of St. Mary-le-Bow in the city (afterwards bishop of Durham). Van Mildert submitted both his Boyle Lectures and his Bampton Lectures to Watson''s revision, and was largely guided by his advice in literary matters. Nor was Van Mildert the only man of letters who showed confidence in his literary power. At the house of Van Mildert in Ely Place he met the elder Christopher Wordsworth, master of Trinity College, Cambridge, whom he joined in revising the proof-sheets of Christopher Wordsworth the younger''s work, Theophilus Anglicanus. These men were, with Archdeacon Benjamin Harrison and William Rowe Lyall, Watson''s chief friends and coadjutors. In 1814 Watson retired from business to devote himself exclusively to works of piety and charity. He never missed any meeting of the Society for Propagation of the Gospel, the Society for Promoting Christian Knowledge, or the National Society, and his counsel was highly valued. He took a deep interest in the colonial church, being an intimate friend of Bishop Middleton of Calcutta, Bishop Inglis of Nova Scotia, Bishop Broughton of Australasia, and subsequently Bishop Selwyn of New Zealand. In 1814 he was appointed, together with his friend Archdeacon Cambridge, treasurer of the Society for Promoting Christian Knowledge, which during his treasurership increased greatly its work and income. About the same time he became secretary of the relief fund for the German sufferers from the Napoleonic wars. In 1817 the Church Building Society, called at first the Church Room Society, was formed. Watson was largely instrumental in its foundation, drawing up the original resolution. This was quickly followed by a royal commission for church building issued under Lord Liverpool''s government. Watson was one of the commissioners, and found the work so engrossing that in 1822 he took a house, No. 6 Park Street, Westminster, where he lived for sixteen years, to be near the scene of his labours.He was also treasurer of the Clergy Orphan School, which was, perhaps, of all his benevolent schemes, the one nearest to his heart.', '2024-02-29 11:30:20.999889+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(135, 'John Bowdler', 'john-bowdler-135', NULL, 'Campaigner for moral reform in Britain and a founder of the Church Building Society. His brother and sister were the editors of the expurgated Family Shakspeare. In 1795 Bowdler wrote a long letter to Lord Auckland about the high prices of the time, in which he attacked clergy and legislators for neglecting morality and religion. In 1796 he addressed letters on similar subjects to the Archbishop of Canterbury and bishops Beilby Porteus and Samuel Horsley. He published in 1797 a pamphlet entitled Reform or Ruin, in which he sought again to expose the immorality and irreligion of the nation. The pamphlet had a wide sale, and reached an eighth edition within a year.Bowdler was one of the founders of the Church Building Society.

', '2024-02-29 11:36:17.697183+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(134, 'Charles Daubeney', 'charles-daubeney-134', NULL, 'an English chemist, botanist and geologist. Educated at Winchester, Magdalen College Oxford. In November 1822, Daubeny succeeded Kidd as professor of chemistry at Oxford, and retained this post until 1855. In 1834, he was appointed to the chair of botany to which was subsequently attached that of rural economy. At the Oxford botanical garden he conducted numerous experiments upon the effect of changes in soil, light and the composition of the atmosphere upon vegetation. In 1830 he published in the Philosophical Transactions a paper on the iodine and bromine of mineral waters. In 1831 Daubeny represented the universities of England at the first meeting of the British Association, which at his request held their next session at Oxford. ', '2024-02-29 11:34:12.559668+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(132, 'Sir William Weller Pepys', 'sir-william-weller-pepys-132', NULL, '2nd Baron Pepys, was a lawyer who became Master in Chancery. He was a a member of Elizabeth Montagu’s circle, and corresponded with Hannah More for over forty years. He was a friend of Lord Lyttelton, and defended him against the criticisms made by Samuel Johnson in his Lives of the Poets. He was a close friend of Sir James Macdonald, the “Scottish Marcellus”. Pepys’ correspondence with Elizabeth Montagu, Hester Chapone and others was published in 1904 (ed. Alice Gaussen, London, John Lane).', '2024-02-29 11:28:40.004869+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(136, 'Lord Liverpool', 'lord-liverpool-136', NULL, 'Was prime minister 1812-1827. As prime minister, Jenkinson called for repressive measures at domestic level to maintain order after the Peterloo Massacre of 1819. He dealt smoothly with the Prince Regent when King George III was incapacitated. He also steered the country through the period of radicalism and unrest that followed the Napoleonic Wars. He favoured commercial and manufacturing interests as well as the landed interest. He sought a compromise of the heated issue of Catholic emancipation. The revival of the economy strengthened his political position. By the 1820s, he was the leader of a reform faction of "Liberal Tories" who lowered the tariff, abolished the death penalty for many offences, and reformed the criminal law. By the time of his death, however, the Tory party, which had dominated the House of Commons for over 40 years, was ripping itself apart.Died 1828.', '2024-02-29 11:38:03.70185+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(139, 'Henry Goulburn', 'henry-goulburn-139', NULL, 'British Conservative statesman and a member of the Peelite faction after 1846. Born in London, Goulburn was the eldest son of a wealthy planter, Munbee Goulburn, of Amity Hall, Vere Parish, Jamaica, and his wife Susannah, eldest daughter of William Chetwynd, 4th Viscount Chetwynd. He was educated at Trinity College, Cambridge.Goulburn''s inheritance included a number of sugar estates in Jamaica, with Amity Hall in the parish of Vere, now Clarendon Parish, being the most important. Slave labour was still being used to work the sugar plantations when he inherited the estates. Goulburn never visited Jamaica himself due to his health and political work. He relied on attorneys to manage his estates on his behalf. One attorney, in particular, Thomas Samson, held the top job at the estate from 1802 to 1818 and earned a reputation for cruelty towards Goulburn''s slaves.By 1818, the income from his Jamaican estates halved to less than £3,000 "although he did console himself that the condition of his slaves had probably improved".Goulburn was a member of the Canterbury Association from 27 March 1848.', '2024-02-29 11:55:18.886933+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(210, 'Thomas Coke of Holkham', 'thomas-coke-of-holkham-210', 'Thomas William Coke, 1st Earl of Leicester, Coke of NorfolK, Coke of Holkham', NULL, '2024-08-19 11:20:57+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(222, 'Angela Burnett-Coutts', 'angela-burnett-coutts-222', NULL, NULL, '2024-08-20 13:33:09.451384+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(138, 'Sir Robert Peel', 'sir-robert-peel-138', 'Right Hon. M.P.', 'British Conservative statesman who served twice as Prime Minister of the United Kingdom (1834–1835, 1841–1846), simultaneously serving as Chancellor of the Exchequer (1834–1835), and twice as Home Secretary (1822–1827, 1828–1830). He is regarded as the father of modern British policing, owing to his founding of the Metropolitan Police Service. Peel was one of the founders of the modern Conservative Party.The son of a wealthy textile manufacturer and politician, Peel was the first prime minister from an industrial business background. He earned a double first in classics and mathematics from Christ Church, Oxford. He entered the House of Commons in 1809 and became a rising star in the Tory Party. Peel entered the Cabinet as home secretary (1822–1827), where he reformed and liberalised the criminal law and created the modern police force, leading to a new type of officer known in tribute to him as "bobbies" and "peelers". After a brief period out of office he returned as home secretary under his political mentor the Duke of Wellington (1828–1830), also serving as Leader of the House of Commons. Initially, a supporter of continued legal discrimination against Catholics, Peel reversed himself and supported the Roman Catholic Relief Act 1829 and the 1828 repeal of the Test Act, claiming that "though emancipation was a great danger, civil strife was a greater danger".Peel often started from a traditional Tory position in opposition to a measure, then reversed his stance and became the leader in supporting liberal legislation. This happened with the Test Act, Catholic emancipation, the Reform Act, income tax and, most notably, the repeal of the Corn Laws. Historian A. J. P. Taylor wrote: "Peel was in the first rank of 19th-century statesmen. He carried Catholic Emancipation; he repealed the Corn Laws; he created the modern Conservative Party on the ruins of the old Toryism. Peel was born at Chamber Hall, Bury, Lancashire, to the industrialist and parliamentarian Sir Robert Peel, 1st Baronet, and his wife Ellen Yates. His father was one of the richest textile manufacturers of the early Industrial Revolution. Peel received his early education from a clergyman tutor in Bury and at a clergyman''s local school in Tamworth.He may also have attended Bury Grammar School or Hipperholme Grammar School, though evidence for either is anecdotal rather than textual. He started at Harrow School in February 1800. At Harrow, he was a contemporary of Lord Byron. Attended Christ Church, Oxford, which Peel attended 1805–1808, graduating with a double first. In 1805, Peel matriculated at Christ Church, Oxford. His tutor was Charles Lloyd, later Regius Professor of Divinity, on Peel''s recommendation appointed bishop of Oxford. In 1808 Peel became the first Oxford student to take a double first in Classics and Mathematics.








', '2024-02-29 11:50:24.825531+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(145, 'Lord John Russell', 'john-russell-145', NULL, 'British Whig and Liberal statesman who served as Prime Minister of the United Kingdom from 1846 to 1852 and again from 1865 to 1866.The third son of the 6th Duke of Bedford, Russell was educated at Westminster School and Edinburgh University before entering Parliament in 1813. In 1828 he took a leading role in the repeal of the Test Acts which discriminated against Catholics and Protestant dissenters. He was one of the principal architects of the Reform Act 1832, which was the first major reform of Parliament since the Restoration, and a significant early step on the road to democracy and away from rule by the aristocracy and landed gentry. He favoured expanding the right to vote to the middle classes and enfranchising Britain''s growing industrial towns and cities, but he never advocated universal suffrage and he opposed the secret ballot. Russell was outspoken on many issues over the course of his career, advocating Catholic emancipation in the 1820s, calling for the repeal of the Corn Laws in 1845, denouncing Pope Pius IX''s revival of Catholic bishoprics in 1850, and supporting Italian unification during the 1860s. Russell''s political agenda was frequently frustrated by his lack of a reliable Commons majority. However, his government was able to secure a number of notable social reforms. Russell introduced teachers'' pensions and used Orders in Council to make grants for teacher training. The Public Baths and Wash-houses Acts of 1847 and 1848 enabled local authorities to build municipal baths and washing facilities for the growing urban working classes. Russell lent his support to the passage of the Factories Act 1847, which restricted the working hours of women and young persons (aged 13–18) in textile mills to 10 hours per day.Russell married Adelaide Lister (widow of Thomas Lister, 2nd Baron Ribblesdale, who had died in 1832) on 11 April 1835. Together they had two daughters:

', '2024-02-29 12:27:39.647072+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(140, 'Henry Acland', 'henry-acland-140', NULL, 'English physician and educator.Educated at Harrow and Christ Church, Oxford. He was elected Fellow of All Souls College, Oxford in 1840, and then studied medicine in London and Edinburgh. Returning to Oxford, he was appointed Lee''s reader in anatomy at Christ Church in 1845, was made a Fellow of the Royal Society in 1847. Acland was also interested in questions of public health. He served on the Royal Commission on sanitary laws in England and Wales in 1869. He published a study of the cholera outbreak at Oxford in 1854, together with various pamphlets on sanitary matters.He married Sarah Cotton, daughter of William Cotton and Sarah Lane, on 14 July 1846. They had seven sons and a daughter', '2024-02-29 12:12:49.04391+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(212, 'Charles Lloyd', 'charles-lloyd-212', 'Regius Professor of Divinity, Bishop of Oxford', NULL, '2024-08-19 11:43:03+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(143, 'Lord Sidmouth', 'lord-sidmouth-143', NULL, 'British Tory statesman who served as prime minister of the United Kingdom from 1801 to 1804.Henry Addington was the son of Anthony Addington, Pitt the Elder''s physician; and Mary Addington, the daughter of the Rev. Haviland John Hiley, headmaster of Reading School. As a consequence of his father''s position, Addington was a childhood friend of William Pitt the Younger. Addington studied at Reading School, Winchester, and Brasenose College, Oxford, and then studied law at Lincoln''s Inn. He married Ursula Mary Hammond in 1781; she brought an income of £1,000 a year into the marriage. In 1802, Addington accepted an honorary position as vice-president for life on the Court of Governors of London''s Foundling Hospital for abandoned babies.', '2024-02-29 12:22:38.924295+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(146, 'Jonathan Boucher', 'jonathan-boucher-146', NULL, 'English clergyman, teacher, preacher and philologist. Jonathan Boucher was born in Blencogo, near Wigton, Cumberland, and educated at the Wigton Grammar School. After training in Workington, Jonathan became a teacher, at St. Bees School and in 1759 went to Virginia, where he became a private tutor in the families of Virginia planters. Invited to become vicar of a nearby Anglican church, but lacking any religious qualifications, he briefly returned to England, to be ordained by the bishop of London in March 1762. He also carried a cane around the colony.He landed in America again on 12 July, was associated with the Anglican Church, and remained until 1775 as rector of various Virginia and Maryland parishes, including St. Mary''s, Caroline County, Virginia, Hanover, King George County, Virginia, and St Anne''s in Annapolis, Maryland and in 1771, St. Barnabas Church, Upper Marlboro, Maryland. He was widely known as an eloquent preacher, and his scholarly attainments won for him the friendship and esteem of some of the ablest scholars in the colonies. Boucher was an accomplished writer and scholar, contributed largely to William Hutchinson''s History of the County of Cumberland (2 vols., 1794 seq.), and published A View of the Causes and Consequences of the American Revolution (1797), dedicated to General George Washington, and consisting of thirteen discourses delivered in America between 1763 and 1775. He married three times, first in America in 1772 to Eleanor Addison, of which little is known, other than that his wife did not appear to return to Britain with him; they had a daughter named Eleanor Boucher. His second marriage occurred in England in 1787 to Mary Elizabeth Foreman, who died the following year. His last marriage in 1789 was to Elizabeth James (née Hodgson), a widow to Dr. John James. James and Boucher had seven children together, including Barton Boucher.', '2024-02-29 12:31:49.686944+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(149, 'David Wilkie', 'david-wilkie-149', NULL, ' a Scottish[1] painter, especially known for his genre scenes. He painted successfully in a wide variety of genres, including historical scenes, portraits, including formal royal ones, and scenes from his travels to Europe and the Middle East. His main base was in London, but he died and was buried at sea, off Gibraltar, returning from his first trip to the Middle East. He was sometimes known as the "people''s painter". David Wilkie was born in Pitlessie Fife in Scotland on 18 November 1785. He was the son of the parish minister of Cults, Fife. Caroline Wilkie was a relative.[5] He developed a love for art at an early age. In 1799, after he had attended school at Pitlessie, Kingskettle and Cupar, his father reluctantly agreed to his becoming a painter. Through the influence of the Earl of Leven Wilkie was admitted to the Trustees'' Academy in Edinburgh, and began the study of art under John Graham. From William Allan (afterwards Sir William Allan and president of the Royal Scottish Academy) and John Burnet, the engraver of Wilkie''s works, we have an interesting account of his early studies, of his indomitable perseverance and power of close application, of his habit of haunting fairs and marketplaces, and transferring to his sketchbook all that struck him as characteristic and telling in figure or incident, and of his admiration for the works of Alexander Carse and David Allan, two Scottish painters of scenes from humble life', '2024-02-29 12:38:15.681954+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(152, 'Henry Dundas', 'henry-dundas-152', NULL, 'styled as Lord Melville from 1802, was the trusted lieutenant of British prime minister William Pitt and the most powerful politician in Scotland in the late 18th century. From 1776-78, Dundas acted as counsel to an escaped slave, Joseph Knight, who had been purchased in Jamaica and later taken to Scotland. As a young man Knight tried to escape from his owner, and when that failed he launched a legal battle for his freedom. The case went to Scotland''s highest civil court, where Dundas led Knight''s legal team, in the case of Knight v. Wedderburn.[', '2024-03-20 22:51:55.434232+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(226, 'Marquess of Bute', 'marquess-of-bute-226', NULL, NULL, '2024-08-20 13:44:14.794872+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(156, 'John Kemble', 'john-kemble-156', NULL, 'Brother to the famous Sarah Siddons. Joined the company  and became theatre manager and fought with Sheridan.', '2024-03-20 23:13:56.433845+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(161, 'Nathaniel Woodward', 'nathaniel-woodward-161', NULL, 'Founded 11 schools for the middle classes to provide education based on sound principle and sound knowledge firmly grounded in the Christian faith. Began life as an evangelical but increasingly drawn to Tractarian movement. ', '2024-03-21 11:24:43.457459+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(118, 'William Manning', 'william-manning-118', NULL, 'Son of a merchant and his wife Elizabeth, daughter and heir of John Ryan, a planter and slave owner in St Kitts and Santa Cruz. His father also came from a planter family and soon after his marriage started a merchant house in Bristol, trading in West Indies. His son inherited 2/3 of the Ryan estates on Santa Cruz. Connection with Smith took him into Pitt''s circle. Staunch supporter of the government. Agent for St Vincent, leading spokesman of West Indies interests in the Commons. Campaigned for a dock to construct the dock. Provided finance for slave owners and became a slave owner himself. Promoted compensation for slave owners. Good friends with Wilberforce. Went bankrupt in 1831 and withdrew from public life. Died in 1834', '2024-02-29 10:42:39.211942+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(160, 'William Cotton', 'william-cotton-160', NULL, 'William Cotton, born in 1786 in Leytonstone, was a founding member of the council of King’s College London. Cotton was a merchant, inventor, banker, and philanthropist, who during his lifetime built numerous churches and schools for the working classes. Cotton came from a well-established upper middle-class family. His father (Joseph Cotton, 1745-1825) had made his money as a captain for the East India Company (EIC) taking advantage of expanding imperial trade and was later appointed a director of the EIC. His grandfather (Dr Nathaniel Cotton, 1705-1788) was a highly respected physician.  Cotton was a deeply religious man and during his lifetime was involved with societies such as the Colonial Bishoprics Fund, Hackney Phalanx of Prominent Churchmen and Society for the Promotion of Christian Knowledge. Cotton believed that moral reform was the best form of patriotism. Importantly, he argued that the poor needed to be relieved of their poverty before their morals could be judged. His philanthropy therefore focused on the promotion of institutions that could relieve economic and social pressures. This included his zeal for building churches, promoting public baths, wash houses and model lodging houses.  

However, Cotton’s behaviour was not always so exemplary. During his time at Chigwell Grammar, 15-year-old Cotton was accused of setting fire to the headmaster’s garden. Cotton married Sarah Fowler in 1812. The couple had seven children together and Cotton maintained a keen interest in their upbringing and education. Reflecting both his business shrewdness and his familial shipping legacy, Cotton first began his career at the Limehouse shipping firm Huddart & Co. which he later adopted full control of, he also invented steam driven rope making machinery and in 1851 was awarded the Telford Medal from the Institution of Civil Engineers. During his tenure at the Bank of England, Cotton alongside Home Secretary Sir Robert Peel and Conservative plantation owner, Henry Goulburn, produced the Bank Charter Act of 1844. One of his most valued inventions was an automatic weighing machine for sovereigns, colloquially referred to as ‘the governor’, which won a medal at the Great Exhibition of 1851 and was used extensively at the Bank of England. William Cotton became a fellow of the Royal Society in 1821, was elected chairman of the London Hospital in 1827 and became treasurer in 1837 echoing some of the roles he undertook for the newly founded King’s College London in 1829. He also used the many connections he made through these roles to fundraise for King’s College London. However, the man he had the most contact with at King’s was his friend Henry Nelson Coleridge, who was also an important council member. Cotton was described by historian Hearnshaw as a ‘venerable member’ of King’s and one whose death in 1866 marked ‘the first age of the college’ coming to an end.', '2024-03-21 11:22:08.076963+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(153, 'William Pitt', 'william-pitt-153', NULL, 'Pitt was a British statesman, the youngest and last prime minister of Great Britain from 1783 until the Acts of Union 1800 and then first prime minister of the United Kingdom from January 1801. He left office in March 1801, but served as prime minister again from 1804 until his death in 1806. He was also Chancellor of the Exchequer for all of his time as prime minister. He is known as "Pitt the Younger" to distinguish him from his father, William Pitt, 1st Earl of Chatham, who had previously served as prime minister and is referred to as "William Pitt the Elder" (or "Chatham" by historians). Pitt, although often referred to as a Tory, or "new Tory", called himself an "independent Whig" and was generally opposed to the development of a strict partisan political system.Pitt was regarded as an outstanding administrator who worked for efficiency and reform, bringing in a new generation of competent administrators. He increased taxes to pay for the great war against France and cracked down on radicalism. To engage the threat of Irish support for France, he engineered the Acts of Union 1800 and tried (but failed) to secure Catholic emancipation as part of the Union. He created the "new Toryism", which revived the Tory Party and enabled it to stay in power for the next quarter-century.', '2024-03-20 22:55:20.198157+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(213, 'John Henry Hobart
', 'john-henry-hobart-213', NULL, 'The third Episcopal bishop of New York', '2024-08-19 12:48:29+00', 'Assigned male at birth', 'English', 'United States', 'White', NULL, 'Born in Philadelphia, Pennsylvania', true, 'Arin Edwards'),
	(151, 'Earl of Aberdeen', 'earl-of-aberdeen-151', NULL, ' British statesman, diplomat and landowner, successively a Tory, Conservative and Peelite politician and specialist in foreign affairs. He served as Prime Minister from 1852 until 1855 in a coalition between the Whigs and Peelites, with Radical and Irish support. The Aberdeen ministry was filled with powerful and talented politicians, whom Aberdeen was largely unable to control and direct. Despite his trying to avoid this happening, it took Britain into the Crimean War, and fell when its conduct became unpopular, after which Aberdeen retired from politics.', '2024-03-20 22:48:20.820944+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(157, 'Richard Payne Knight', 'richard-payne-knight-157', NULL, NULL, '2024-03-20 23:15:14.759219+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(159, 'Henry Cline', 'henry-cline-159', NULL, 'English surgeon and president of the Royal College of Surgeons. Political radical, associated with leading supporters of the French revolution, a farmer and Fellow of the Royal Society. Apprenticed to Thomas Smith, one of the surgeons. ', '2024-03-21 10:07:36.968363+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(130, 'William Clift', 'william-clift-130', NULL, 'Born into a large poor family. Had a talent for illustrating. Taken on as an unpaid apprentice in the Hunter museum. Clift achieved respect and popularity within the scientific community of his time. Dr. South spoke of him as ''a kindly-hearted creature, always ready to impart and not to appropriate information,'' and with a ''head crammed full of knowledge.''[citation needed] Benjamin Brodie the elder praised his industry and his thirst for the acquisition of knowledge, his sagacity and keen observation. He was esteemed by Sir Joseph Banks, Dr. Wollaston, Sir Humphry Davy. Through the influence of the latter, he was elected Fellow of the Royal Society on 8 May 1823.

He was a member of the Chemical Society, a group of members of the Royal Society who submitted papers to the parent institution with the object of promoting the study of animal chemistry.Gideon Mantell acknowledged his debt to Clift in the original memoir on the Iguanodon. Baron Cuvier acknowledged his assistance in the concluding volume of his work on fossil remains. Clift''s knowledge of osteology is referred to by Sir Charles Lyell and his researches in anatomical science were referenced by Sir Benjamin Brodie.He was the compiler of the catalog of the osteology in the Hunterian Museum, and he gave valuable evidence to the parliamentary committee on medical education in 1834. Dr. Westby-Gibson is the owner of two manuscripts in shorthand, giving the particulars of forty-nine lectures delivered by Dr. Haighton at Guy''s Hospital 1814–15, which are believed to be the work of Clift. His portrait, from a daguerreotype, is in Claudet''s Historical Gallery and his bust in plaster, with the date 1843, is placed on the entrance door to the western museum of the College of Surgeon', '2024-02-29 11:19:58.923679+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(141, 'Agnes Cotton', 'agnes-cotton-141', NULL, '(27 February 1828 – 20 May 1899) was an English social reformer and philanthropist. She founded and ran a home in Leytonstone for ''fallen girls'' called The Pastures.Cotton was considered to be a philanthropist by the time she was 18. She helped her sister Sarah Acland in her philanthropy projects and started to create her own projects to care for children in Leytonstone. Her siblings included the judge Henry Cotton, the philanthropist Sarah Acland, and the missionary William Cotton. In 1865, Cotton opened a children''s home with an attached laundry for girls. This was expanded when she moved to The Cedars, a home once operated as an orphanage/school by the Methodist preacher Mary Bosanquet. She renamed the house ''The Pastures. In about 1880, Cotton paid for an expansion of the existing building. The site in Leytonstone now included a chapel, industrial laundry, school and was known as the ''Home of the Good Shepherd'' to differentiate it from ''The Pastures,'' which was the former base. Previously Cotton''s good works had been funded by herself, her family, and well wishers; in the 1880s the home attracted funding from the state. It was registered under the Criminal Law Amendment Act, although it was not a home for delinquent girls but a place of training in laundry work for girls who had been involved in prostitution. Rumours about harsh treatment inside of The Pastures began to spread in 1894. Rumours varied from stories about the girls being unsupervised, to abused, to stories about Cotton being too old for the job. The Home Office was called into investigate after Reverend A. Drew, a chairman of the London School Board, demanded an inquiry. Inspector William Inglis concluded that the rumours were false, and exonerated Cotton. Despite her exoneration, the London School Board cut ties with Cotton in 1895.', '2024-02-29 12:14:48.744236+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(214, 'John Jebb', 'john-jebb-214', NULL, 'An English divine, medical doctor, and religious and political reformer.', '2024-08-19 12:52:16+00', 'Assigned male at birth', 'English', 'Ireland', 'White', NULL, NULL, true, 'Arin Edwards'),
	(218, 'Thomas Mozley', 'thomas-mozley-218', NULL, 'An English clergyman and writer associated with the Oxford Movement.

', '2024-08-19 13:09:38+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born at Gainsborough, Lincolnshire', true, 'Arin Edwards'),
	(148, 'Charles Knight', 'charles-knight-148', NULL, 'English publisher, editor and author. He published and contributed to works such as The Penny Magazine, The Penny Cyclopaedia, and The English Cyclopaedia, and established the Local Government Chronicle.on of a bookseller and printer at Windsor, he was apprenticed to his father. On completion of his indentures he took up journalism and had an interest in several newspaper speculations,[1] including the Windsor, Slough and Eton Express.In 1823, in conjunction with friends he had made as publisher (1820–1821) of The Etonian, he started Knight''s Quarterly Magazine, to which Winthrop Mackworth Praed, Derwent Coleridge and Thomas Macaulay contributed. It lasted for only six issues, but it made Knight''s name as publisher and author, beginning a career which lasted over forty years.[1] The periodical included an 1824 review of Frankenstein in which Percy Bysshe Shelley was attributed as the author in a comparison with his wife''s second novel Valperga. One of his early publications was the diary of the naval chaplain Henry Teonge (c. 1620–1690).[2] From 1826 to 1827, he published the second series of Alaric Alexander Watts'' monthly magazine The Literary Magnet. In 1827 Knight was forced to give up publishing, and became the superintendent of the publications of the Society for the Diffusion of Useful Knowledge, for which he projected and edited The British Almanack and Companion, begun in 1828. In 1829 he resumed business on his own account with the publication of The Library of Entertaining Knowledge, writing several volumes of the series himself. In 1832 and 1833 he started The Penny Magazine (1832-1845) and The Penny Cyclopaedia.', '2024-02-29 12:36:07.127204+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(162, 'Matthew Tindal', 'matthew-tindal-162', NULL, 'Eminent English deist author. His works, highly influential at the dawn of the Enlightenment, caused great controversy and challenged the Christian consensus of his time. Studied at Lincoln College, Oxford. Was a utilitarian.', '2024-03-29 22:08:42.794998+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(179, 'Charles James Blomfield', 'charles-james-blomfield-179', 'Right Hon. And Right Rev. Dr. Lord Bishop of London', NULL, '2024-08-14 21:18:30.828848+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(163, 'Lord Wensleydale', 'lord-wensleydale-163', NULL, '9th son of merchant, Thomas Parke. Attended Macclesfield grammar and then Trinity College Cambridge. Called to the bar. Retained by crown to support bill of pains and penalties against Queen Caroline in 1820. Appointed judge 1828 and then served in court of exchequer until death 1855. No political party.', '2024-03-29 22:14:12.017573+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(164, 'John Pocock', 'john-pocock-164', NULL, 'Barrister born in Maidenhead, Berkshire. Only son of Isaac Pocock, playwright. Went to Eton, then Merton, Oxford. Called to bar 1847.', '2024-03-29 22:16:50.211365+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, NULL),
	(165, 'Benjamin Collins Brodie', 'benjamin-collins-brodie-165', NULL, 'Born in Wiltshire, Educated at home and then went ot London to join lectures at St Bartholomews.1803 entered St George''s, as surgical pupil of Everard Home. Spirited defender of Home after he was accused of plagiarising brother in law John Hunter. Was made senior surgeon of St Georges. Produced influential text called. Diseases of the Joints (1818). This important and influential text, which skilfully analysed case histories, and aimed to teach surgeons how to preserve limbs that might otherwise have been amputated, went through five editions, and was translated into several languages. It included descriptions of hysterical pseudo-fracture of the spine, and the first clinical description of ankylosing spondylitis. In the fifth edition (1850) he identified Brodie''s disease, a chronic synovitis in which an affected joint undergoes a pulpy degeneration. In 1828 he devised a technique for trephining the tibia for chronic inflammation (Brodie''s abscess); in 1835 he pioneered a technique for correction of abnormalities in the anal sphincter (Brodie''s pile); and in 1840 he identified a particular form of breast tumour (Brodie''s tumour).He firmly believed that its moral, religious, and scientific education and leadership should distinguish the élite of the medical profession. He therefore strongly supported the foundation of the London Medical Gazette in 1827 to counter Thomas Wakley''s assertions in The Lancet that hospital surgeons and the council of the Royal College of Surgeons were corrupt. He was president of the Royal Medical and Chirurgical Society (1839), where he introduced discussions at meetings. In 1844 he was elected president of the Royal College of Surgeons, having been for many years examiner and member of the council, and having introduced important improvements into the system of examinations and the structure of its hitherto self-perpetuating council. Together with Joseph Henry Green and John Simon he was closely involved in the complex negotiations that led to the Medical Act of 1858.', '2024-03-29 22:47:23.932771+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(166, 'Sir John Vaughan', 'sir-john-vaughan-166', NULL, 'Baron of the Exchequer. Educated at Rugby, matriculated at Queen''s College, Oxford. Married first wife Augusta, 2nd daughter Henry Beauchamp. Appointed solicitor general to Queen Charlotte. Conducted crown''s case against Sir Frances Burdett for seditious libel following comments on Peterloo massacre.', '2024-03-29 23:22:12.520649+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(167, 'Sir Charles Richard Vaughan', 'sir-charles-richard-vaughan-167', NULL, 'diplomatist, son of James Vaughan, physician, of Leicester, and Hester, daughter of John Smalley (who had married a daughter of Sir Richard Halford), was born at Leicester on 20 December 1774. harles Vaughan was educated at Rugby School, where he entered on 22 January 1788, and at Merton College, Oxford, matriculating on 26 October 1791. Elected Radcliffe travelling fellow on 4 December 1800, and spent the next three years in Germany, France, and Spain. In 1804 he visited Constantinople, Asia Minor, and Syria. In 1809 Vaughan was also appointed private secretary to Henry Bathurst, third Earl Bathurst, secretary for foreign affairs. On 5 January 1810 he became secretary of legation (later of embassy) in Spain, whither he returned with the minister, Henry Wellesley. He was sent to Britain in 1811 to give information as to the state of politics in Spain. n 5 April 1820 he went to Paris as secretary of embassy under his old friend Sir Charles Stuart, and on 8 February 1823 became minister-plenipotentiary to the confederated states of Switzerland. He was appointed envoy-extraordinary and minister-plenipotentiary to the United States in 1825, and on 23 March he was made privy councillor. Though, in Sir Charles Webster''s view, a man of ''no great ability'' (Webster, 1.69), he dealt with important matters such as the Canadian boundary, the Latin American republics, the slave trade, and the tariff. On one occasion he was fiercely reprimanded by Canning for exceeding instructions (Temperley, 288). Palmerston thought him ''a steady sensible man, though not very showy'' ', '2024-03-29 23:32:54.598234+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(168, 'Henry Hobhouse', 'henry-hobhouse-168', NULL, 'archivist, called to bar, solicitor to HM customs, solicitor to the Treasury, sworn onto the privy council, one of the ecclesiastical commissioners for England. ', '2024-03-29 23:43:34.882993+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(169, 'Edward Hawke Locker', 'edward-hawke-locker-169', NULL, 'Hospital administrator. Clerk to Board of Control for Indian affairs, was a prize agent. Royal Society, Royal Hospital, Athaneum, The Plain Englishman, Greenwich Hospital, British Institution, National Maritime Museum, ', '2024-03-29 23:50:31.913846+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(215, 'Charles James Blomfield', 'charles-james-blomfield-215', NULL, 'A British divine, classicist, and a Church of England bishop', '2024-08-19 12:57:59+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born in Bury St Edmunds, Suffolk', true, 'Arin Edwards'),
	(219, 'Thomas Willement', 'thomas-willement-219', NULL, 'An English stained glass artist and writer', '2024-08-19 13:15:07+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(227, 'Princess Lieven', 'princess-lieven-227', NULL, NULL, '2024-08-20 13:44:32.091953+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(230, 'Lady Shelley', 'lady-shelley-230', NULL, NULL, '2024-08-20 13:45:22.767728+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(186, 'Patrick Bell', 'patrick-bell-186', 'Rev. Dr.', 'Bell was a Church of Scotland minister and an inventor of agricultural machinery. In 1827, he made a working model of a reaping machine, exhibiting it at the Highland and Agricultural Society in 1828-9. However, he never patented his design as he wanted it to be available for people to produce. The Highland Society awarded him £1000 for services to agriculture, he was also given an honorary degree of LLD from the University of St Andrews. He was ordained in the Church of Scotland in 1843 as minister of the parish of Carmyllie and kept this post until his death. ', '2024-08-15 14:38:23.391743+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', 'Born in the rural parish of Auchterhouse in Angus, Scotland.', NULL, true, 'Ariunzaya Batkhuyag'),
	(187, 'Bowyer Edward Sparke', 'bowyer-edward-sparke-187', 'Rt. Rev. Dr. Lord Bishop of Ely', 'Sparks graduated from Cambridge with a BA in 1782, a MA 1785 and a DD in 1803. In 1784, he became a fellow of Pembroke College, he was also a tutor to the fifth Duke of Rutland. From 1800 to 1805, he was vicar of Scalford in Leicestershire, and from 1800 to 1809 vicar of Redmile. From 1803 to 1810, Sparks was vicar of St Augustine-the-Less in Bristol, in 1803 dean of Bristol then in 1809 bishop of Chester. His final appointment was to the bishopric of Ely in 1812, which he maintained until his death.', '2024-08-15 14:48:27.284262+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(175, 'George Bannister', 'george-bannister-175', NULL, NULL, '2024-08-13 20:51:54.045144+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(178, 'Edward Bell', 'edward-bell-178', NULL, NULL, '2024-08-14 09:49:29.395286+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, 'Born in Greenhithe, Kent', true, 'Im Chiew Ng'),
	(180, 'Charles Manners-Sutton (dec)', 'charles-manners-sutton-dec-180', 'Most Rev. Dr. Archbishop of Canterbury', NULL, '2024-08-14 21:36:10.434286+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(181, 'Edward Copleston', 'edward-copleston-181', 'Rt. Rev. Dr. Lord Bishop of Llandaff', NULL, '2024-08-14 21:39:21.75461+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(174, 'Arthur Angelo', 'arthur-angelo-174', NULL, 'Arthur Angelo was the son of a London fencing master. He was sent to school at the Cold Harbour Royal Academy in Gosport, then returned to London to study Military Science at King''s for two years in 1852-54. On leaving King''s, he joined the 74th (Highland) Foot regiment of the British Army as a junior officer. This regiment was actively involved in suppressing the Indian Rebellion of 1857, and Arthur received a medal for his actions during the campaign.', '2024-08-12 12:18:45+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Jonah Miller'),
	(183, 'Edward Venables Vernon', 'edward-venables-vernon-183', 'Rt. Hon. & Most Rev.', NULL, '2024-08-15 12:07:02.814154+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, '', true, 'Im Chiew Ng'),
	(184, 'Jane Adeane', 'jane-adeane-184', 'Nurse Jane Henrietta Adeane, Jane Law by marriage', 'Born to  James Whorwood Adeane and Anne Adeane (born Jones). Adeane had served as one of the Stanley Sailors’ Hospital administrators and benefactors, she became the Commandant of the Sailors’ Hospital on behalf of the Red Cross.', '2024-08-15 13:45:14.495561+00', 'Assigned female at birth', 'English', 'United Kingdom', 'White', NULL, 'Holyhead, Anglesey, North Wales.', true, 'Arin Edwards'),
	(216, 'Lord Liverpool', 'lord-liverpool-216', 'Robert Jenkinson, 2nd Earl of Liverpool', NULL, '2024-08-19 13:02:50+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(220, 'Lord Charles FitzRoy', 'lord-charles-fitzroy-220', 'General Lord Charles FitzRoy', 'A British Army officer and politician.

', '2024-08-19 19:04:19+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(231, 'Catherine Pakenham', 'catherine-pakenham-231', 'Catherine Sarah Dorothea Wellesley, Duchess of Wellington', NULL, '2024-08-20 13:55:18.165202+00', 'Assigned female at birth', 'English', 'Ireland', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(232, 'Jane Lawson', 'jane-lawson-232', NULL, NULL, '2024-08-20 16:41:37.166604+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(234, 'Lucy Maria Charlotte', 'lucy-maria-charlotte-234', NULL, NULL, '2024-08-20 17:24:15.852549+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(236, 'King George IV', 'king-george-iv-236', NULL, NULL, '2024-08-20 18:06:45.997478+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(244, 'William Wordsworth', 'william-wordsworth-244', NULL, NULL, '2024-08-20 18:22:27.006237+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(176, 'William Barr', 'william-barr-176', NULL, NULL, '2024-08-13 20:56:48.193368+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, 'Born in Bengal, India', true, 'Im Chiew Ng'),
	(177, 'Julius Barras', 'julius-barras-177', NULL, NULL, '2024-08-13 21:00:00.739764+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, 'Born in Laleham, Middlesex', true, 'Im Chiew Ng'),
	(274, 'Richard W Cradock', 'richard-w-cradock-274', NULL, 'Richard W Cradock was born to North Yorkshire Militia Colonel and Whig MP Sheldon Cradock. He attended King''s College London from 1848-50, and would go on to serve in the 17th Regiment in the Leicestershire Regiment Foot, East York Regiment of Militia, and the 5th Battalion Royal Munster Fusiliers. He ranked as a Ensign in 1849 by purchase, a Lieutenant in 1851 by purchase, a Captain without purchase in 1854, an Adjutant in 1855 in the same year  he would marry Isma Helen Cowley Brown. He later ranked as an honorary Major in 1881.', '2024-08-29 15:31:41+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, '', 'Born in Yorkshire and resided in Limerick, Ireland.', true, 'Arin Edwards'),
	(240, 'Lord Mount-Charles', 'lord-mount-charles-240', NULL, NULL, '2024-08-20 18:20:54.788822+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(228, 'Lady Salisbury', 'lady-salisbury-228', NULL, NULL, '2024-08-20 13:44:49.595613+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(238, 'Lord Francis Nathaniel Conyngham', 'lord-francis-nathaniel-conyngham-238', NULL, NULL, '2024-08-20 18:20:14.497125+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(172, 'George Birkbeck', 'george-birkbeck-172', NULL, 'as a British physician, academic, philanthropist, pioneer in adult education and a professor of natural philosophy at the Andersonian Institute. He is the founder of Birkbeck, University of London and was head of the Chemical Society. He is one of the creators of the earliest chemistry laboratory for undergraduates at University College London, and is also known for the creation of mechanics'' institutes in Scotland and London. Quaker. Went to Sedbergh, studied medicine at Leeds and London.', '2024-03-31 21:08:06.777901+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(242, 'J.P. Maunoir', 'j-p-maunoir-242', NULL, NULL, '2024-08-20 18:21:28.546671+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(191, ' Lady Georgiana Charlotte Bertie', 'lady-georgiana-charlotte-bertie-191', 'Georgiana Charlotte Cholmondeley, Marchioness of Cholmondeley', 'Born from Peregrine Bertie, 3rd Duke of Ancaster and Kesteven, and second wife Mary, she was the was the wife of George Cholmondeley.', '2024-08-15 16:31:55+00', 'Assigned female at birth', 'English', 'United Kingdom', 'White', NULL, 'family home was Cholmondeley Castle, Cheshire.', true, 'Arin Edwards'),
	(217, 'Dr. Hawks', 'dr-hawks-217', 'Francis L. Hawks
', 'An American writer, historian, educator and priest of the Episcopal Church.', '2024-08-19 13:06:48+00', 'Assigned male at birth', 'English', 'United States', 'White', NULL, 'Born in New Bern, North Carolina.', true, 'Arin Edwards'),
	(267, 'George NJ Bradford', 'george-nj-bradford-267', NULL, NULL, '2024-08-26 19:15:53.466356+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(268, 'John D Bradley', 'john-d-bradley-268', NULL, NULL, '2024-08-26 19:15:53.466356+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(221, 'George Elphinstone Keith', 'george-elphinstone-keith-221', '1st Viscount Keith', 'A British Royal Navy officer during the French Revolutionary and Napoleonic Wars.', '2024-08-19 19:10:18+00', 'Assigned male at birth', 'English', 'Scotland', 'White', '', 'Born in Elphinstone Tower, Falkirk', true, 'Arin Edwards'),
	(235, 'Jennie Fanny Barnabine', 'jennie-fanny-barnabine-235', NULL, NULL, '2024-08-20 17:30:28.008684+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(137, 'Duke of Wellington', 'duke-of-wellington-137', 'Arthur Wellesley', 'British statesman, soldier, and Tory politician who was one of the leading military and political figures of 19th-century Britain, serving twice as prime minister of the United Kingdom. He is among the commanders who won and ended the Napoleonic Wars when the Seventh Coalition defeated Napoleon at the Battle of Waterloo in 1815. Bborn in the Kingdom of Ireland into an aristocratic Anglo-Irish family, belonging to the Protestant Ascendancy, beginning life as The Hon. Arthur Wesley. Wellesley was born the son of Anne, Countess of Mornington, and Garret Wesley, 1st Earl of Mornington. His father was himself the son of Richard Wesley, 1st Baron Mornington, and had a short career in politics representing the constituency of Trim in the Irish House of Commons before succeeding his father as Baron Mornington in 1758. Garret Mornington was also an accomplished composer, and in recognition of his musical and philanthropic achievements was elevated to the rank of Earl of Mornington in 1760.Wellesley''s mother was the eldest daughter of Arthur Hill-Trevor, 1st Viscount Dungannon, after whom Wellesley was named. His term as prime minister was marked by Roman Catholic Emancipation: the restoration of most civil rights to Roman Catholics in the United Kingdom of Great Britain and Ireland. The change was prompted by the landslide by-election win of Daniel O''Connell, a Roman Catholic Irish proponent of emancipation, who was elected despite not being legally allowed to sit in Parliament. In the House of Lords, facing stiff opposition, Wellington spoke for Catholic Emancipation, and according to some sources, gave one of the best speeches of his career. Wellington was born in Ireland and so had some understanding of the grievances of the Roman Catholic majority there; as Chief Secretary, he had given an undertaking that the remaining Penal Laws would only be enforced as "mildly" as possible. In 1811 Catholic soldiers were given freedom of worship and 18 years later the Roman Catholic Relief Act 1829 was passed with a majority of 105. Many Tories voted against the Act, and it passed only with the help of the Whigs. Wellington had threatened to resign as prime minister if King George IV did not give Royal Assent. The nickname "Iron Duke" originated from this period, when he experienced a high degree of personal and political unpopularity. During this time, Wellington was greeted by a hostile reaction from the crowds at the opening of the Liverpool and Manchester Railway. Wellington was gradually superseded as leader of the Tories by Robert Peel, while the party evolved into the Conservatives. When the Tories were returned to power in 1834, Wellington declined to become prime minister because he thought membership in the House of Commons had become essential. The king reluctantly approved Peel, who was in Italy.In 1824, one liaison came back to haunt him, when Wellington received a letter from a publisher, John Joseph Stockdale, offering to refrain from issuing an edition of the rather racy memoirs of one of his mistresses, Harriette Wilson, in exchange for money. It is said that the Duke promptly returned the letter, after scrawling across it, "Publish and be damned". However, Hibbert notes in his biography that the letter can be found among the Duke''s papers, with nothing written on it. It is certain that Wellington did reply, and the tone of a further letter from the publisher, quoted by Longford, suggests that he had refused in the strongest language to submit to blackmail.', '2024-02-29 11:40:24.882143+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Wellesley was born into an aristocratic Anglo-Irish family.', true, 'Gillian Lamb'),
	(201, 'Catherine Henrietta', 'catherine-henrietta-201', 'Catherine Norris ', 'Daughter of David Powell and Laetitia Clark, wife of Henry Handley Norris. ', '2024-08-16 16:27:47+00', 'Assigned female at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(202, 'Maria Palmer Acland', 'maria-palmer-acland-202', ' Lady Hoare ', 'Daughter of Sir Arthur Palmer Acland, of Fairfield, Co. Somerset, and Elizabeth Oxenham. Wife of Sir Henry Hugh Hoare.', '2024-08-16 16:29:15+00', 'Assigned female at birth', 'English', 'United Kingdom', NULL, '', NULL, true, 'Arin Edwards'),
	(203, 'Isaac Milner', 'isaac-milner-203', NULL, NULL, '2024-08-17 16:21:51+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born in Mabgate, Leeds, England.', true, 'Arin Edwards'),
	(204, 'Edward Law', 'edward-law-204', 'Baron Ellenborough', NULL, '2024-08-17 16:28:05+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(189, 'Charles R. Sumner', 'charles-r-sumner-189', 'Rt. Rev. Dr. Lord Bishop of Winchester', 'Sumner graduated Cambridge with a BA in 1814, a MA 1817, and under the instruction of King George IV, a DD in 1825. In 1814, he was ordained as deacon and as a priest in 1817. He gained George IV favour at a dinner party which had a significant impact on his future preferments. The King appointed him to the canonry of Windsor this was, however, refused by Lord Liverpool and the canonry was given to Dr James Stanier Clarke while Sumner was given all his prior appointments. Sumner was made the private chaplain to the King, historiographer to the crown, chaplain to the household at Carlton House and librarian to the King. From 1821 to 1822, he was vicar of St Helens in Abingdon, and from 1822 to 1825, Sumner was appointed to the second canonry of Worcester Cathedral and Canterbury until 1827. In 1826, he was consecrated as bishop of Llandaff, which he held alongside the deanery of St Pauls. The King then helped appoint him to the bishopric of Winchester where he unusually practised regular visitation. By 1867, two hundred and one permanent and temporary churches were built in his diocese as well as three hundred and twelve churchyards and cemeteries. Sumner supported the catholic emancipation.', '2024-08-15 15:12:37.75247+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(190, 'George James Cholmondeley', 'george-james-cholmondeley-190', '1st Marquess of Cholmondeley Esq.', 'The 1st Marquess of Cholmondeley was styled Viscount Malpas then later the Earl of Cholmondeley. He entered the House of Lords in 1770, then thirteen years later entered the Privy Council under the government of the Duke of Portland who also appointed him as Captain of the Yeomen of the Guard. In 1812 he was made Lord Steward of the Household in the Tory government of Spencer Perceval and kept this position until 1821. In 1819 he was made a Knight Grand Cross of the Royal Guelphic Order and in 1822 a Knight of the Garter in 1822. From 1770-83 he was Lord-Liutenant of Cheshire and Vice-Admiral from 1770-1827. In 1776 he began an affair with Grace Darymple Elliot, a Scottish courtesan and spy during the French Revolution, this prompted a divorce from her husband formalising their separation. He later married Lady Georgiana Charlotte Bertie on the 25th of April in 1791.', '2024-08-15 16:26:58+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born in Cholmondeley Castle, Chesire. Lived at 18 Great Cumberland Street, London', true, 'Arin Edwards'),
	(193, 'Henry Bathurst ', 'henry-bathurst-193', 'Rt. Rev. Dr.Lord Bishop of Norwich', 'Born in Westminster, London, the seventh son of Benjamin Bathurst of Lydney Park (1688-1767) and third of fourteen children of his father''s second wife. His father had 36 children from two marriages. Ordained in 1769 and received the see of Norwich in 1805 after Charles Manner-Sutton was made Archbishop of Canterbury. He and his wife Grace married on the 15th of August, 1780, and had eleven children. As a member of the House of Lords Bathurst supported Catholic emancipation and the 1832 Reform Act unlike many of his fellow clergy.', '2024-08-15 18:06:23+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born in Westminster, London. Lived at at 20 Upper Brook Street,
', true, 'Arin Edwards'),
	(269, 'George R Byron', 'george-r-byron-269', NULL, NULL, '2024-08-26 19:15:53.466356+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, 'Born in India', true, 'Im Chiew Ng'),
	(270, 'William Hay Chapman', 'william-hay-chapman-270', NULL, NULL, '2024-08-26 19:15:53.466356+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(273, 'Granville Waddilove', 'granville-waddilove-273', NULL, 'Granville Waddilove was born in Dorset in 1832. He studied Military Science at King’s for two years from 1850-1852, then joined the 47th Foot. This began a twenty-five year career in which he rose through the ranks to lieutenant-colonel, serving in Malta, Turkey, Crimea, Gibraltar, Canada, Nova Scotia, and the West Indies. In Crimea, he was wounded at the battle of Inkerman and received a medal for his role in the siege of Sebastopol.', '2024-08-27 09:25:48+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Jonah Miller'),
	(275, 'Charles FW Cuffe', 'charles-fw-cuffe-275', NULL, 'Charles FW Cuffe attended King''s College London from 1849 to 51. He served in the 66th Berkshire Foot Regiment before returning home to Ireland for 3 years between 1854-57, he was then  sent to India in March 1857. He returned to England in March 1865 and went back to India in February 1870. During this time, he ranked from Ensign, Lieutenant, Captain, Major, and then to Knighthood. Cuffe married Pauline Villiers Stuart in 1861,  upon the birth of Cuffe''s daughter on the 23rd February 1876, Cuffe''s wife is mentioned as ''wife cuffe''; confirming his wife as Pauline Wheeler-Cuffe.', '2024-08-29 18:03:42+00', 'Assigned male at birth', 'English', 'Ireland', NULL, NULL, 'Born in Kilkenny, Ireland. A residence in Waterford Ireland 23rd July 1875 - from the Waterford News; 18 Clyde Road Dublin Lyrath Kilkenny - from 1899 directory; 51 Kensington mansion Trebovir Road - from 1906-7', true, 'Arin Edwards'),
	(225, 'The Earl of Wilton', 'the-earl-and-countess-of-wilton-225', 'Thomas Egerton', NULL, '2024-08-20 13:43:19.6848+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(229, 'Lady Bessborough', 'lady-bessborough-229', NULL, NULL, '2024-08-20 13:45:07.329467+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(237, 'Frederick Oakeley', 'frederick-oakeley-237', NULL, NULL, '2024-08-20 18:07:28.215793+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(241, 'John Taylor Coleridge', 'john-taylor-coleridge-241', NULL, NULL, '2024-08-20 18:21:12.571945+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(243, 'Samuel Coleridge', 'samuel-coleridge-243', NULL, NULL, '2024-08-20 18:21:43.40614+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(301, 'Charles James Fox', 'charles-james-fox-301', NULL, NULL, '2024-09-12 11:20:33.836138+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(194, 'Henry Handley Norris', 'henry-handley-norris-194', 'Rev. Henry Handley Norris', 'Born in London to a wealthy Russian merchant, Norris graduated from Cambridge as BA in 1793 and MA in 1796. He had a close and life-long friendship with Joshua Watson beginning in 1794 when they organised a subscription for a company of Shropshire militia stationed in Hackney. Norris was ordained in 1796 becoming curate of Hackney beginning his life in service to the Church of England, which he bolstered by his endowments. He was appointed prebend of the Llandaff Cathedral in 1816 and in became prebend of St. Paul''s Cathedral while also being chaplain to the sixth Earl of Shaftesbury. In 1805, he married Henrietta Catherine on the 19th of June. He published The Influence of the Female Character Upon Society in 1801 as a response to the upheaval of the French Revolution, he also published A Manual for the Parish Priest in 1815 and A Pastor''s Legacy in 1851.  He was the ''acknowledged leader'' of the Hackney Phalanx and with Watson helped found the National Society for Promoting the Education of the Poor in the Principles of the Established Church in 1811 and remained active in the SPCK and SPG. He was a generous patron to several charities, helping organise relief for German refugees of the Napoleonic War and later supported colonial churches. He was against the Catholic Emancipation, and his ecclesiastical influence waned after a revolt over his leadership of the SPCK in 1834.', '2024-08-15 20:31:56+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born in Hackney, London. Lived at Prebendary of St. Pauls.', true, 'Arin Edwards'),
	(200, 'Grace Coote', 'grace-coote-200', 'Grace Bathurst', 'Daughter of Charles Coote and Grace (Tilson) Coote, wife of Rt Rev. Henry Bathurst, Bishop of Norwich, 2nd, Joseph Peacock. ', '2024-08-16 16:26:06+00', 'Assigned female at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(206, 'Gertrude Mahon', 'gertrude-mahon-206', 'Born Gertrude née Tilson', 'A British courtesan and actress.', '2024-08-17 16:33:40+00', 'Assigned female at birth', 'English', 'Ireland', 'White', NULL, 'Born in Dublin.', true, 'Arin Edwards'),
	(207, 'Grace Dalrymple Elliott ', 'grace-dalrymple-elliott-207', 'Grace Elliot, Dally the Tall', 'A Scottish courtesan, writer and spy in Paris during the French Revolution.', '2024-08-17 16:44:04+00', 'Assigned female at birth', 'French', 'Scotland', 'White', NULL, 'Born in Edinburgh.', true, 'Arin Edwards'),
	(208, 'Edward Smith-Stanley', 'edward-smith-stanley-208', 'Lord Derby, Lord Stanley, Edward Smith-Stanley, 12th Earl of Derby PC ', NULL, '2024-08-17 16:49:19+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(211, 'Richard Prosser', 'richard-prosser-211', 'Archdeacon of Durham', NULL, '2024-08-19 11:36:24+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(198, 'Charles Doyne Anderson Straker', 'charles-doyne-anderson-straker-198', NULL, 'Charles Doyne Anderson Straker was born in India. His mother was born in South Africa and had married an officer in the East India Company Army. When Charles was 16, he moved to London to study Military Science at King''s. He then returned to India to join the Madras Artillery and rose through the ranks over the following 25 years, finally retiring in 1884 as a lieutenant colonel.', '2024-08-16 15:21:37+00', 'Assigned male at birth', 'English', NULL, NULL, NULL, 'Born in India to mother from South Africa', true, 'Jonah Miller'),
	(199, 'Roger Swire', 'roger-swire-199', NULL, 'Roger Swire was born in Manfield, Yorkshire, and studied Military Science for two years at King''s. He then joined the 17th (Leicestershire) Foot as a junior officer. After a brief period of service in Gibraltar, his regiment was deployed on active service in the Crimean War. Roger took part in the siege of Sebastopol and the battle of Great Redan, where he was ''wounded dangerously''. He was awarded a medal but never fully recovered and retired on half pay.', '2024-08-16 15:43:25+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Jonah Miller'),
	(195, 'Henry Hugh Hoare', 'henry-hugh-hoare-195', 'Esq. Henry Hugh Hoare. ', 'Henry Hoare became a partner of the family bank in 1785 and inherited the family home in 1787, selling it in 1827 as his primary residence was in St James''. Disapproving of the Catholic Emancipation, he was invested and involved with the Church of England acting as treasurer for the Society for the Propagation of the Gospel in Foreign Parts and acting as head of the building committee for the rebuilding of a church opposite the bank on Fleet Street. In 1797 he bought a Buckinghamshire estate from Lord Fitzroy and took a keen interest in land management. As his elder brother had died in 1828, he became a senior partner in the family bank and ten years later inherited the barony as well as estate in Wiltshire. He and his wife Maria married in 1783 and had sixteen children. ', '2024-08-15 21:05:26+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born at Barn Elms, London Borough of Richmond. Lived at 7 York Street, St. James''.', true, 'Arin Edwards'),
	(250, 'Anne Routledge', 'anne-routledge-250', NULL, NULL, '2024-08-20 18:51:26.019264+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(251, 'Henry Ryder', 'henry-ryder-251', 'Right Hon. M.P.', NULL, '2024-08-20 21:38:57.614083+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(196, 'William Roger Snow', 'william-roger-snow-196', NULL, 'William Roger Snow was a London banker''s son who spent a year at King''s studying Military Science. The following year he joined the Commissariat Staff Corps, responsible for supplying the army with food and equipment. He served for more than twenty years in London and Bengal.', '2024-08-16 14:22:26+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Jonah Miller'),
	(197, 'Edmund Staveley', 'edmund-staveley-197', NULL, 'Edmund Staveley was born into a gentry family in London. He was sent to school in Nottinghamshire before studying Military Science at King''s. On leaving KCL, he joined the Royal Artillery as a junior officer. His first posting was to India, where he took part in the suppression of the 1857 Indian Rebellion and received a medal for his role in the British capture of Lucknow. After the Rebellion he remained in the Artillery, serving in South Africa and Malta.', '2024-08-16 15:04:29+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Jonah Miller'),
	(252, 'Harriet Arbuthnot', 'harriet-arbuthnot-252', NULL, NULL, '2024-08-21 13:14:16.497637+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(253, 'Charles Arbuthnot', 'charles-arbuthnot-253', NULL, NULL, '2024-08-21 13:14:44.058096+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(188, 'C. M. Sutton', 'c-m-sutton-188', 'Right Hon. / Viscount Canterbury', 'Sutton graduated Cambridge with a BA in 1802 and a MA in 1805. In 1806, he was called to the bar and elected MP for Scarborough, which he maintained until 1832. His father was the grandson to the third Duke of Rutland. In 1809, he was invited to take the office of the judge-advocate general and in 1817 was the ministerial candidate for the speaker of the house, which he won with a great majority. In 1835, Robert Peel gave him the viscountcy of Canterbury.  Sutton was against the catholic emancipation.', '2024-08-15 14:59:32.7101+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(245, 'Henry William Majendie', 'henry-william-majendie-245', 'Rt. Rev. Dr. Lord Bishop of Bangor', 'Majendie came from a French ecclesiastical family which had emigrated to England in the previous generation. His father John Majendie was preceptor to Queen Charlotte, canon of Windsor in 1774 and the Queen''s domestic chaplain as well as tutor to her two sons. The son was educated at Charterhouse and obtained a scholarship to Christ''s College, Cambridge graduating with a BA in 1776 as well as fellowship, MA in 1785, DD in 1791. Henry Majendie was ordained in Worcestershire in 1783 where he was vicar from 1783 to 1785 and preceptor to Prince William from 1780. He was made canon of Windsor in 1785, vicar of Nether Stowey from 1790 to 1793 and afterwards in 1793 vicar of Hungerford for three years. He resigned from these posts when he was appointed to the residential prebend at St Pauls and the vicarage of New Windsor. In 1800, he became bishop of Chester, and in 1809 bishop of Bangor which he maintained until his death. Majendie founded a Sunday school and took interest in educating the poor primarily as a method for social control. He appointed relatives in valuable posts, including his sons, attracting charges of nepotism. He and his wife Anne had thirteen children. Majendie was against the catholic emancipation.', '2024-08-20 18:37:52.729773+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(298, 'Marquess of Bristol', 'marquess-of-bristol-298', 'Frederick William Hervey', 'Suceeded his father''s title of the Earl of Bristol in 1803 despite being the youngest son due to his brother predeceasing him, Hervey was the first Marquess of Bristol after being made so in 1826 alongside Earl Jermyn. In 1805 he became a fellow of the Royal Society while from 1788-93 he was ensign to the first footguards. Hervey was also M.P. for Bury St. Edmunds and in 1806 inherited his uncles'' estates.', '2024-09-11 16:08:28.230659+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(182, 'George Henry Law', 'george-henry-law-182', 'Rt. Rev. Dr. Lord Bishop of Bath and Wells.', 'Law was the son of the bishop of Carlisle, educated at Cambridge where he graduated in 1781 with a BA as second wrangler, then being elected a fellow of Queen''s College and getting his MA in 1784 and DD in 1804. His father helped in his appointment ot a prebendal stall in Carlisle Cathedral, as well as the vicarage of Torpenhow in 1787. Law was rector of Kelshall, Hertfordshire and in 1791 rector of Willingham Cambridgeshire. Law would marry Jane Adeane in July of 1784. By 1812 he had been translated to the bishopric of Chester, which his brother the lord chief justice had influenced. He was deeply concerned about the suffering of the rural poor and children in factories, being the only bishop to support Robert Peel''s bill to lessen the hours that children could work in factories. He also supported small land grants, lower rents and tax concessions for the poor, Law was invested in the reform of the church primarily through rigorous theological training and was against the Catholic Emancipation.', '2024-08-15 10:29:27+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Born in Peterhouse, Cambridge. Lived at Langham Place, London.', true, 'Arin Edwards'),
	(254, 'Comyn Ching', 'comyn-ching-254', NULL, 'Born the son of William John Ching, a Barrister at Law, Comyn Ching attended King''s College London from 1852 to 83. He joined 22nd Kent Rifle Volunteer Corps and achieved a junior rank Ensign in 1866. He worked as a gas engineer and married on two separate occasions to Marion J. Adams and Agnes Elizabeth.', '2024-08-26 12:09:02+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, 'Born in Bloomsbury, London Borough. Resided at Kingston, Surrey and Milton, Kent', true, 'Arin Edwards'),
	(255, 'John B Barker', 'john-b-barker-255', NULL, NULL, '2024-08-26 12:12:25.943873+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, '', true, 'Im Chiew Ng'),
	(256, 'Edward Bell', 'edward-bell-256', NULL, NULL, '2024-08-26 12:13:10.622553+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(257, 'Robert Bennett', 'robert-bennett-257', NULL, NULL, '2024-08-26 12:14:20.229783+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, 'Born in Cork, Ireland', true, 'Im Chiew Ng'),
	(258, 'James C Berkeley', 'james-c-berkeley-258', NULL, NULL, '2024-08-26 12:14:59.975129+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(259, 'Robert Berkeley', 'robert-berkeley-259', NULL, NULL, '2024-08-26 12:15:38.392025+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(260, 'George Blewitt', 'george-blewitt-260', NULL, NULL, '2024-08-26 19:09:31.809121+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(261, 'Arthur Cecil Blunt', 'arthur-cecil-blunt-261', NULL, NULL, '2024-08-26 19:09:31.809121+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(262, 'Joseph HF Blyth', 'joseph-hf-blyth-262', NULL, NULL, '2024-08-26 19:09:31.809121+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(266, 'Joshua J Bowness', 'joshua-j-bowness-266', NULL, NULL, '2024-08-26 19:15:53.466356+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Im Chiew Ng'),
	(271, 'Arthur Manning Tuck', 'arthur-manning-tuck-271', NULL, 'Arthur Manning Tuck was from a gentry family in Suffolk. He came to KCL aged 15 in 1849 and studied Military Science for a year. He then joined the 36th regiment as a junior officer and was stationed in Jamaica, where he died of yellow fever a few years later.', '2024-08-27 09:03:10+00', 'Assigned male at birth', 'English', 'United Kingdom', NULL, NULL, NULL, true, 'Jonah Miller'),
	(246, 'Queen Charlotte', 'queen-charlotte-246', NULL, NULL, '2024-08-20 18:38:19.183181+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(248, 'Thomas Poole', 'thomas-poole-248', NULL, NULL, '2024-08-20 18:41:14.145055+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(249, 'Dr Samuel Berdmore', 'dr-samuel-berdmore-249', NULL, NULL, '2024-08-20 18:42:23.632454+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(276, 'John Tindal De Veulle', 'john-tindal-de-veulle-276', NULL, 'Born to John de Veulle and Anne Eliza de Veulle, with a twin brother Acton who died in 1851, John Tindal attended King''s College London from 1848 to 50. The Channel Islands Census of 1851 shows he was born in 1831 and baptism record shows he was baptised 23rd October 1830. Both he and his brother are reported to have a ''KIA or early death'' stamp, but for John, his death could not be traced as to what reason. Acton has been recorded as the head of his own household in the 1851 Channel Islands Census, there is a chance that he either moved out or their father died.', '2024-09-01 15:36:55+00', 'Assigned male at birth', 'English', 'The Channel Islands', NULL, NULL, 'Born and resided in Grouville Civil Parish, St Helier Jersey, Channel Islands', true, 'Arin Edwards'),
	(277, 'J Des Barres', 'j-des-barres-277', NULL, 'J Des Barres was born to Augustus Wallott/Walter/Wallet, a Judge in the Supreme Court, and Isabella Des Barres, a parish birth register; parents married in West Or Old Parish, Greenock, Renfrew, Scotland on 11th June 1833. He attended King’s College London between 1852 to 54, and served in the Royal Horse Artillery from National Army Lists. In India RHA served in Indian Mutiny, Crimean War, Peninsular War, Anglo-Zulu War and the Boer War. He ranked as Lieutenant 1st July 1861, Captain 25th November 1874, Major 21st December 1881, honorary rank of Lieutenant-Colonel 6th September 1884 upon retirement. He worked as a Magistrate in Mageela House, Curryglass, Tallow, Ireland from the 1892 County Directory.', '2024-09-02 09:48:40+00', 'Assigned male at birth', 'English', 'Canada', NULL, NULL, 'Born in St John''s Parish, Newfoundland', true, 'Arin Edwards'),
	(279, 'Lady Charlotte Florentia Clive', 'lady-charlotte-florentia-clive-279', 'Lady Charlotte Florentia Clive', NULL, '2024-09-06 22:38:30+00', 'Assigned female at birth', 'English', 'Italy', NULL, NULL, NULL, true, 'Arin Edwards'),
	(280, 'John George de la Poer Beresford', 'john-george-de-la-poer-beresford-280', 'Most Rev. Lord Archbishop of Armagh', 'Beresford was son of the second earl of Tyrone and first Marquess of Waterford, and his wife Elizabeth Monck born in Dublin, Ireland. He graduated Oxford with a BA 1793, MA 1796, and DD in 1805. He was ordained deacon in 1795 and priest in 1797 beginning his episcopal career in his family rectorate of Clonegam and Newtownman in the Lismore diocese. In 1799 he obtained the deanary of St Macartan''s in Clogher, in 1801 the rectory of Termonmaguirk in the diocese of Armagh, in 1805 the bishopric of Cork and Ross then in 1807 he was translated to the see of Raphoe then Clogher in 1819. This trajectory continued as by 1820 he was archbishop of Dublin and privy councillor of Ireland. Finally, he was translated to the archbishopric of Armagh and the primacy of all Ireland in 1822, his diocese was combined in 1850, after the death of the bishop of Clogher, with the former. He spent a significant proportion of his income on charitable services such as erecting a £3000 belltower on the University of Dublin campus and £6000 to St Columba College which was intended to perform the same function as Eaton College for the Irish gentry. He was against the catholic emancipation. ', '2024-09-11 14:13:20.774235+00', 'Assigned male at birth', 'English', 'Ireland', 'White', '', 'Anglo-Irish', true, 'Ariunzaya Batkhuyag'),
	(284, 'Sir James Bart Langham', 'sir-james-bart-langham-284', NULL, 'Born the youngest son of the seventh baronet of Langham he inherited the title in 1812. He was an M.P and barrister also serving as High Sheriff of Northamptonshire in 1816.', '2024-09-11 14:33:36.144805+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(346, 'Hugh James Rose', 'hugh-james-rose-346', NULL, NULL, '2024-09-23 10:53:05.300116+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(347, 'Benjamin Harrison', 'benjamin-harrison-347', NULL, NULL, '2024-09-23 10:53:24.221822+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(299, 'Thomas WC Dickinson', 'thomas-wc-dickinson-299', NULL, 'Born to Thomas, a Major General in the Bengal Army, and louisa Dickinson, he attended King''s College London between 1850 to 53. He was a ''gentleman'' as written on his marriage certificate.', '2024-09-12 10:34:11+00', 'Assigned male at birth', 'English', 'Myanmar', NULL, NULL, 'Okyab Anscan East Indies British Sub; Burmah Akyab East Indies (modern day Sittwe in Myanmar); baptised on 25th December in Calcutta, Bengal, India. 1861 Census lived as a lodger on Winchester Street in Basingstoke; 1871 Census lived at Charing Cross Hotel as a visitor; 1881 Census lived at 2 Sandringham Villa Stopford Road with his wife, son Thomas Vardy, and daughters Alice Louisa, Muriel Mary and Violette Elizabeth; 1883 electoral register had a dwelling-house at 70 Wellington Buildings?; 1886 lived in Havre de Pas, Jersey, Channel Islands where he died.', true, 'Arin Edwards'),
	(300, 'Lord Rolle', 'lord-rolle-300', 'John Rolle', 'His father was a major colonial landowner in Florida in the 1760''s and as compensation for the loss of the American plantations, Rolle was due to inherit plantations in Barbados. The title Baron Rolle of Stevenstone was revived and conferred onto him in 1796. He was very conservative and held a deep-seated distaste for Charles James Fox and Henry Dundas. In 1788 he was made colonel of the South Devon militia, recorder of Torrington in 1797 and colonel of the Royal Devon yeomanry in 1801. He was one of the twenty-two lords staunchly against Catholic emancipation. Upon his death his estate was worth £300,000 and because both of his marriages were childless his wealth and titles were given to a nephew though his second marriage.', '2024-09-12 10:56:34.382836+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(326, 'Richard William Penn Curzon-Howe', 'richard-william-penn-curzon-howe-326', 'Earl Howe', 'He inherited his grandfather''s viscountcy in 1820 as both his father and grandfather predeceased him adding Howe to his name by royal license in 1821 becoming Earl Howe. Between 1829 and 1830 he was made Tory Lord of the Bedchamber to King George IV and dismissed on the insistence of Lord Grey due to his stong opposition to Catholic emancipation. In 1830 he was also made part of the Royal Guelphic Order. He had ten children by his first wife and three by his second, who he married after Lady Brudenell''s death in 1830. He was against the catholic emancipation', '2024-09-21 18:26:56.830708+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(281, 'George Dunbar', 'george-dunbar-281', NULL, NULL, '2024-09-11 14:23:32.902523+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(282, 'Joseph Dixon', 'joseph-dixon-282', NULL, NULL, '2024-09-11 14:23:51.169114+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(283, 'Henry Cooke', 'henry-cooke-283', NULL, NULL, '2024-09-11 14:24:13.962058+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(285, 'John Banks Jenkinson', 'john-banks-jenkinson-285', 'Rt. Rev. Dr. Lord Bishop of St. Davids', 'Jenkinson was brother to Charles Jenkinson first earl of Liverpool, colonel in the army, joint secretary for Ireland and gentleman usher to Queen Charlotte. John Jenkinson graduated Oxford in 1804 with a BA, an MA in 1807 and DD in 1817. His episcopal career began when he was made prebendary of Worcester in 1808 then rector of Leverington in 1812, dean of Worcester in 1818 and master of St Oswalds, Worcester in 1818. By 1825 he was elected bishop of St. David’s and a month later in August made canon of Durham - worth £9,000 annually to him and his family. Having abstained from the first vote on Catholic emancipation, by 1829 he had shifted to accepting the relief bill. Jenkinson was involved with the foundation of both Durham University as well as King''s College London. He maintained a school in Carmarthen for children from poor families. His eldest son inherited Charles Jenkinson''s title becoming eleventh baronet of Liverpool in 1855. He supported the catholic emancipation.', '2024-09-11 14:39:13.749559+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(287, 'Earl Brownlow', 'earl-brownlow-287', 'John Cust', 'The eldest son of the 1st Baron of Brownlow, elected MP for Clitheroe in 1802 after his tour of Russia and Germany in 1801. Once his father passed in 1807, he succeeded the titles and estates. He was awarded compensation in 1837 under the Slave Compensation Act of the same year, his younger brother married into the Boode family who were a Dutch slave-owning family. He married three times having eight children between his first two wives.', '2024-09-11 14:51:55.398901+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(288, 'Mary Anne Boode', 'mary-anne-boode-288', NULL, NULL, '2024-09-11 14:57:06.237597+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(289, 'Wilbraham Egerton', 'wilbraham-egerton-289', NULL, NULL, '2024-09-11 15:00:03.362264+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(290, 'John Ireland', 'john-ireland-290', 'Rev. Dr. ', 'Born the son of a butcher in Ashburton he was educated at the local grammar school and later attended Oriel College at Oxford Univeristy. He gained his MA, BD, and DD thirty years later in 1810. He served as vicar of Croydon and chaplain to the Earl of Liverpool during which he was appointed Canon of Westminster. Ireland became sub-dean in 1806 and ten years later Dean of Westminister, dean of the Order of Bath and rector of Islip, Oxfordshire. In 1825 he donated £4000 for four scholarships at Oxford and spent £2000 on the house for the master of Ashburton Grammar. During his tenure as Dean of Westminster he held the crown at the coronations of George IV and William IV. He was conservative regarding ecclesiastical and political reform opposing Catholic emancipation.', '2024-09-11 15:04:06.737757+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(292, 'John Kaye', 'john-kaye-292', 'Rt. Rev. Dr. Lord Bishop of Lincoln', 'Kaye was educated at Charles Burney''s school in Hammersmith then went to Christ''s College, Cambridge studying under Richard Porson and developing a close friendship with C.J. Blomfield and J.H. Monk. He graduated with a BA in 1804 as well as senior wrangler, a senior chancellor''s medallist, the second Smith''s prize and elected to a Christ''s fellowship. From 1815-16 he was the vice-chancellor of Cambridge, reinstating regius professor''s public lectures. In 1820 Lord Liverpool made Kaye bishop of Bristol, also being consecrated at Lambeth in July of the same year. Kaye was President of the Philosophical Society in 1827 as well as fellow of the Royal Society in 1848. He was for the abolition of slavery framing his opposition through a religious lens. In 1827 he was translated to diocese of Lincoln forging close connections with his archdeacons Henry Bayley of Stow and Charles Goddard of Lincoln. Kaye was vehemently against Catholic emancipation.', '2024-09-11 15:13:16.216409+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(286, 'Charles Jenkinson', 'charles-jenkinson-286', 'the first earl of Liverpool', NULL, '2024-09-11 14:46:31.173584+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(331, 'John Wilson Croker', 'john-wilson-croker-331', NULL, NULL, '2024-09-22 15:10:52.274924+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(329, 'Prince George (IV)', 'prince-george-iv-329', NULL, NULL, '2024-09-22 14:48:23.1223+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(330, 'Henry Vane', 'henry-vane-330', NULL, NULL, '2024-09-22 15:10:36.8891+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(339, 'Cyril Jackson', 'cyril-jackson-339', NULL, NULL, '2024-09-22 16:32:48.925457+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(332, 'Lord Byron George Gordon Byron-Noel', 'lord-byron-george-gordon-byron-noel-332', NULL, NULL, '2024-09-22 15:11:10.716157+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(293, 'John Luxmoore ', 'john-luxmoore-293', 'Rt. Rev. Dr. C.S M.A Lord Bishop of St. Asaph Lyall', 'Luxmoore is regarded as the epitome of clerical greed in the Church of England in the nineteenth century due to him holding several clerical posts at one time. He was a tutor to the Duke of Buccleuch while at Oxford and due to his support became rector of St George the Martyr in London in 1782. In 1793 he was made prebendary of Canterbury, in 1799 dean of Gloucester, in 1800 rector of Taynton Gloucestershire and in 1806 exchanged St George the Martyr for St Andrew''s in Holbourn. This trend of successive appointments continued as he was appointed bishop of Bristol in 1807, translated to Hereford the following year and in 1808 obtained the deanary of Gloucester. He held the archdeaconry of St Asaph at the same time as the bishopric of Bristol, earning his family rouhgly £27,000 in income from St Asaph and Hereford. After his death Luxmoore''s family earned £7,000 from St Asaph and his son Charles Scott Luxmoore acted similarly, holding mutliple episcopal posts at once. ', '2024-09-11 15:29:28.22699+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(233, 'Fifth Duke of Rutland', 'john-manners-233', 'John Henry Manners', 'Born in Knightsbridge, London as the eldest son of the 4th Duke of Rutland and succeeded to the dukedom in 1787 when his father passed. Lord Lieutenant of Leicestershire between 1799-1857. Imortalised as the ''Duke'' in Benjamin Disraeli''s novel Coningsby along with two of his ten children. He was a keen supporter of horse-racing with his best horse Cadland, which he bred, winning the 1828 Epsom Derby and 2000 Guineas race in Newmarket the same year. ', '2024-08-20 17:09:15.126855+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(296, 'Lord Kenyon', 'lord-kenyon-296', 'George Kenyon', 'Born the second son of Lloyd Kenyon, the first baron Kenyon, he succeeded to his father''s title after his elder brother died in 1801 and his father in 1802. He graduated Oxford in 1794 earning a BA in 1796, then MA in 1802 and finally DCL in 1814. He was an ardent conservative and anti-catholic activist printing in 1810 an Observation on the Roman Catholic Question. In 1811 he was called to the bar and then in 1811 a custos brevium of the court of the king''s bench. He joined the Orange order in 1808 and after the 1829 emancipation of Roman Catholics supported it financially. He appointed William Blennerhasset Fairham to lead the organisation which in 1836 due to his appointee''s mismanagement led to his withdrawal from public life as it was implicated as a secret society attempting to overthrow the royal succession.', '2024-09-11 16:02:42.349642+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(294, 'Duke of Buccleuch', 'duke-of-buccleuch-294', 'Earl of Dalkeith', NULL, '2024-09-11 15:35:18.505285+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(297, 'William Blennerhassett Fairman', 'william-blennerhassett-fairman-297', NULL, NULL, '2024-09-11 16:05:12.145481+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(291, 'William Gifford', 'william-gifford-291', NULL, NULL, '2024-09-11 15:10:38.603134+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(295, 'Benjamin Disraeli', 'benjamin-disraeli-295', 'First Earl of Beaconsfield', NULL, '2024-09-11 15:48:38.003656+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(302, 'Queen Victoria', 'queen-victoria-302', NULL, NULL, '2024-09-12 11:20:57.541712+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(303, 'Joshua Watson', 'joshua-watson-303', 'Esq.', 'Born in Tower Hill Joshua was the second son of John Watson, a wine merchant, and Dorothy Robson, a cousin to artist George Fennel Robson, Watson attended three different schools before joining his father''s counting house at twenty-one as a partner. Watson and his wife Mary had two daughters, his wife was the daughter of a banker in the City of London. Although he spent a large portion of his life in the commercial world, Watson was dedicated to serving the Church of England through advocacy and charity. He was closely associated with the Hackney Phalanx and worked extensively throughout his life to extend charity to several religious and philanthropic causes. He was the first treasurer for the National Society for Promoting the Education of the Poor in the Principles of the Established Church and is considered largely responsible for raising £16000 in subscriptions and the appointment of the archbishop of Canterbury as president. Watson and Henry Handley Norris bought the British Critic in 1811 using it to publish the principles of the church. From 1815 Watson retired and dedicated himself to philanthropy becoming tresurer of the Clergy Orphan Society, a govenor of the London Fever Hospital and on account of his good work recieved presents from the kings of Prussia and Saxony as well as a diploma of honour from the University of Hamburg. He aided in making the SPG more fiscally stable increasing its annual income from £8100 in 1814 to £82,000 by 1855. He was invested and encouraged missionary work especially the building of colonial churches where several of his close friends were appointed as bishops. The death of his wife in 1831, brother in 1839 and daughter in 1840 caused him deep distress, driving him to sell his Westminster house in 1840 and move in with his sister-in-law in Clapton.', '2024-09-12 11:24:16.755365+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(304, 'Lord Crewe', 'lord-crewe-304', 'John Crewe (trustees)', 'Lord Crewe graduated Oxford in 1760 with no degree and began in 1761 his two-year tour of France and Italy then returning to his Cheshire estates. He was an esteemed agricultralist. His political career began in 1765 when he was elected as M.P. for Stafford and was a supporter of the Duke of Grafton. In 1782 Crewe''s Act was passed barring revenue officers from participating in parliamentary elections. He was a keen supporter both politically and financially of Charles James Fox going into opposition with him in 1783. In 1773 he took on £1200 in annuity on Fox''s behalf and spent each year roughly £12,000 to support Fox. In 1784 he led the counterattack on a crowd attempting to break the windows of Fox''s house and in 1806 was awarded a peerage for his steadfast support. He and his wife Frances had a happy marriage with four children, two boys and two girls. Frances was a noted beauty and political hostess well-liked by members of Fox''s party. His son and heir John Crewe was disinherited as far as his father was able to do so.', '2024-09-12 11:33:12.168706+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(305, 'Daniel H Doherty', 'daniel-h-doherty-305', NULL, 'Daniel H Doherty attended King''s College London from 1855-57. He served in the 3rd (the King''s Own) Regiment of the (light) Dragoons; 3rd (the King''s Own) Regiment of Hussars; 2nd Brigade North Irish Division. On the 3rd April 1886 Captain Daniel H. Doherty was given the honorary rank of Major from the 2nd Brigade North Irish Division.', '2024-09-12 11:42:12+00', 'Assigned male at birth', 'English', 'Ireland', NULL, NULL, '', true, 'Arin Edwards'),
	(307, 'Mrs Arbuthnot', 'mrs-arbuthnot-307', 'Harriet Arbuthnot', NULL, '2024-09-13 11:59:14+00', 'Assigned female at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(333, 'Thomas Gaisford', 'thomas-gaisford-333', NULL, NULL, '2024-09-22 15:11:25.709714+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(335, 'Shute Barrington Bishop of Salisbury', 'shute-barrington-bishop-of-salisbury-335', NULL, NULL, '2024-09-22 15:25:10.375175+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(336, 'Henry Addington P.M', 'henry-addington-p-m-336', NULL, NULL, '2024-09-22 15:25:26.951741+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(340, 'Duke of York', 'duke-of-york-340', NULL, NULL, '2024-09-22 16:33:09.860974+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(278, 'Hugh Percy', 'hugh-percy-278', ' Duke of Northumberland K.G ', 'The first son of the 2nd Duke of Northumberland suceeding to the dukedom in 1817, mere months after his marriage. He obtained an MA and LLD from Cambridge in 1805 and 1809, he was in 1834 appointed high steward and in 1840 chancellor. As a politician in the House of Lords he spoke infrequently, considered a more moderate tory than his father had been, his career began when he was elected M.P. for Buckingham in 1806 then for Westminster in the same year and was summoned to the Lords in 1812. He attempted in 1807 to turn the Slave Trade Abolition Bill into a Slavery Abolition Bill it is debated whether this was from an anti-slavery perspective or an attempt to rile up his political opponents. He opposed Catholic emancipation and was in most of his political influences illiberal, he was in favour of using force for strikebreaking with miners in his constituency, supported a bill to prohibit all drilling/mining without a license issued by a lord lieutenant. In 1829 he was appointed lord lieutenant of Ireland, governor of King''s College London and in 1834 a trustee of the British Museum. He and his wife were close but had no children, Charles Greville suggested that Percy relied on his wife''s advice frequently.', '2024-09-06 22:36:26.007614+00', 'Assigned male at birth', 'English', 'Ireland', 'White', NULL, 'Resided in Charing Cross', true, 'Arin Edwards'),
	(308, 'Charles X', 'charles-x-308', 'Charles Philippe, Charles X of France,  King of France
', NULL, '2024-09-13 12:02:38+00', 'Assigned male at birth', 'French', 'France', NULL, NULL, NULL, true, 'Arin Edwards'),
	(309, 'Sir James Graham', 'sir-james-graham-309', NULL, NULL, '2024-09-13 12:04:29+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(310, 'Charles Greville', 'charles-greville-310', NULL, NULL, '2024-09-13 12:12:43+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Arin Edwards'),
	(239, 'Lord Albert Conyngham', 'lord-albert-conyngham-239', NULL, NULL, '2024-08-20 18:20:37.766051+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(306, 'Duke of Grafton', 'duke-of-grafton-306', NULL, NULL, '2024-09-12 11:46:28.167728+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(311, 'John Crichton-Stuart ', 'john-crichton-stuart-311', '2nd Marquess of Bute/ Industrialist', 'Born the eldest son to the first Marquis of Bute he attended Eton and then Cambridge then travelled with his paternal grandfather to France and Russia sustaining an eye injury that would continue to affect him for life. He took a keen interest in land management, working closely with his estate managers and largely shunned fashionable society due to his injury. He moved between his estates, which in total amounted to one hundred thousand acres. His landholding in Dowlaid ironworks would be extemely profitable being the fourth largest globally, making his son in the late nineteenth century the largest individual reciever of mineral royalties. This wealth was also poured into other ventures such as the construction of Cardiff dock in 1839 which by the end of the century handled more coal than anywhere in the world. The Marquess was also Lord Lieitenant of Glamorgan and Bute from 1815 until his death as well as colonel of the Glamorgan militia. His honors included FRS in 1818, DCL from Oxford in 1834, LLD from Cambridge in 1835, FSA in 1838 and KT in 1843. He married twice, with his first childless and his second providing him with a male heir to the estates. He was against the catholic emancipation. ', '2024-09-21 16:06:38.916287+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(313, ' Louis Phillipe', 'louis-phillipe-313', NULL, NULL, '2024-09-21 16:23:00.729305+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(314, 'Napoleon Bonaparte', 'napoleon-bonaparte-314', NULL, NULL, '2024-09-21 16:23:17.361116+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(315, 'George Horatio Cholmondeley', 'george-horatio-cholmondeley-315', 'Marquis Cholmondeley', 'Suceeding his father''s title after the first Marquess'' death in 1827, also being styled Viscount Malpas until 1815 then Earl of Rocksavage from 1815-27. He was elected a Tory M.P from 1817-21 and participated in the coronation of George IV in 1821. From 1830-8 he served as Lord Great Chamberlain and was admitted into the Privy Council in 1830. In 1858 he became constable for Castle Rising which he kept until his death in 1870. The family seats were Houghton Hall and Cholmondeley Castle. After a brief interest in Catholicism, he became a devout Methodist which he remained devout to throughout his life. Both of his marriages were childless, and his second wife survived him by sixteen years.', '2024-09-21 16:34:29.685069+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(319, 'Elizabeth Sophia Lawrence', 'elisabeth-sophia-lawrence-319', 'Mrs', 'Lawrence was born in Kensington in 1761 and inherited Studley Royal Park from her maternal aunt after her brother predeceased her. Due to this inheritance, she owned and managed roughly two thirds for north Yorkshire, she restored the abbey alongside other features of the estate. Her charitable efforts included building schools, churches, orphanages and asylyms as well as leaving money in her will to the poor, sick or widowed tenants of her estate. She was active in local politics, having a significant effect on who was elected in her constituency. She was against the catholic emancipation', '2024-09-21 16:51:42.914086+00', 'Assigned female at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(320, 'Richard Fountayne Wilson', 'richard-fountayne-wilson-320', 'Esq. M.P.', 'Wilson''s paternal grandfather was bishop of Bristol while his maternal grandfather was dean of York. He along with his brother were orphaned in 1786, it is unknown who cared for them. His brother died in 1801 leaving Wilson to inherit his grandfather''s estate at High Melton Hall in 1802. He was in 1807 elected high sheriff for Yorkshire and in the 1826 general election was voted M.P for the Tory party. In 1817 he gave the Leeds General Infirmary land valued at £1500. He was against the catholic emancipation.', '2024-09-21 16:57:27.410053+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(323, 'Richard Bagot', 'richard-bagot-323', 'Hon. And Rt. Rev. Dr. Lord Bishop of Oxford', 'Born in Northhamptonshire he attended Oxford where he graduated with a BA in 1803, a MA in 1806 and a DD in 1829. He was offered an All Souls Fellowship but declined. A nervous and reserved man he had little intrest in being visible politically within the church where he was ordained in 1806. His father presented him the rectory of Leigh in Staffordshire in 1806 and the following year the family seat of the Blithfield rectory. In 1812 he was made a prebendary of the Lichfield Cathedral and in 1817 a canonry of Worcester. Ten years later he was made dean of Canterbury. His translation to the bishopric of Oxford was initially rejected until the Duke of Wellington convinced him it would not be a stressful position, this advice did not prove true. Sixteen years later after being thrust at the center of the Oxford movement he pleaded for Sir Robert Peel to be translated elsewhere. In 1845 he was translated to Bath and Wells where he suffered nervous breakdowns due to his time at Oxford.', '2024-09-21 17:04:27.653137+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(341, 'William Vincent', 'william-vincent-341', NULL, NULL, '2024-09-22 16:33:25.712555+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(324, 'Richard Prosser', 'richard-prosser-324', 'Archdeacon Ven.', 'Born in Market Drayton, Shropshire as the fourth child of Humphrey Prosser and Eleanor Witherston. He graduated BA in 1770, MA in 1773, and DD in 1797 as well as elected chaplain-fellow in 1773. Prosser was ordained in London two years prior and by 1808 was appointed archdeacon of Durham which he remained as for thirty-five years. He established a parochial charity school in Easington building it in 1814 and endowing it in 1833. He and his wife only had one child, Richard Samuel who died at twelve. Prosser donated his library to Balliol upon his death and ordered his own manuscripts to be burned. His heir was his sister''s son Francis Richard Haggit MP who is estimated to have inherited £250,000. Much of this wealth aided in the restoration of English Roman Catholicism as his heir was a convert.', '2024-09-21 18:15:14.412922+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(247, 'King William IV', 'king-william-iv-247', 'Prince William', NULL, '2024-08-20 18:38:58.133931+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(312, 'Madame de Staël', 'madame-de-stael-312', NULL, NULL, '2024-09-21 16:22:42.897989+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(316, 'William Henry Cholmondeley', 'william-henry-cholmondeley-316', NULL, NULL, '2024-09-21 16:45:54.418202+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(317, 'Duke of Beaufort', 'duke-of-beaufort-317', NULL, NULL, '2024-09-21 16:46:15.576729+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(318, '1st Marquess Conyngham', '1st-marquess-conyngham-318', NULL, NULL, '2024-09-21 16:46:31.690353+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(321, 'Michael Sadler', 'michael-sadler-321', NULL, NULL, '2024-09-21 16:59:51.682825+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(322, 'Thomas Creevey', 'thomas-creevey-322', NULL, NULL, '2024-09-21 17:00:22.840857+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(325, 'Matthew Baillie', 'matthew-baillie-325', NULL, NULL, '2024-09-21 18:24:58.243738+00', 'Assigned male at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(327, 'Queen Adelaide', 'queen-adelaide-327', NULL, NULL, '2024-09-21 18:35:23.218909+00', 'Assigned female at birth', NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(328, 'Robert James Carr', 'robert-james-carr-328', 'Rt. Rev. Dr. Lord Bishop of Chicester', 'Carr was the son of a schoolmaster in Twickenham, where he attended primary school, who later became vicar for Ealing. He graduated Oxford in 1792, BA in 1796 and MA in 1806. While at Oxford he was ordained bishop of Salisbury and due to his friendship with the prince regent George, Prince of Wales and was given the vicarage of Brighton. The prince regent later became his patron and Carr attended to him during his last illness in 1827. From 1819-24 he was appointed the prebendary of Salisbury, Chicester and Hereford, later becoming dean of Hereford graduating BD and DD. In 1824 he was made bishop of Chichester and appointed the honorary position of clerk of the closet until the accension of Queen Victoria who dismissed him for his conservatism. Although he spoke little in the House of Lords he attended regularly and was notably against the Catholic Relief Bill while abstaining from the 1832 Reform Bill. In 1831 he was translated to the bishopric of Worchester.', '2024-09-22 14:41:15.446435+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(334, 'Thomas Burgess', 'thomas-burgess-334', 'Rt. Rev. Dr. Lord Bishop of Salisbury', 'One of six children Burgess was a shy and reserved man but well-liked. He entered Oxford on a scolarship studying Greek classics graduating BA in 1778, MA in 1782 and fellow in 1783. In 1784 he was ordained as a priest, a year later he became examining and domestic chaplain to Shute Barrington Bishop of Salisbury and was appointed to a prebendal stall in the Cathedral. He was invested, alongside the bishop, in increasing the amount of Sunday Schools. In 1789 he published a treatise arguing against both slavery and the slave trade. When Barrington was translated to Durham, Burgess followed and was rewarded with the first available prebendall stall. Days after obtaining his DD, Burgess'' old school and university peer P.M. Henry Addington awarded him the see of St. David''s in Wales. He made religious literature free or reduced the prices and attempted to improve the training of the clergy. He strongly opposed Catholic Emancipation. In 1825 he accepted his translation to Salisbury, a much wealthier diocese, where he remained until his death. He left 8000 books to St David''s College, Lampeter alongside money.', '2024-09-22 15:18:49.16336+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(337, 'Walter Francis Montagu Douglas-Scott', 'walter-francis-montagu-douglas-scott-337', 'Duke of Buccleuch and Queensbury', 'Second son of the fourth duke of Buccleuch and Hon. Catherine Townshend born at Dalkeith House, Midlothan, Scotland, inherited the dukedom at thirteen as his elder brother had passed. Staunch conservative and served in Robert Peel''s ministry (1842-46) and lord president of the council for the first six months of 1846. Magnate and politician also owned one of the largest most profitable estates. In 1835 he was made a knight of the garter.', '2024-09-22 16:07:48.531238+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, 'Scottish', true, 'Ariunzaya Batkhuyag'),
	(338, 'William Carey', 'william-carey-338', 'Rt. Rev. Dr. Lord Bishop of St. Asaph/ Exeter', 'Son of a tradesman named Richard Carey. Carey attended Westminster with the help of William Vincent, later becoming captain and then headmaster of the school. He graduated Oxford with a BA in 1793 and MA in 1796, going on to become a tutor until 1800 at Christ Church college. He was ordained in 1799 holding the perpetual curacy of Cowley in 1800 going on to be a preacher at Whitehall Church. His friend Cyril Jackson, who was the head of his Oxford College, significantly stengthened his application to become headmaster of Westminster where he became well-liked despite the consensus pointing toward a tacit endorsement of fighting. The post of sub-almoner to the King was given to him in 1808 and in 1809 the prebend of Westminster. He was placed in charge by the duke of York of educating the children of soldiers at the Royal Military Asylum in Chelsea. Retiring to Yorkshire from 1814-20 he was then made bishop of Exeter,and translated to St Asaph as a bishop in 1830.', '2024-09-22 16:16:02.564034+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(342, 'William Howley', 'william-howley-342', 'Right Hon. And Most Rev. Dr.  Archbishop of Canterbury', 'Born in Ropely, Hampshire to Willam and Mary Howley. His father was a vicar of Bishop''s Sutton and Ropely and his mother was the daughter of a wine merchant. While at Oxford he was tutor to William II of the Netherlands and in 1792 became chaplain to the Marquess of Abercorn who significantly aided in his career progression. He and his wife had five children together two sons and three daughters. He became Archbishop of Canterbury after the death of Charles Manners-Sutton in 1828, he was strongly opposed to Catholic emancipation. Howley was concerned that if the church did not reform itself the government would do so for them and so was deeply invested in the Ecclesiastical Commission of the 1830''s and 40''s.', '2024-09-23 10:36:18.443076+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(343, 'Archdeacon J.J. Watson', 'archdeacon-j-j-watson-343', NULL, NULL, '2024-09-23 10:51:36.248227+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(344, 'Marquess of Abercorn', 'marquess-of-abercorn-344', NULL, NULL, '2024-09-23 10:51:54.701408+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(345, 'William II of the Netherlands', 'william-ii-of-the-netherlands-345', NULL, NULL, '2024-09-23 10:52:14.154506+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(348, 'William Van Mildert', 'william-van-mildert-348', 'Rt. Rev. Dr. Lord Bishop of Durham/ Bishop of Llandaff', 'Mildert was the fourth child and second son of Cornelius, a gin distiller, and Martha Hill, both his great and great-great grandfather were deacons of the Dutch reformed church. He toured the Netherlands in the summer of 1792 and in 1779 entered Merchant Taylor''s School in preparation for university where he graduated BA in 1787 and MA in 1790. He married but never had any children. In 1789 he was ordained deacon of the Oxford curacy of Sherborne in Hampshire and in December of the same year was ordained priest of the curate of Witham, Essex. His Boyle lectures in 1802 depicted Judaism, Islam, popery, freemasonry, and the French revolution as satanic conspiracies. He narrowly escaped bankruptcy in 1810 due to fellow members of the Hackney Phalanx offering financial aid. The same year he accepted Lord Liverpool''s offer of the regius professorship of divinity at Oxford where he became a canon of Christ Church college, a BD and DD. In 1819 he was concecrated Bishop of Llandaff. He supported the founding of both the University of Durham and King''s College London as he believed they could dissuade the founding or success of secular universities. He was against the catholic emancipation.', '2024-09-23 13:19:42.173169+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(349, '4th Duke of Queensbury', '4th-duke-of-queensbury-349', NULL, NULL, '2024-09-23 15:43:55.669936+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(350, 'William Hill', 'william-hill-350', NULL, NULL, '2024-09-23 15:44:14.570847+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(351, 'Thomas Sikes', 'thomas-sikes-351', 'Rev.', NULL, '2024-09-23 15:46:53.7136+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(352, 'Rev. Dr. Richards', 'rev-dr-richards-352', NULL, NULL, '2024-09-23 15:48:03.499633+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(353, 'Messrs Drummonds', 'messrs-drummonds-353', NULL, NULL, '2024-09-23 15:49:49.082026+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(354, 'Messrs Hoares', 'messrs-hoares-354', NULL, NULL, '2024-09-23 15:50:57.867928+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(355, 'Rev. J. M. Rogers', 'rev-j-m-rogers-355', NULL, NULL, '2024-09-23 15:52:33.111295+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(356, 'Charles Burney', 'charles-burney-356', NULL, NULL, '2024-09-23 16:06:56.455745+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(357, ' J.H Monk', 'j-h-monk-357', NULL, NULL, '2024-09-23 16:07:17.340961+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(358, 'Charles Goddard', 'charles-goddard-358', NULL, NULL, '2024-09-23 16:07:32.888745+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(359, 'Henry Bayley of Stow', 'henry-bayley-of-stow-359', NULL, NULL, '2024-09-23 16:07:49.862042+00', NULL, NULL, NULL, NULL, NULL, NULL, true, 'Ariunzaya Batkhuyag'),
	(360, 'Tomáš Garrigue Masaryk', 'tomas-garrigue-masaryk-360', NULL, 'Czech intellectual and politician who served as the first president of Czechoslovakia from 1918 to 1935.  Tomáš Garrigue Masaryk was born in 1850 in the town of Hodonín in the province of Moravia, at the time a part of the Austrian Empire. His parents, of Czech and Slovak origin, worked on a local aristocratic estate. Masaryk pursued an academic career, studying at the University of Vienna and later the University of Lepizig. In 1882, he was appointed as a professor of philosophy at the Charles-Ferdinand University in Prague, where he first developed full proficiency in standard Czech after a previous education in German. While studying in Leipzig, he met Charlotte Garrigue, a fellow student from the United States, whom he would later marry. He subsequently changed his own name to include Garrigue’s surname, reflecting his commitment to women’s equality. Masaryk was a strong believer in science and a fierce critic of Austria’s Habsburg dynasty and the Roman Catholic church. While a passionate Czech patriot, he was critical of nationalist mythology and opposed antisemitism. He served as member of the Austrian parliament, affiliated with Czech political parties, between 1891 and 1893 and between 1907 and 1914.  At the outbreak of the First World War, he was deemed a traitor to Austria-Hungary due to his support for Czechoslovak independence and went into exile, initially residing in different parts of Western Europe and Russia. Masaryk was appointed as a lecturer in the new Slavonic School at King’s College London in the autumn of 1915 and delivered his inaugural lecture on ‘The Problem of Small Nations in Europe.’ While delivering periodic lectures at King’s, he continued to travel widely to lobby for support of Czechoslovak independence. He found an especially receptive audience in the United States, drawing on contacts from his days as a visiting professor at the University of Chicago, before the war, and on the large Czech and Slovak emigrant communities. When the Austro-Hungarian empire collapsed in October 1918, Czechoslovakia declared independence, and the newly formed National Assembly elected Masaryk as the nation’s first president in November. He was re-elected three times, serving as president until 1935. During his presidency, Czechoslovakia was among the most stable democracies in Europe, though this stability depended in part on management by a small political and intellectual elite connected to Masaryk. This milieu was known as ‘the Castle,’ a reference to the presidential residence. Masaryk died in 1937, at the age of 87.', '2024-10-15 19:45:46+00', 'Assigned male at birth', 'Czech', 'Austria', 'White', 'Czech', 'Austrian until 1918; Czechoslovak after 1918', true, 'Erika Melek Delgado'),
	(131, 'Frances Burney', 'frances-burney-131', NULL, 'Novelist, diarist, playwright also known as Fanny Burney and Madame d''Arblay. All Burney''s novels explore the lives of English aristocrats and satirise their social pretensions and personal foibles, with an eye to larger questions such as the politics of female identity. With one exception, Burney never succeeded in having her plays performed, largely due to objections from her father, who thought that publicity from such an effort would be damaging to her reputation. The exception was Edwy and Elgiva, which was not well received by the public and closed after the first night''s performance despite having Sarah Siddons in the cast.From her fifteenth year Frances lived in the midst of a brilliant social circle, gathered round her father in Poland Street, and later in St Martin''s Street. Garrick was a constant visitor, and would arrive before eight o''clock in the morning. Of the various "lyons" they entertained she leaves a graphic account, notably of Omai, the young man from Raiatea, and of Alexis Orlov, a favourite of Catherine the Great. She first met Dr Johnson at her father''s home in March 1777.Married General Alexandre d''Arblay, French emigre and supported the family through her writings. ', '2024-02-29 11:23:38.630795+00', 'Assigned female at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(142, 'William Wilberforce', 'william-wilberforce-142', NULL, ' British politician, a philanthropist, and a leader of the movement to abolish the slave trade. A native of Kingston upon Hull, Yorkshire, he began his political career in 1780, and became an independent Member of Parliament (MP) for Yorkshire (1784–1812). In 1785, he underwent a conversion experience and became an Evangelical Anglican, which resulted in major changes to his lifestyle and a lifelong concern for reform.In 1787, Wilberforce came into contact with Thomas Clarkson and a group of activists against the slave trade, including Granville Sharp, Hannah More and Charles Middleton. They persuaded Wilberforce to take on the cause of abolition, and he became a leading English abolitionist. He headed the parliamentary campaign against the British slave trade for 20 years until the passage of the Slave Trade Act of 1807.Wilberforce was convinced of the importance of religion, morality and education. He championed causes and campaigns such as the Society for the Suppression of Vice, British missionary work in India, the creation of a free colony in Sierra Leone, the foundation of the Church Mission Society and the Society for the Prevention of Cruelty to Animals. His underlying conservatism led him to support politically and socially repressive legislation, and resulted in criticism that he was ignoring injustices at home while campaigning for the enslaved abroad.In later years, Wilberforce supported the campaign for the complete abolition of slavery and continued his involvement after 1826, when he resigned from Parliament because of his failing health. That campaign led to the Slavery Abolition Act 1833, which abolished slavery in most of the British Empire. Wilberforce died just three days after hearing that the passage of the Act through Parliament was assured. He was buried in Westminster Abbey, close to his friend William Pitt the Younger. Attended Hull Grammar School, which at the time was headed by a young, dynamic headmaster, Joseph Milner, who was to become a lifelong friend. In October 1776, at the age of seventeen, Wilberforce went up to St John''s College, Cambridge.In October 1784, Wilberforce embarked upon a tour of Europe which would ultimately change his life and determine his future career. He travelled with his mother and sister in the company of Isaac Milner, the brilliant younger brother of his former headmaster, who had been Fellow of Queens'' College, Cambridge, in the year when Wilberforce first went up. ', '2024-02-29 12:17:37.077638+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(144, 'Admiral William Parry', 'admiral-william-parry-144', NULL, ' a Royal Navy officer and explorer best known for his 1819–1820 expedition through the Parry Channel, probably the most successful in the long quest for the Northwest Passage, until it was finally negotiated by Roald Amundsen in 1906. In 1827, Parry attempted one of the earliest expeditions to the North Pole. He reached 82° 45'' N, setting a record for human exploration Farthest North that stood for nearly five decades before being surpassed at 83° 20'' N by Albert Hastings Markham in 1875. Parry was born in Bath, Somerset, the son of Caleb Hillier Parry and Sarah Rigby. He was educated at King Edward''s School.At the age of thirteen he joined the flagship of Admiral Sir William Cornwallis in the Channel fleet as a first-class volunteer, in 1806 became a midshipman, and in 1810 received promotion to the rank of lieutenant in the frigate Alexander, which spent the next three years in the protection of the Spitsbergen whale fishery. Parry took advantage of this opportunity for the study and practice of astronomical observations in northern latitudes, and afterwards published the results of his studies in a small volume on Nautical Astronomy by Night. From 1813 to 1817 he served on the North American Station.Parry''s character was influenced by his religiousness, and besides the journals of his different voyages he also wrote a Lecture to Seamen, and Thoughts on the Parental Character of God. He was noted as "an evangelical [Christian] and an ardent advocate of moral reform in the navy.



', '2024-02-29 12:25:30.461339+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(147, 'Robert Southey', 'robert-southey-147', NULL, 'British poet of the Romantic school, and Poet Laureate from 1813 until his death. Like the other Lake Poets, William Wordsworth and Samuel Taylor Coleridge, Southey began as a radical but became steadily more conservative as he gained respect for Britain and its institutions. Other romantics such as Byron accused him of siding with the establishment for money and status. He is remembered especially for the poem "After Blenheim" and the original version of "Goldilocks and the Three Bears". In some respects, Southey was ahead of his time in his views on social reform. For example, he was an early critic of the evils the new factory system brought to early 19th-century Britain. He was appalled by the living conditions in towns like Birmingham and Manchester and especially by employment of children in factories and outspoken about them. He sympathised with the pioneering socialist plans of Robert Owen, advocated that the state promotes public works to maintain high employment, and called for universal education.', '2024-02-29 12:34:55.57813+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(150, 'Arthur Locker', 'arthur-locker-150', NULL, ' English novelist and journalist.second son of Edward Hawke Locker, he was born at Greenwich on 2 July 1828; Frederick Locker-Lampson was his brother. He was educated at Charterhouse School and Pembroke College, Oxford, where he matriculated on 6 May 1847, and graduated B.A. in 1851.Locker went into commerce in a Liverpool office. Attracted by the Australian Gold Rush of the time, he emigrated to Victoria, and there took up journalism and writing. He returned to the UK in 1861, where he wrote extensively for newspapers and magazines. In 1863 Locker obtained work with The Times, which lasted until 1870, when he was appointed editor of The Graphic a few months after it was founded. He brought on young writers.In December 1891 poor health saw Locker retire. After visiting Madeira and the Isle of Wight, he died at 79 West Hill, Highgate, London, on 23 June 1893. He was twice married, to Mary Jane Rouse and after her death to Catharine Sarah Carpenter née Clulioth.

', '2024-02-29 12:40:08.728428+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(154, 'Richard Sheridan', 'richard-sheridan-154', NULL, 'Richard Sheridan was an Anglo-Irish playwright, writer and Whig politician who sat in the British House of Commons from 1780 to 1812, representing the constituencies of Stafford, Westminster and Ilchester. Was a pupil at Harrow. Fought two duels. Wrote the School for Scandal. In 1780, Sheridan entered the House of Commons as the ally of Charles James Fox on the side of the American Colonials in the political debate of that year. He is said to have paid the burgesses of Stafford five guineas apiece to allow him to represent them. As a consequence, his first speech in Parliament was a defence against the charge of bribery.He held the posts of Receiver-General of the Duchy of Cornwall (1804–1807) and Treasurer of the Navy (1806–1807). Sheridan was noted for his close political relationship with the Prince of Wales, leading a faction of his supporters in the Commons. By 1805 when the Prince was cooling on his previous support of Catholic Emancipation Sheridan, George Tierney and others announced their own opposition to it.[22]

When, after 32 years in Parliament, he lost re-election in 1812, his creditors closed in on him and his last years were harassed by debt and disappointment. On hearing of his debts, the American Congress offered Sheridan £20,000 in recognition of his efforts to prevent the American War of Independence. He refused the offer. Sheridan was good friends with Georgiana Cavendish and Henrietta Ponsonby. He sexually harassed women and was a womaniser.  ', '2024-03-20 23:01:03.620811+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(155, 'Thomas Lawrence', 'thomas-lawrence-155', NULL, 'as an English portrait painter and the fourth president of the Royal Academy. A child prodigy, he was born in Bristol and began drawing in Devizes, where his father was an innkeeper at the Bear Hotel in the Market Square. At age ten, having moved to Bath, he was supporting his family with his pastel portraits. At 18, he went to London and soon established his reputation as a portrait painter in oils, receiving his first royal commission, a portrait of Queen Charlotte, in 1789. He stayed at the top of his profession until his death, aged 60, in 1830.Self-taught, he was a brilliant draughtsman and known for his gift of capturing a likeness, as well as his virtuoso handling of paint. He became an associate of the Royal Academy in 1791, a full member in 1794, and president in 1820.By the time the Prince of Wales was made regent in 1811, Lawrence was acknowledged as the country''s foremost portrait painter.Lawrence arrived back in London 30 March 1820 to find that the president of the Royal Academy, Benjamin West, had died. That very evening Lawrence was voted the new president, a position he would hold until his death 10 years later. George III had died in January; Lawrence was granted a place in the procession for the coronation of George IV. On 28 February 1822 he was elected as a Fellow of the Royal Society "for his eminence in art".', '2024-03-20 23:07:24.153968+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(171, 'James Mill', 'james-mill-171', NULL, 'Mill was a proponent of British imperialism, justifying it on utilitarian grounds.[11] He considered it part of a civilising mission for Britain to impose its rule on India.[11] Mill saw his own work for the East India Company as important for the improvement of Indian society. Scottish historian, economist, political theorist and philosopher. He is counted among the founders of the Ricardian school of economics. He also wrote The History of British India (1817) and was one of the prominent historians to take a colonial approach. He was the first writer to divide Indian history into three parts: Hindu, Muslim and British, a classification which has proved surpassingly influential in the field of Indian historical studies.', '2024-03-31 21:04:00.365077+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Gillian Lamb'),
	(361, 'Daniel Corne Walker', 'daniel-corne-walker-361', NULL, 'Daniel Corne Walker was born in Madras (now Chennai) to a British colonial family. He came to London as a teenager to study Military Science at King’s before joining the Royal Engineers. He was soon back in India, helping to suppress the great rebellion of 1857, for which he received a medal. He then served in Bermuda, where he was commended for his actions during a yellow fever epidemic, and later returned to Britain to work at military bases in Woolwich, Chatham, and Aldershot. He retired in 1892 after 35 years in the army.', '2025-01-10 11:49:06+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Jonah Miller'),
	(362, 'Francis Herbert Westmacott', 'francis-herbert-westmacott-362', NULL, 'Francis Herbert Westmacott was born in New South Wales. He moved to London as a teenager and lived with his aunt, who owned property in Kensington. He enrolled at King’s in 1852 and studied Military Science for two years. This prepared him for a long career as an administrator in the War Office, where he rose to become Senior Clerk.', '2025-01-10 11:51:55+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Jonah Miller'),
	(363, 'Henry Wood', 'henry-wood-363', NULL, 'Henry Wood was born in London in 1835 and studied Military Science at King’s from 1850 to 1852. He went on to serve in three military regiments: the 69th (Welsh) Foot, the 30th Foot, and the 3rd Battalion Rifle Brigade. He was briefly stationed in Malta and Gibraltar and saw active service in the 1850s in Crimea and India. He received a clasp for his role in the siege of Sebastopol and was present at the battle of Great Redan. Soon after, he took part in the battle of Shabkadr on the north-west frontier of British India. He returned to India after the suppression of the great rebellion and married a British woman in the Punjab.', '2025-01-10 11:52:52+00', 'Assigned male at birth', 'English', 'United Kingdom', 'White', NULL, NULL, true, 'Jonah Miller'),
	(364, 'Desmond Tutu', 'desmond-tutu-364', 'Tutu; Archbishop of South Africa', 'Desmond Tutu (1931-2021) was an Archbishop of South Africa, Nobel Peace laureate, anti-apartheid activist and alumni of King’s College London. Prior to studying at King’s College London, Tutu was a teacher in South Africa and was ordained as an Anglican priest in 1961. Tutu completed his undergraduate degree in Theology in 1965, and master’s in theology in 1966 at King’s College London. Tutu was a recipient of the 1962 Worsley scholarship, awarded by the Faculty of Theology.  After continuing with teaching in South Africa, Tutu returned to London in 1972 as the director for Africa at the Theological Education Fund. In 1975 Tutu served as Bishop of Lesotho. Later, Tutu emerged as a prominent opponent of apartheid and one of the leaders of the civil rights movement, stressing the importance of non-violent protest and bringing about universal suffrage. Tutu was awarded the Nobel Prize for Peace in 1984 for his opposition to apartheid and in the following year Tutu became Bishop of Johannesburg. In 1986 Tutu became Archbishop of Cape Town and the president of the All Africa Conference of Churches. Following the 1994 general election which elected Nelson Mandela as South Africa’s first black president, Tutu was selected to chair the Truth and Reconciliation Commission. The commission involved investigations into human rights violations during the apartheid and was significant in helping South Africa transition away from the oppressive apartheid system. Tutu also wrote several books which reflect on his life, religious views and activism. In 2013 Tutu was awarded the Templeton Prize in recognition of his lifelong work. Until his death in 2021, Tutu would regularly return to King’s College London to speak at ceremonies. In 2011, he reflected fondly on his time at King’s, saying that ‘now I look back and just think of how affirming it was to be at Kings’.  Tutu’s life and memory highlights his consistent commitment to religious teaching, leadership, and human rights activism. His connection to King’s College London has continued to inspire future generations of students and shape the university. ', '2025-01-12 11:06:41+00', 'Assigned male at birth', 'English', 'South Africa', 'Black', NULL, NULL, true, 'Erika Melek Delgado');


--
-- Data for Name: donation_agent_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation_agent_person" ("id", "donation", "person", "added_by", "created_at") VALUES
	(1, 'foundation-of-kings-3', 'william-astell-104', 'Gillian Lamb', '2024-04-18 16:44:02.090358+00'),
	(3, 'foundation-of-kings-3', 'george-henry-law-182', 'Arin Edwards', '2024-08-15 10:55:28+00'),
	(4, 'foundation-of-kings-3', 'george-james-cholmondeley-190', 'Arin Edwards', '2024-08-15 16:34:43+00'),
	(7, 'foundation-of-kings-3', 'henry-handley-norris-194', 'Arin Edwards', '2024-08-16 15:31:32+00'),
	(8, 'foundation-of-kings-3', 'henry-hugh-hoare-195', 'Arin Edwards', '2024-08-16 15:32:15+00'),
	(11, 'foundation-of-kings-3', 'charles-r-sumner-189', 'Ariunzaya Batkhuyag', '2024-08-20 17:26:50.869976+00'),
	(12, 'foundation-of-kings-3', 'henry-william-majendie-245', 'Ariunzaya Batkhuyag', '2024-08-20 18:54:26.58971+00'),
	(13, 'foundation-of-kings-3', 'hugh-percy-278', 'Arin Edwards', '2024-09-08 15:58:43+00'),
	(10, 'rev-dr-lord-bishop-of-ely-donation-to-foundation-of-kings-11', 'bowyer-edward-sparke-187', 'Ariunzaya Batkhuyag', '2024-08-20 17:12:34.292863+00'),
	(6, 'rev-dr-lord-bishop-of-norwich-donation-to-foundation-of-kings-13', 'henry-bathurst-193', 'Arin Edwards', '2024-08-16 15:31:10+00'),
	(14, 'purchase-of-52-shares-of-100-by-rev-dr-lord-bishop-of-norwich-y-to-the-foundation-of-kings-college-london-18', 'henry-bathurst-193', 'Erika Melek Delgado', '2024-10-15 19:33:31+00'),
	(15, 'purchase-of-22-shares-of-100-by-rev-dr-lord-bishop-of-ely-to-the-foundation-of-kings-college-london-17', 'bowyer-edward-sparke-187', 'Erika Melek Delgado', '2024-10-15 19:35:45+00'),
	(5, 'donation-by-duke-of-wellington-k-g-of-300-to-the-foundation-of-kings-college-london-19', 'duke-of-wellington-137', 'Ariunzaya Batkhuyag', '2024-08-16 12:57:55.355152+00'),
	(16, 'purchase-of-79-shares-of-100-by-duke-of-wellington-to-the-foundation-of-kings-college-london-20', 'duke-of-wellington-137', 'Erika Melek Delgado', '2024-10-16 16:05:06+00'),
	(2, 'donation-by-the-lord-bishop-of-london-of-1-000-to-the-foundation-of-kings-college-london-21', 'charles-james-blomfield-179', 'Im Chiew Ng', '2024-08-14 21:25:19.8002+00'),
	(17, 'purchase-of-46-shares-of-100-by-the-lord-bishop-of-london-to-the-foundation-of-kings-college-london-22', 'charles-james-blomfield-179', 'Erika Melek Delgado', '2024-10-16 16:17:00+00');


--
-- Data for Name: moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."moment" ("id", "name", "created_at", "added_by", "slug") VALUES
	(1, '1 - 1721: Money, global trade and slavery in the creation of Guy''s', '2024-02-27 13:42:24.940337+00', 'Erika Melek Delgado', '01'),
	(5, '3 - 1853: The crisis of Anglicanism in the mid-nineteenth-century
', '2024-02-27 13:47:51.356932+00', 'Erika Melek Delgado', '03'),
	(14, '10- 1946: Education for the nation', '2024-10-15 20:07:53+00', 'Erika Melek Delgado', '10'),
	(15, '11- 1964: King''s and Deconolisation', '2024-10-15 20:14:22+00', 'Erika Melek Delgado', '11'),
	(16, '12- 1979: King''s at 150', '2024-10-15 20:14:49+00', 'Erika Melek Delgado', '12'),
	(17, '13- King''s Past / King''s Future', '2024-10-15 20:15:21+00', 'Erika Melek Delgado', '13'),
	(7, '2- 1828: The financial and political networks which created King''s', '2024-03-21 11:14:10.6361+00', 'Gillian Lamb', '02'),
	(8, '4- 1857: War, nineteenth-century empire and Conservative empire', '2024-08-12 12:40:02+00', 'Jonah Miller', '04'),
	(10, '5- 1862: Knowledge for industry and science', '2024-10-15 20:05:23+00', 'Erika Melek Delgado', '05'),
	(11, '6- c. 1872: Race, Civilisation and Culture', '2024-10-15 20:06:08+00', 'Erika Melek Delgado', '06'),
	(12, '7- 1885: Women''s education', '2024-10-15 20:06:42+00', 'Erika Melek Delgado', '07'),
	(13, '8- 1900: King''s and the Staffing of empire', '2024-10-15 20:07:15+00', 'Erika Melek Delgado', '08'),
	(9, '9 - 1919: Crises of Empire', '2024-10-15 20:02:05+00', 'Erika Melek Delgado', '09');


--
-- Data for Name: donation_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation_moment" ("id", "created_at", "donation", "moment", "added_by") VALUES
	(1, '2024-04-18 16:38:46.20323+00', 'foundation-of-kings-3', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb');


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

INSERT INTO "public"."source" ("id", "name", "slug", "description", "created_at", "added_by", "url") VALUES
	(1, 'National Archives, War Office, Army Lists', 'national-archives-war-office-army-lists-1', 'TNA, WO 65', '2024-08-12 12:58:20+00', 'Jonah Miller', NULL),
	(2, '1851 Census (England)', '1851-census-england-2', NULL, '2024-08-12 13:00:37+00', 'Jonah Miller', NULL),
	(3, 'London Gazette', 'london-gazette-3', NULL, '2024-08-16 15:29:35+00', 'Jonah Miller', NULL),
	(4, 'Suffolk Chronicle', 'suffolk-chronicle-4', NULL, '2024-08-27 09:10:54+00', 'Jonah Miller', NULL),
	(5, 'King''s College London Students'' Union Handbook, 1976-1977', 'kings-college-london-archives-students-union-ku-han-52-kings-college-london-students-union-handbook-1976-1977-london-kings-college-london-15-5', 'King’s College London Archives, Student’s Union, KU/HAN/52, King''s College London Students'' Union Handbook, 1976-1977 (London: King''s College London), 15.', '2025-01-12 12:04:54+00', 'Erika Melek Delgado', NULL),
	(6, 'King''s College London Students'' Union Handbook, 1978-1979', 'kings-college-london-archives-students-union-ku-han-54-kings-college-london-students-union-handbook-1978-1979-london-kings-college-london-34-6', 'King’s College London Archives, Student’s Union, KU/HAN/54, King''s College London Students'' Union Handbook, 1978-1979 (London: King''s College London), 34.', '2025-01-12 12:05:46+00', 'Erika Melek Delgado', NULL),
	(7, 'King''s College London Students'' Union Handbook, 1965-1966 ', 'kings-college-london-students-union-handbook-1965-1966-7', 'King’s College London Archives, Student’s Union, KU/HAN/41, King''s College London Students'' Union Handbook, 1965-1966 (London: King''s College London), 50, 54.', '2025-01-12 12:07:56+00', 'Erika Melek Delgado', NULL),
	(8, 'King''s College London Students'' Union Handbook, 1983-1984', 'kings-college-london-students-union-handbook-1983-1984-8', 'King’s College London Archives, Student’s Union, KU/HAN/58, King''s College London Students'' Union Handbook, 1983-1984 (London: King''s College London), 50.', '2025-01-12 12:09:45+00', 'Erika Melek Delgado', NULL);


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
	(2, 'Foundation of King''s College London', '2024-10-15 18:40:24+00', 'Erika Melek Delgado'),
	(1, 'Trans-Atlantic Slave Trade', '2024-02-23 14:10:25.486378+00', 'Erika Melek Delgado');


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
	(1, 'Foundation', '2024-03-31 13:50:03.466565+00', 'Gillian Lamb'),
	(2, 'Birth', '2024-08-12 11:52:22+00', 'Erika Melek Delgado'),
	(4, 'Military action', '2024-08-12 12:41:27+00', 'Jonah Miller'),
	(5, 'Education', '2024-08-14 21:20:17.610162+00', 'Im Chiew Ng'),
	(6, 'Marriage', '2024-08-15 12:15:25+00', 'Arin Edwards'),
	(7, 'Act of UK Parliament', '2024-08-16 18:37:33+00', 'Arin Edwards'),
	(8, 'Political process', '2024-08-17 14:46:59+00', 'Arin Edwards'),
	(10, 'Death', '2024-08-27 09:23:35+00', 'Jonah Miller');


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
Many were prominent members of the Council of the new University of London (later University College London), founded in 1825 and preparing to open in October 1828 to teach students of all faiths and none, who were prevented from graduating at Oxford and Cambridge because they were not confessing Anglicans', NULL, '2024-03-31 20:35:33.45059+00', true),
	(28, 'Birth of Lady Georgiana Charlotte Bertie', 'birth-of-lady-georgiana-charlotte-bertie-28', 'Birth', '1764-08-07', '1838-06-23', 'london-1', 'Carshalton House.', 'Arin Edwards', '2024-08-16 16:49:38+00', true),
	(29, 'Birth of Grace Coote Bathurst', 'birth-of-grace-coote-bathurst-29', 'Birth', '1756-01-01', '1823-04-14', 'limerick-15', 'Kilmallock, County Limerick, Ireland.', 'Arin Edwards', '2024-08-16 16:54:00+00', true),
	(9, 'Birth of Charles James Blomfield', 'birth-of-charles-james-blomfield-9', 'Birth', '1786-05-29', '1786-05-29', 'bury-st-edmunds-5', NULL, NULL, '2024-08-14 21:22:44.201339+00', true),
	(11, 'Birth of George Henry Law', 'birth-of-george-henry-law-11', 'Birth', '1761-09-12', '1845-09-22', 'london-1', '4 Langham Place', 'Arin Edwards', '2024-08-15 10:59:13+00', true),
	(31, 'Birth of Catherine Henrietta ', 'birth-of-catherine-henrietta-31', 'Birth', '1773-09-17', '1854-06-26', NULL, NULL, 'Arin Edwards', '2024-08-16 16:55:50+00', true),
	(10, 'Birth of Edward Copleston', 'birth-of-edward-copleston-10', 'Birth', '1776-02-02', '1776-02-02', 'london-1', 'Deanery, St Pauls', NULL, '2024-08-14 21:42:31.934508+00', true),
	(12, 'Birth of Edward Venables Vernon', 'birth-of-edward-venables-vernon-12', 'Birth', '1757-10-10', '1757-10-10', 'london-1', '40 Grosvenor Square', NULL, '2024-08-15 12:08:55.935241+00', true),
	(15, 'Birth of George James Cholmondeley', 'birth-of-george-james-cholmondeley-15', 'Birth', '1749-05-11', '1827-04-10', 'london-1', NULL, 'Arin Edwards', '2024-08-15 16:37:48+00', true),
	(17, 'Birth of Henry Handley Norris', 'birth-of-henry-handley-norris-17', 'Birth', '1771-01-14', '1850-12-04', 'london-1', 'Hackney, north-east London.', 'Arin Edwards', '2024-08-15 20:43:51+00', true),
	(18, 'Birth of Henry Hugh Hoare', 'birth-of-henry-hugh-hoare-18', 'Birth', '1762-02-27', '1841-08-17', 'london-1', 'Barn Elms, London Borough of Richmond.', 'Arin Edwards', '2024-08-15 21:08:58+00', true),
	(8, 'Birth of Duke of Wellington', 'birth-of-duke-of-wellington-8', 'Birth', '1769-05-01', '1769-05-01', 'dublin-3', NULL, 'Ariunzaya Batkhuyag', '2024-08-14 10:28:03+00', true),
	(13, 'Birth of Patrick Bell', 'birth-of-patrick-bell-13', 'Birth', '1799-05-12', '1869-04-22', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-08-15 14:51:52.11767+00', true),
	(14, 'Birth of Bowyer Edward Sparke', 'birth-of-bowyer-edward-sparke-14', 'Birth', '1759-04-27', '1836-04-04', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-08-15 14:53:18.558377+00', true),
	(19, 'C. M. Sutton', 'c-m-sutton-19', 'Birth', '1817-06-17', '1835-02-19', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-08-16 12:21:16.740329+00', true),
	(20, 'Birth of Charles R. Sumner', 'birth-of-charles-r-sumner-20', 'Birth', '1790-11-22', '1874-08-15', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-08-16 12:23:01.480216+00', true),
	(32, 'Birth of Maria Palmer Acland', 'birth-of-maria-palmer-acland-32', 'Birth', '1766-01-01', '1845-01-31', 'somerset-16', 'Fairfield, Stogursey, Somerset', 'Arin Edwards', '2024-08-16 17:02:49+00', true),
	(47, 'Crimean War', 'crimean-war-47', 'Military action', '1853-10-16', '1856-05-30', 'crimea-24', NULL, 'Jonah Miller', '2024-08-21 11:09:00+00', true),
	(22, 'Birth of Arthur Angelo', 'birth-of-arthur-angelo-22', 'Birth', '1836-04-19', '1836-04-19', 'london-1', 'St Marylebone, Westminster, Middlesex', 'Jonah Miller', '2024-08-16 13:28:31+00', true),
	(23, 'Birth of William Roger Snow', 'birth-of-william-roger-snow-23', 'Birth', '1834-05-01', '1834-05-01', 'london-1', 'Westminster', 'Jonah Miller', '2024-08-16 14:24:11+00', true),
	(24, 'Birth of Edmund Staveley', 'birth-of-edmund-staveley-24', 'Birth', '1836-04-20', '1836-12-20', 'london-1', NULL, 'Jonah Miller', '2024-08-16 15:09:14+00', true),
	(25, 'Birth of Charles Doyne Anderson Straker', 'birth-of-charles-doyne-anderson-straker-25', 'Birth', '1839-01-01', '1839-01-01', 'india-12', NULL, 'Jonah Miller', '2024-08-16 15:32:33+00', true),
	(26, 'Birth of Roger Swire', 'birth-of-roger-swire-26', 'Birth', '1834-07-02', '1834-07-02', 'manfield-13', NULL, 'Jonah Miller', '2024-08-16 15:52:30+00', true),
	(16, 'Birth of Henry Bathurst ', 'birth-of-henry-bathurst-16', 'Birth', '1744-08-16', '1837-04-05', 'northampshire-10', 'Brackley, Northampshire.', 'Arin Edwards', '2024-08-15 18:13:02+00', true),
	(33, 'Marriage of George Henry Law and Jane Adeane', 'marriage-of-george-henry-law-and-jane-adeane-33', 'Marriage', '1784-01-07', '1845-09-22', NULL, NULL, 'Arin Edwards', '2024-08-16 17:15:00+00', true),
	(34, 'Marriage of George James Cholmondeley and Lady Georgiana Charlotte Bertie', 'marriage-of-george-james-cholmondeley-and-lady-georgiana-charlotte-bertie-34', 'Marriage', '1791-04-25', '1827-04-10', NULL, NULL, 'Arin Edwards', '2024-08-16 17:58:29.866295+00', true),
	(35, 'Marriage of Henry Bathurst and Grace Coote', 'marriage-of-henry-bathurst-and-grace-coote-35', 'Marriage', '1780-08-15', '1823-04-16', NULL, NULL, 'Arin Edwards', '2024-08-16 18:01:03+00', true),
	(36, 'Marriage of Henry Handley Norris and Henrietta Catherine', 'marriage-of-henry-handley-norris-and-henrietta-catherine-36', 'Marriage', '1805-06-19', '1841-12-04', NULL, NULL, 'Arin Edwards', '2024-08-16 18:05:09+00', true),
	(38, 'Marriage of Henry Hugh Hoare and Maria Palmer Acland', 'marriage-of-henry-hugh-hoare-and-maria-palmer-acland-38', 'Marriage', '1783-01-01', '1841-08-17', NULL, NULL, 'Arin Edwards', '2024-08-16 18:20:11+00', true),
	(40, 'The Catholic Emancipation', 'the-catholic-emancipation-40', 'Political process', '1776-01-01', '1829-08-13', 'the-united-kingdom-17', NULL, 'Arin Edwards', '2024-08-17 14:57:38+00', true),
	(41, 'Education of Charles James Blomfield', 'education-of-charles-james-blomfield-41', 'Education', '1804-01-01', '1820-01-01', 'cambridge-4', 'Trinity College, Cambridge', 'Im Chiew Ng', '2024-08-19 20:55:26.796534+00', true),
	(42, 'Education of Charles Manners-Sutton', 'education-of-charles-manners-sutton-42', 'Education', '1773-01-01', '1792-01-01', 'cambridge-4', 'Emmanuel College, Cambridge', 'Im Chiew Ng', '2024-08-19 21:02:45.971546+00', true),
	(43, 'Birth of Henry Ryder ', 'birth-of-henry-ryder-43', 'Birth', '1777-07-21', '1777-07-21', 'devon-23', 'Born in Tiverton, Devon', 'Im Chiew Ng', '2024-08-20 21:41:28.233834+00', true),
	(46, 'Education of Henry Ryder', 'education-of-henry-ryder-46', 'Education', '1798-01-01', '1813-01-01', 'cambridge-4', 'Educated at St John''s College, Cambridge', 'Im Chiew Ng', '2024-08-21 08:39:53.154515+00', true),
	(48, 'Siege of Sebastopol', 'siege-of-sebastopol-48', 'Military action', '1854-10-17', '1855-09-11', 'sebastopol-25', NULL, 'Jonah Miller', '2024-08-21 11:15:13+00', true),
	(5, 'Indian Rebellion', 'indian-rebellion-5', 'Military action', '1857-05-10', '1859-07-08', 'india-12', NULL, 'Jonah Miller', '2024-08-12 12:42:58+00', true),
	(49, 'Siege of Lucknow', 'siege-of-lucknow-49', 'Military action', '1857-05-30', '1857-11-27', 'lucknow-26', NULL, 'Jonah Miller', '2024-08-21 11:16:04+00', true),
	(87, 'Education of George Blewitt', 'education-of-george-blewitt-87', 'Education', '1852-09-01', '1853-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(88, 'Education of Arthur Cecil Blunt', 'education-of-arthur-cecil-blunt-88', 'Education', '1858-09-01', '1859-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(50, 'Education of Arthur Angelo', 'arthur-angelo-attended-kcl-50', 'Education', '1852-09-01', '1854-08-31', 'london-1', 'Military Science at KCL', 'Jonah Miller', '2024-08-21 11:22:22+00', true),
	(51, 'Education of William Roger', 'william-roger-snow-attended-kcl-51', 'Education', '1850-09-01', '1851-08-31', 'london-1', 'Military Science at KCL', 'Jonah Miller', '2024-08-21 11:24:59+00', true),
	(52, 'Education of Edmund Stavely', 'edmund-stavely-attended-kcl-52', 'Education', '1853-09-01', '1855-08-31', 'london-1', 'Military Science at KCL', 'Jonah Miller', '2024-08-21 11:26:25+00', true),
	(53, 'Education of Charles Doyne Anderson Straker', 'charles-doyne-anderson-straker-attended-kcl-53', 'Education', '1855-09-01', '1857-08-31', 'london-1', 'Military Science at KCL', 'Jonah Miller', '2024-08-21 11:28:00+00', true),
	(54, 'Education of Roger Swire', 'roger-swire-attended-kcl-54', 'Education', '1849-09-01', '1851-08-31', 'london-1', 'Military Science at KCL', 'Jonah Miller', '2024-08-21 11:29:17+00', true),
	(58, 'Birth of Comyn Ching', 'birth-of-comyn-ching-58', 'Birth', '1835-01-28', '1916-01-07', 'london-1', 'Bloomsbury', 'Arin Edwards', '2024-08-26 12:14:35+00', true),
	(61, 'Birth of John B Barker', 'birth-of-john-b-barker-61', 'Birth', '1836-10-04', '1905-10-19', NULL, 'Born in Curnhill, Staffordshire', 'Im Chiew Ng', '2024-08-26 12:31:56.403623+00', true),
	(64, 'Birth of Robert Bennett', 'birth-of-robert-bennett-64', 'Birth', '1833-01-01', '1888-07-07', NULL, 'Born in Cork, Ireland', 'Im Chiew Ng', '2024-08-26 12:34:37.406555+00', true),
	(65, 'Birth of James C Berkeley', 'birth-of-james-c-berkeley-65', 'Birth', '1839-01-23', '1926-10-12', NULL, 'Born in Clifton, Gloucestershire', 'Im Chiew Ng', '2024-08-26 12:35:40.485989+00', true),
	(66, 'Birth of Robert Berkeley', 'birth-of-robert-berkeley-66', 'Birth', '1841-01-28', '1913-11-25', NULL, 'Born in Clifton, Gloucestershire', 'Im Chiew Ng', '2024-08-26 12:36:25.140547+00', true),
	(71, 'Birth of George Blewitt', 'birth-of-george-blewitt-71', 'Birth', '1837-04-11', '1922-03-28', NULL, 'Born in Hornchurch, Essex', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(72, 'Birth of Arthur Cecil Blunt', 'birth-of-arthur-cecil-blunt-72', 'Birth', '1843-06-01', '1896-04-16', NULL, 'Born in Mayfair, London', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(73, 'Birth of Joseph HF Blyth', 'birth-of-joseph-hf-blyth-73', 'Birth', '1835-08-31', '1835-08-31', NULL, 'Born in Beverly, Yorkshire', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(74, 'Birth of Joshua J Bowness', 'birth-of-joshua-j-bowness-74', 'Birth', '1837-04-20', '1886-05-01', NULL, 'Born in Harwich, Essex', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(75, 'Birth of George NJ Bradford', 'birth-of-george-nj-bradford-75', 'Birth', '1839-12-27', '1896-12-11', NULL, 'Born in Rickmansworth, Hertfordshire', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(76, 'Birth of John D Bradley', 'birth-of-john-d-bradley-76', 'Birth', '1837-08-04', '1915-01-05', NULL, 'Born in Wandsworth, Surrey', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(78, 'Birth of William Hay Chapman', 'birth-of-william-hay-chapman-78', 'Birth', '1832-09-23', '1903-02-25', NULL, 'Born in Woodford, Essex', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(89, 'Education of Joseph HF Blyth', 'education-of-joseph-hf-blyth-89', 'Education', '1851-09-01', '1853-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(90, 'Education of Joshua J Bowness', 'education-of-joshua-j-bowness-90', 'Education', '1853-09-01', '1855-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(91, 'Education of George NJ Bradford', 'education-of-george-nj-bradford-91', 'Education', '1854-09-01', '1855-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(92, 'Education of John D Bradley', 'education-of-john-d-bradley-92', 'Education', '1852-09-01', '1853-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(93, 'Education of George R Byron', 'education-of-george-r-byron-93', 'Education', '1851-09-01', '1855-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(94, 'Education of William Hay Chapman', 'education-of-william-hay-chapman-94', 'Education', '1849-09-01', '1850-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 20:08:21.570802+00', true),
	(62, 'Education of John B Barker', 'education-of-john-b-barker-62', 'Education', '1854-09-01', '1855-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 12:32:49.686669+00', true),
	(67, 'Education of Edward Bell', 'education-of-edward-bell-67', 'Education', '1852-09-01', '1853-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 12:37:13.57196+00', true),
	(68, 'Education of Robert Bennett', 'education-of-robert-bennett-68', 'Education', '1850-09-01', '1851-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 12:37:49.910756+00', true),
	(69, 'Education of James C Berkeley', 'education-of-james-c-berkeley-69', 'Education', '1855-09-01', '1857-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 12:38:30.867729+00', true),
	(70, 'Education of Robert Berkeley', 'education-of-robert-berkeley-70', 'Education', '1857-09-01', '1858-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 12:39:02.921308+00', true),
	(95, 'Birth of Arthur Manning Tuck', 'birth-of-arthur-manning-tuck-95', 'Birth', '1834-01-01', '1834-01-01', 'wortham-30', NULL, 'Jonah Miller', '2024-08-27 09:18:47+00', true),
	(96, 'Education of Arthur Manning Tuck', 'education-of-arthur-manning-tuck-96', 'Education', '1849-09-01', '1850-08-31', 'london-1', 'Military Science at KCL', 'Jonah Miller', '2024-08-27 09:20:19+00', true),
	(97, 'Death of Arthur Manning Tuck', 'death-of-arthur-manning-tuck-97', 'Death', '1856-01-01', '1856-01-01', 'jamaica-31', NULL, 'Jonah Miller', '2024-08-27 09:24:16+00', true),
	(98, 'Birth of Granville Waddilove', 'birth-of-granville-waddilove-98', 'Birth', '1832-10-05', '1832-10-05', 'dorset-32', NULL, 'Jonah Miller', '2024-08-27 09:32:42+00', true),
	(99, 'Education of Granville Waddilove', 'education-of-granville-waddilove-99', 'Education', '1850-09-01', '1852-08-31', 'london-1', 'Military Science at KCL', 'Jonah Miller', '2024-08-27 09:33:38+00', true),
	(100, 'Battle of Balaclava', 'battle-of-balaclava-100', 'Military action', '1854-10-25', '1854-10-25', 'crimea-24', NULL, 'Jonah Miller', '2024-08-27 09:37:25+00', true),
	(101, 'Battle of Alma', 'battle-of-alma-101', 'Military action', '1854-09-20', '1854-09-20', 'crimea-24', NULL, 'Jonah Miller', '2024-08-27 09:38:29+00', true),
	(102, 'Battle of Inkerman', 'battle-of-inkerman-102', 'Military action', '1854-11-05', '1854-11-05', 'crimea-24', NULL, 'Jonah Miller', '2024-08-27 09:39:50+00', true),
	(77, 'Birth of George R Byron', 'birth-of-george-r-byron-77', 'Birth', '1833-11-09', '1911-11-19', 'india-12', 'Born in Delhi, Hindustan, India', 'Im Chiew Ng', '2024-08-26 20:00:30.350412+00', true),
	(63, 'Birth of Edward Bell', 'birth-of-edward-bell-63', 'Birth', '1837-02-07', '1914-08-30', 'kent-27', 'Born in Greenhithe, Kent', 'Im Chiew Ng', '2024-08-26 12:33:48.257714+00', true),
	(55, 'Education of George Bannister', 'education-of-george-bannister-55', 'Education', '1853-09-01', '1854-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 11:57:00.962946+00', true),
	(57, 'Education of Julius Barras', 'education-of-julius-barras-57', 'Education', '1852-09-01', '1853-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 12:07:06.254039+00', true),
	(56, 'Education of William Barr', 'education-of-william-barr-56', 'Education', '1855-09-01', '1856-08-31', 'london-1', 'Military Science at KCL', 'Im Chiew Ng', '2024-08-26 12:06:27.327047+00', true),
	(103, 'Birth of Richard W Cradock', 'birth-of-richard-w-cradock-103', 'Birth', '1829-07-18', '1916-11-07', 'yorkshire-29', NULL, 'Arin Edwards', '2024-08-29 15:36:59+00', true),
	(104, 'Education of Comyn Ching', 'comyn-ching-104', 'Education', '1852-09-15', '1853-06-15', 'london-1', 'Military Science at KCL', 'Arin Edwards', '2024-08-29 15:40:14.785331+00', true),
	(105, 'Education of Richard W Cradock', 'education-of-richard-w-cradock-105', 'Education', '1848-09-15', '1850-06-15', 'london-1', 'Military Science at KCL', 'Arin Edwards', '2024-08-29 15:41:27+00', true),
	(106, 'Marriage of Richard W Cradock and Isma Helen Cowley Brown', 'marriage-of-richard-w-cradock-and-isma-helen-cowley-brown-106', 'Marriage', '1855-01-01', '1916-07-01', NULL, NULL, 'Arin Edwards', '2024-08-29 17:54:15+00', true),
	(107, 'Birth of Charles FW Cuffe', 'birth-of-charles-fw-cuffe-107', 'Birth', '1832-09-01', '1915-01-13', 'kilkenny-36', 'Burial is located in a cemetary in Templemartin Church of Ireland Graveyard', 'Arin Edwards', '2024-08-29 18:13:08.746308+00', true),
	(108, 'Education of Charles FW Cuffe', 'education-of-charles-fw-cuffe-108', 'Education', '1849-09-15', '1851-06-15', 'london-1', 'Military Science at KCL', 'Arin Edwards', '2024-09-01 15:24:17+00', true),
	(109, 'Birth of John Tindal De Veulle', 'birth-of-john-tindal-de-veulle-109', 'Birth', '1830-01-01', '1854-01-01', 'the-channel-islands-33', NULL, 'Arin Edwards', '2024-09-02 08:28:26+00', true),
	(110, 'Education of John Tindal De Veulle', 'education-of-john-tindal-de-veulle-110', 'Education', '1848-09-15', '1850-06-15', 'london-1', 'Military Science at KCL', 'Arin Edwards', '2024-09-02 08:30:07+00', true),
	(111, 'Marriage of Charles FW Cuffe and Pauline Villiers Stuart', 'marriage-of-charles-fw-cuffe-and-pauline-villiers-stuart-111', 'Marriage', '1861-01-01', '1895-01-01', 'waterford-37', 'Residence in Waterford Ireland 23rd July 1875 before moving to Kilkenny in 1899 ', 'Arin Edwatds', '2024-09-02 09:56:24+00', true),
	(123, 'Birth of Daniel H Doherty', 'birth-of-daniel-h-doherty-123', 'Birth', '1839-01-01', '0001-01-01', 'ireland-41', '1839 (according to 1871 Census); 1843 (according to 1881 Census). 1871 Census visitor at Mithe Hotel in Surrey; 1881 Census lived at High Street Swan Hotel (occupation retired Captain from the Army)', 'Arin Edwards', '2024-09-12 11:46:18+00', true),
	(112, 'Birth of J Des Barres', 'birth-of-j-des-barres-112', 'Birth', '1842-12-28', '1903-01-15', 'the-channel-islands-33', 'He was born either in the year 1842-44, as it is not given in Newfoundland parish document. At his death in Hove Brighton, Sussex, he gave £4002 to Alexander Hamilton (retired lieutenant colonel) and James Stuart (retired major) but was later revised in Oct 1903 to £4526 - from 1903 will probates.', 'Arin Edwards', '2024-09-02 12:46:20+00', true),
	(113, 'Education of J Des Barres', 'education-of-j-des-barres-113', 'Education', '1852-09-15', '1854-06-15', 'london-1', 'Military Science at KCL', 'Arin Edwards', '2024-09-07 13:23:59.730999+00', true),
	(114, 'Marriage of J Des Barres to Louise Sophia Dunbar ', 'marriage-of-j-des-barres-to-louise-sophia-dunbar-114', 'Marriage', '1879-12-01', '1903-01-15', 'mathura-39', NULL, 'Arin Edwards', '2024-09-07 13:25:48+00', true),
	(115, 'Peninsular War', 'peninsular-war-115', 'Military action', '1808-05-02', '1814-04-18', 'iberian-peninsula-40', NULL, 'Arin Edwards', '2024-09-07 13:37:10+00', true),
	(116, 'Birth of Hugh Percy', 'birth-of-hugh-percy-116', 'Birth', '1785-04-20', '1847-12-04', NULL, NULL, NULL, '2024-09-08 16:18:18+00', true),
	(117, 'Marriage of Hugh Percy and Lady Charlotte Florentia Clive', 'marriage-of-hugh-percy-and-lady-charlotte-florentia-clive-117', 'Marriage', '1817-04-19', '1847-12-04', NULL, NULL, 'Arin Edwards', '2024-09-08 16:19:40+00', true),
	(118, 'Anglo-Zulu War', 'anglo-zulu-war-118', 'Military action', '1879-01-11', '1879-07-04', 'zulu-kingdom-42', NULL, 'Arin Edwards', '2024-09-11 15:33:54+00', true),
	(119, 'Boer War', 'boer-war-119', 'Military action', '1899-10-11', '1902-05-31', NULL, NULL, 'Arin Edwards', '2024-09-12 10:29:30+00', true),
	(120, 'Birth of Thomas WC Dickinson', 'birth-of-thomas-wc-dickinson-120', 'Birth', '1831-11-30', '1886-01-12', NULL, 'At his death it was written he was from Woodborough House Pangbourne in the Berks, then Upper Gray in Southampton, and then latest Cheltenham', 'Arin Edwards', '2024-09-12 10:51:08+00', true),
	(121, 'Education of Thomas WC Dickinson ', 'education-of-thomas-wc-dickinson-121', 'Education', '1850-09-15', '1853-06-15', 'london-1', 'Military Science at KCL', 'Arin Edwards', '2024-09-12 10:53:43+00', true),
	(122, 'Marriage of Thomas WC Dickinson and Elizabeth Charlotte Dickinson', 'marriage-of-thomas-wc-dickinson-and-elizabeth-charlotte-dickinson-122', 'Marriage', '1861-11-26', '1886-01-06', 'cheltenham-43', NULL, 'Arin Edwards', '2024-09-12 11:04:33+00', true),
	(135, 'Birth of John George de la Poer Beresford', 'birth-of-john-george-de-la-poer-beresford-135', 'Birth', '1773-01-01', '1862-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:05:47.373071+00', true),
	(124, 'Education of Daniel H Doherty', 'education-of-daniel-h-doherty-124', 'Education', '1855-09-15', '1857-06-15', 'london-1', 'Military Science at KCL', 'Arin Edwards', '2024-09-12 11:56:58+00', true),
	(137, 'Birth of James Bart Langham', 'birth-of-james-bart-langham-137', 'Birth', '1776-01-01', '1833-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:11:08.701842+00', true),
	(127, 'Abolition of Slavery', 'abolition-of-slavery-127', 'Act of UK Parliament', '1807-03-25', '0001-01-01', 'london-1', 'Slave Trade Act 1807, officially An Act for the Abolition of the Slave Trade,', 'Arin Edwards', '2024-09-13 11:53:07+00', true),
	(138, 'Marriage of James Bart Langham and Elisabeth Burdett', 'marriage-of-james-bart-langham-and-elisabeth-burdett-138', 'Marriage', '1813-04-08', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:12:00.189703+00', true),
	(139, 'Birth of John Banks Jenkinson', 'birth-of-john-banks-jenkinson-139', 'Birth', '1781-09-02', '1840-07-07', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:14:39.624716+00', true),
	(126, 'Marriage of Arthur Wellesley and Catherine Pakenham', 'marriage-of-arthur-wellesley-and-catherine-pakenham-126', 'Marriage', '1806-04-10', '1831-04-24', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 10:47:08.170559+00', true),
	(130, 'Marriage of C.M Sutton and Lucy Maria Charlotte', 'marriage-of-c-m-sutton-and-lucy-maria-charlotte-130', 'Marriage', '1811-07-08', '1815-12-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 12:40:59.930564+00', true),
	(131, 'Marriage of C.M Sutton and Ellen Power', 'marriage-of-c-m-sutton-and-ellen-power-131', 'Marriage', '1828-12-06', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 12:46:24.511341+00', true),
	(132, 'Marriage of Charles R. Sumner and Jennie Fanny Barnabine', 'marriage-of-charles-r-sumner-and-jennie-fanny-barnabine-132', 'Marriage', '1816-01-24', '1849-09-03', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 12:54:54.075564+00', true),
	(133, 'Birth of Henry William Majendie', 'birth-of-henry-william-majendie-133', 'Birth', '1754-01-01', '1830-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 12:57:57.586725+00', true),
	(134, 'Marriage of Henry William Majendie and Anne Routledge', 'marriage-of-henry-william-majendie-and-anne-routledge-134', 'Marriage', '1785-04-11', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:00:10.183385+00', true),
	(140, 'Marriage of John Banks Jenkinson and Frances Augusta Pechell', 'marriage-of-john-banks-jenkinson-and-frances-augusta-pechell-140', 'Marriage', '1813-04-08', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:16:20.136353+00', true),
	(141, 'Birth of Earl Brownlow (John Cust)', 'birth-of-earl-brownlow-john-cust-141', 'Birth', '1779-08-19', '1853-09-15', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:19:38.094165+00', true),
	(142, 'Marriage of Earl Brownlow (John Cust) and Sophia Hume', 'marriage-of-earl-brownlow-john-cust-and-sophia-hume-142', 'Marriage', '1810-07-24', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:21:50.147928+00', true),
	(143, 'Marriage of Earl Brownlow (John Cust) and Caroline Fludyer', 'marriage-of-earl-brownlow-john-cust-and-caroline-fludyer-143', 'Marriage', '1818-09-22', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:22:50.384641+00', true),
	(145, 'Marriage of Earl Brownlow (John Cust) and Lady Emma Sophia Edgcumbe', '', 'Marriage', '1828-07-17', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:24:04.648421+00', true),
	(146, 'Birth of John Ireland', 'birth-of-john-ireland-146', 'Birth', '1761-08-08', '1842-09-02', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:28:36.840778+00', true),
	(147, 'Marriage of John Ireland and Susannah Short', 'marriage-of-john-ireland-and-susannah-short-147', 'Marriage', '1826-09-11', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:30:03.614034+00', true),
	(148, 'Birth of John Kaye', 'birth-of-john-kaye-148', 'Birth', '1783-12-27', '1853-02-18', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:32:11.940649+00', true),
	(149, 'Marriage of John Kaye and Eliza Mortlock', 'marriage-of-john-kaye-and-eliza-mortlock-149', 'Marriage', '1815-07-18', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:33:38.733027+00', true),
	(150, 'Birth of John Luxmoore', 'birth-of-john-luxmoore-150', 'Birth', '1756-01-01', '1830-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:37:07.712891+00', true),
	(151, 'Marriage of John Luxmoore and Elizabeth Barnard', 'marriage-of-john-luxmoore-and-elizabeth-barnard-151', 'Marriage', '1786-04-06', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:38:12.64534+00', true),
	(152, 'Birth of John Henry Manners', 'birth-of-john-henry-manners-152', 'Birth', '1778-01-04', '1857-01-20', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:44:20.335216+00', true),
	(153, 'Marriage of John Henry Manners and Lady Elisabeth Howard', 'marriage-of-john-henry-manners-and-lady-elisabeth-howard-153', 'Marriage', '1799-04-22', '1825-11-29', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:46:08.581552+00', true),
	(154, 'Birth of Joshua Watson', 'birth-of-joshua-watson-154', 'Birth', '1771-01-01', '1855-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:55:15.597372+00', true),
	(155, 'Marriage of Joshua Watson and Mary Sikes', 'marriage-of-joshua-watson-and-mary-sikes-155', 'Marriage', '1797-01-01', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:56:22.858245+00', true),
	(156, 'Birth of Lord Crewe', 'birth-of-lord-crewe-156', 'Birth', '1742-09-27', '1829-04-28', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 13:59:17.766545+00', true),
	(157, 'Marriage of Lord Crewe and Frances Greville', 'marriage-of-lord-crewe-and-frances-greville-157', 'Marriage', '1766-04-04', '1818-12-23', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:01:16.224745+00', true),
	(158, 'Birth of Lord Kenyon', 'birth-of-lord-kenyon-158', 'Birth', '1776-01-01', '1885-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:03:53.9595+00', true),
	(159, 'Marriage of Lord Kenyon and Mary Emma Hammer', 'marriage-of-lord-kenyon-and-mary-emma-hammer-159', 'Marriage', '1803-02-01', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:04:57.788506+00', true),
	(160, 'Birth of Lord Rolle', 'birth-of-lord-rolle-160', 'Birth', '1750-01-01', '1842-04-03', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:08:04.512231+00', true),
	(161, 'Marriage of Lord Rolle and Judith Maria', 'marriage-of-lord-rolle-and-judith-maria-161', 'Marriage', '1778-02-22', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:09:39.2082+00', true),
	(162, 'Marriage of Lord Rolle and Louisa Barbara Trufusis', 'marriage-of-lord-rolle-and-louisa-barbara-trufusis-162', 'Marriage', '1822-09-24', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:10:44.910688+00', true),
	(163, 'Birth of Marquess of Bristol', 'birth-of-marquess-of-bristol-163', 'Birth', '1769-10-02', '1859-02-15', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:12:51.284395+00', true),
	(164, 'Marriage of Marquess of Bristol and Elisabeth Albana', 'marriage-of-marquess-of-bristol-and-elisabeth-albana-164', 'Marriage', '0001-01-01', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-13 14:13:59.833048+00', true),
	(165, 'Birth of John Crichton-Stuart ', 'birth-of-john-crichton-stuart-165', 'Birth', '1793-08-10', '1848-03-18', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 16:09:13.337037+00', true),
	(166, 'Marriage of John Crichton-Stuart and Maria North', 'marriage-of-john-crichton-stuart-and-maria-north-166', 'Marriage', '1818-07-29', '1841-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 16:16:20.648344+00', true),
	(167, 'Marriage of John Crichton-Stuart and Sophia Frederica Christina', 'marriage-of-john-crichton-stuart-and-sophia-frederica-christina-167', 'Marriage', '1846-04-10', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 16:17:47.964057+00', true),
	(168, 'Birth of George Horatio Cholmondeley', 'birth-of-george-horatio-cholmondeley-168', 'Birth', '1792-01-16', '1870-05-08', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 16:37:13.82103+00', true),
	(169, 'Marriage of George Horatio Cholmondeley and Caroline Campbell', 'marriage-of-george-horatio-cholmondeley-and-caroline-campbell-169', 'Marriage', '1812-10-20', '1815-10-12', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 16:40:50.391414+00', true),
	(170, 'Marriage of George Horatio Cholmondeley and Lady Susan Caroline Somerset', 'marriage-of-george-horatio-cholmondeley-and-lady-susan-caroline-somerset-170', 'Marriage', '1830-05-11', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 16:42:17.951968+00', true),
	(171, 'Birth of Elizabeth Sophia Lawrence', 'birth-of-elizabeth-sophia-lawrence-171', 'Birth', '1761-01-01', '1846-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 16:54:37.313928+00', true),
	(172, 'Birth of Richard Bagot', 'birth-of-richard-bagot-172', 'Birth', '1782-11-22', '1854-05-15', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 17:05:33.633227+00', true),
	(173, 'Marriage of Richard Bagot and Lady Harriet Villiers', 'marriage-of-richard-bagot-and-lady-harriet-villiers-173', 'Marriage', '1806-12-22', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 18:12:01.250894+00', true),
	(174, 'Birth of Richard Prosser', 'birth-of-richard-prosser-174', 'Birth', '1747-01-01', '1839-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 18:18:38.345755+00', true),
	(175, 'Marriage of Richard Prosser and Sarah Wegg', 'marriage-of-richard-prosser-and-sarah-wegg-175', 'Marriage', '1796-06-20', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 18:21:50.150921+00', true),
	(176, 'Birth of Richard William Penn Curzon-Howe', 'birth-of-richard-william-penn-curzon-howe-176', 'Birth', '1796-12-11', '1870-05-12', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 18:29:27.083384+00', true),
	(177, 'Marriage of Richard William Penn Curzon-Howe and Lady Harriet Georgiana Brudenell', 'marriage-of-richard-william-penn-curzon-howe-and-lady-harriet-georgiana-brudenell-177', 'Marriage', '1820-03-19', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 18:31:34.338776+00', true),
	(178, 'Marriage of Richard William Penn Curzon-Howe and Anne Gore', 'marriage-of-richard-william-penn-curzon-howe-and-anne-gore-178', 'Marriage', '1835-10-09', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-21 18:32:27.209564+00', true),
	(179, 'Birth of Robert James Carr', 'birth-of-robert-james-carr-179', 'Birth', '1774-01-01', '1841-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 14:43:19.373935+00', true),
	(181, 'Marriage of Robert James Carr and Nancy Wilkinson', 'marriage-of-robert-james-carr-and-nancy-wilkinson-181', 'Marriage', '1797-01-01', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 14:46:28.745429+00', true),
	(182, 'Birth of Sir Robert Peel', 'birth-of-sir-robert-peel-182', 'Birth', '1788-02-05', '1850-07-02', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 15:01:19.766549+00', true),
	(183, 'Marriage of Sir Robert Peel and Julia Floyd', 'marriage-of-sir-robert-peel-and-julia-floyd-183', 'Marriage', '1820-06-08', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 15:02:14.442482+00', true),
	(184, 'Birth of Thomas Burgess', 'birth-of-thomas-burgess-184', 'Birth', '1756-11-18', '1837-02-19', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 15:19:39.350497+00', true),
	(185, 'Marriage of Thomas Burgess and Margery Pontefract', 'marriage-of-thomas-burgess-and-margery-pontefract-185', 'Birth', '1799-10-01', '0001-01-01', NULL, NULL, 'Ariunzaya', '2024-09-22 15:21:09.02761+00', true),
	(186, 'Birth of Walter Francis Montagu Douglas-Scott', 'birth-of-walter-francis-montagu-douglas-scott-186', 'Birth', '1806-11-25', '1884-04-16', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 16:10:16.540106+00', true),
	(187, 'Marriage of Walter Francis Montagu Douglas-Scott and Lady Charlotte Anne Thynne', 'marriage-of-walter-francis-montagu-douglas-scott-and-lady-charlotte-anne-thynne-187', 'Marriage', '1829-08-13', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 16:11:17.233893+00', true),
	(188, 'Birth of William Carey', 'birth-of-william-carey-188', 'Birth', '1769-01-01', '1846-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 16:28:09.736524+00', true),
	(189, 'Marriage of William Carey and Mary Sheepshanks', 'marriage-of-william-carey-and-mary-sheepshanks-189', 'Marriage', '1804-01-02', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-22 16:29:59.989456+00', true),
	(190, 'Birth of William Howley', 'birth-of-william-howley-190', 'Birth', '1766-02-12', '1848-02-11', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-23 10:38:08.388812+00', true),
	(191, 'Marriage of William and Mary Frances', 'marriage-of-william-and-mary-frances-191', 'Marriage', '1805-08-29', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-23 10:45:03.676498+00', true),
	(192, 'Birth of William Van Mildert', 'birth-of-william-van-mildert-192', 'Birth', '1765-11-06', '1836-02-21', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-23 13:22:31.083228+00', true),
	(193, 'Marriage of William Van Mildert and Jane Douglas', 'marriage-of-william-van-mildert-and-jane-douglas-193', 'Marriage', '1795-12-22', '0001-01-01', NULL, NULL, 'Ariunzaya Batkhuyag', '2024-09-23 13:23:38.22298+00', true);


--
-- Data for Name: event_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."event_moment" ("id", "created_at", "event", "moment", "added_by") VALUES
	(1, '2024-03-31 20:36:06.953839+00', 'creation-of-society-for-the-diffusion-of-useful-knowledge-3', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(36, '2024-08-29 16:24:07+00', 'birth-of-george-henry-law-11', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(37, '2024-08-29 16:24:57+00', 'birth-of-george-james-cholmondeley-15', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(38, '2024-08-29 16:25:58+00', 'birth-of-henry-bathurst-16', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(39, '2024-08-29 16:26:16+00', 'birth-of-henry-handley-norris-17', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(40, '2024-08-29 16:26:44+00', 'birth-of-henry-hugh-hoare-18', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(41, '2024-08-29 16:27:04+00', 'birth-of-lady-georgiana-charlotte-bertie-28', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(42, '2024-08-29 16:27:36+00', 'marriage-of-george-james-cholmondeley-and-lady-georgiana-charlotte-bertie-34', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(43, '2024-08-29 16:28:06+00', 'birth-of-grace-coote-bathurst-29', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(44, '2024-08-29 16:28:44+00', 'birth-of-catherine-henrietta-31', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(46, '2024-08-29 16:29:35+00', 'birth-of-maria-palmer-acland-32', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(47, '2024-08-29 16:30:25+00', 'marriage-of-george-henry-law-and-jane-adeane-33', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(48, '2024-08-29 16:31:01+00', 'marriage-of-henry-bathurst-and-grace-coote-35', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(49, '2024-08-29 16:31:36+00', 'marriage-of-henry-handley-norris-and-henrietta-catherine-36', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(50, '2024-08-29 16:32:08+00', 'marriage-of-henry-hugh-hoare-and-maria-palmer-acland-38', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(51, '2024-08-29 16:35:37+00', 'the-catholic-emancipation-40', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(55, '2024-08-29 16:38:35+00', 'education-of-richard-w-cradock-105', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(2, '2024-08-12 12:43:35+00', 'indian-rebellion-5', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(3, '2024-08-21 11:23:54+00', 'crimean-war-47', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(4, '2024-08-21 11:47:20+00', 'siege-of-sebastopol-48', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(5, '2024-08-21 11:47:39+00', 'siege-of-lucknow-49', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(6, '2024-08-26 12:10:01.022959+00', 'education-of-george-bannister-55', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(7, '2024-08-26 12:10:10.933245+00', 'education-of-william-barr-56', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(8, '2024-08-26 12:10:25.304341+00', 'education-of-julius-barras-57', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(9, '2024-08-26 12:42:33.796212+00', 'birth-of-john-b-barker-61', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(10, '2024-08-26 12:42:43.991778+00', 'education-of-john-b-barker-62', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(11, '2024-08-26 12:42:54.709531+00', 'birth-of-edward-bell-63', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(12, '2024-08-26 12:43:07.773468+00', 'birth-of-robert-bennett-64', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(13, '2024-08-26 12:43:23.786378+00', 'birth-of-james-c-berkeley-65', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(14, '2024-08-26 12:43:33.658524+00', 'birth-of-robert-berkeley-66', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(15, '2024-08-26 12:43:45.184023+00', 'education-of-edward-bell-67', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(16, '2024-08-26 12:43:55.463211+00', 'education-of-robert-bennett-68', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(17, '2024-08-26 12:44:05.85538+00', 'education-of-james-c-berkeley-69', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(18, '2024-08-26 12:44:18.914858+00', 'education-of-robert-berkeley-70', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(19, '2024-08-26 20:18:16.82641+00', 'birth-of-george-blewitt-71', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(20, '2024-08-26 20:18:27.691143+00', 'birth-of-arthur-cecil-blunt-72', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(21, '2024-08-26 20:18:38.706322+00', 'birth-of-joseph-hf-blyth-73', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(22, '2024-08-26 20:18:53.508707+00', 'birth-of-joshua-j-bowness-74', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(23, '2024-08-26 20:19:03.13375+00', 'birth-of-george-nj-bradford-75', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(24, '2024-08-26 20:19:13.604508+00', 'birth-of-john-d-bradley-76', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(25, '2024-08-26 20:19:23.146911+00', 'birth-of-george-r-byron-77', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(26, '2024-08-26 20:19:31.727127+00', 'birth-of-william-hay-chapman-78', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(27, '2024-08-26 20:19:43.703463+00', 'education-of-george-blewitt-87', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(28, '2024-08-26 20:19:54.368518+00', 'education-of-arthur-cecil-blunt-88', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(29, '2024-08-26 20:20:03.606254+00', 'education-of-joseph-hf-blyth-89', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(30, '2024-08-26 20:20:14.114298+00', 'education-of-joshua-j-bowness-90', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(31, '2024-08-26 20:20:24.520832+00', 'education-of-george-nj-bradford-91', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(32, '2024-08-26 20:20:34.532003+00', 'education-of-john-d-bradley-92', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(34, '2024-08-26 20:21:09.627542+00', 'education-of-george-r-byron-93', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(35, '2024-08-26 20:21:18.456997+00', 'education-of-william-hay-chapman-94', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(52, '2024-08-29 16:36:41+00', 'birth-of-comyn-ching-58', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(53, '2024-08-29 16:36:53+00', 'birth-of-richard-w-cradock-103', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(54, '2024-08-29 16:37:35+00', 'comyn-ching-104', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards');


--
-- Data for Name: event_organisation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."event_organisation" ("id", "created_at", "event", "organisation", "added_by") VALUES
	(4, '2024-09-07 13:34:57+00', 'crimean-war-47', 'royal-horse-artillery-120', 'Arin Edwards'),
	(5, '2024-09-07 13:35:58.661916+00', 'indian-rebellion-5', 'royal-horse-artillery-120', 'Arin Edwards');


--
-- Data for Name: event_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."event_person" ("id", "created_at", "event", "person", "added_by") VALUES
	(1, '2024-03-31 20:50:08.298346+00', 'creation-of-society-for-the-diffusion-of-useful-knowledge-3', 'henry-brougham-123', 'Gillian Lamb'),
	(3, '2024-08-12 12:45:15+00', 'indian-rebellion-5', 'arthur-angelo-174', 'Jonah Miller'),
	(4, '2024-08-14 10:32:09+00', 'birth-of-duke-of-wellington-8', 'duke-of-wellington-137', 'Erika Melek Delgado'),
	(5, '2024-08-15 11:10:09+00', 'birth-of-george-henry-law-11', 'george-henry-law-182', 'Arin Edwards'),
	(6, '2024-08-15 18:11:22+00', 'birth-of-george-james-cholmondeley-15', 'george-james-cholmondeley-190', 'Arin Edwards'),
	(7, '2024-08-15 18:19:04+00', 'birth-of-henry-bathurst-16', 'henry-bathurst-193', 'Arin Edwards'),
	(8, '2024-08-15 20:45:20+00', 'birth-of-henry-handley-norris-17', 'henry-handley-norris-194', 'Arin Edwards'),
	(9, '2024-08-15 21:10:14+00', 'birth-of-henry-hugh-hoare-18', 'henry-hugh-hoare-195', 'Arin Edwards'),
	(10, '2024-08-16 14:24:49+00', 'birth-of-william-roger-snow-23', 'william-roger-snow-196', 'Jonah Miller'),
	(11, '2024-08-16 15:07:58+00', 'indian-rebellion-5', 'edmund-staveley-197', 'Jonah Miller'),
	(12, '2024-08-16 15:14:09+00', 'birth-of-edmund-staveley-24', 'edmund-staveley-197', 'Jonah Miller'),
	(13, '2024-08-16 15:34:59+00', 'birth-of-charles-doyne-anderson-straker-25', 'charles-doyne-anderson-straker-198', 'Jonah Miller'),
	(14, '2024-08-16 15:53:37+00', 'birth-of-arthur-angelo-22', 'arthur-angelo-174', 'Jonah Miller'),
	(15, '2024-08-16 15:54:00+00', 'birth-of-roger-swire-26', 'roger-swire-199', 'Jonah Miller'),
	(16, '2024-08-16 17:10:15+00', 'birth-of-lady-georgiana-charlotte-bertie-28', 'lady-georgiana-charlotte-bertie-191', 'Arin Edwards'),
	(17, '2024-08-16 17:11:27+00', 'birth-of-grace-coote-bathurst-29', 'grace-coote-200', 'Arin Edwards'),
	(18, '2024-08-16 17:11:58+00', 'birth-of-catherine-henrietta-31', 'catherine-henrietta-201', 'Arin Edwards'),
	(19, '2024-08-16 17:12:25+00', 'birth-of-maria-palmer-acland-32', 'maria-palmer-acland-202', 'Arin Edwards'),
	(20, '2024-08-16 18:22:03+00', 'marriage-of-george-henry-law-and-jane-adeane-33', 'george-henry-law-182', 'Arin Edwards'),
	(21, '2024-08-16 18:22:24+00', 'marriage-of-george-henry-law-and-jane-adeane-33', 'jane-adeane-184', 'Arin Edwards'),
	(22, '2024-08-16 18:23:04+00', 'marriage-of-george-james-cholmondeley-and-lady-georgiana-charlotte-bertie-34', 'george-james-cholmondeley-190', 'Arin Edwards'),
	(23, '2024-08-16 18:23:26+00', 'marriage-of-george-james-cholmondeley-and-lady-georgiana-charlotte-bertie-34', 'lady-georgiana-charlotte-bertie-191', 'Arin Edwards'),
	(24, '2024-08-16 18:23:49+00', 'marriage-of-henry-bathurst-and-grace-coote-35', 'henry-bathurst-193', 'Arin Edwards'),
	(25, '2024-08-16 18:24:37+00', 'marriage-of-henry-bathurst-and-grace-coote-35', 'grace-coote-200', 'Arin Edwards'),
	(26, '2024-08-16 18:24:53+00', 'marriage-of-henry-handley-norris-and-henrietta-catherine-36', 'henry-handley-norris-194', 'Arin Edwards'),
	(27, '2024-08-16 18:25:13+00', 'marriage-of-henry-handley-norris-and-henrietta-catherine-36', 'catherine-henrietta-201', 'Arin Edwards'),
	(28, '2024-08-16 18:25:44+00', 'marriage-of-henry-hugh-hoare-and-maria-palmer-acland-38', 'henry-hugh-hoare-195', 'Arin Edwards'),
	(29, '2024-08-16 18:26:07+00', 'marriage-of-henry-hugh-hoare-and-maria-palmer-acland-38', 'maria-palmer-acland-202', 'Arin Edwards'),
	(30, '2024-08-19 20:56:03.365474+00', 'birth-of-charles-james-blomfield-9', 'charles-james-blomfield-179', 'Im Chiew Ng'),
	(31, '2024-08-19 20:56:22.579467+00', 'education-of-charles-james-blomfield-41', 'charles-james-blomfield-179', 'Im Chiew Ng'),
	(32, '2024-08-19 21:03:15.369307+00', 'education-of-charles-manners-sutton-42', 'charles-manners-sutton-dec-180', 'Im Chiew Ng'),
	(33, '2024-08-21 11:16:29+00', 'crimean-war-47', 'roger-swire-199', 'Jonah Miller'),
	(34, '2024-08-21 11:17:37+00', 'siege-of-sebastopol-48', 'roger-swire-199', 'Jonah Miller'),
	(35, '2024-08-21 11:18:22+00', 'indian-rebellion-5', 'edmund-staveley-197', 'Jonah Miller'),
	(36, '2024-08-21 11:18:45+00', 'siege-of-lucknow-49', 'edmund-staveley-197', 'Jonah Miller'),
	(37, '2024-08-21 11:23:16+00', 'arthur-angelo-attended-kcl-50', 'arthur-angelo-174', 'Jonah Miller'),
	(38, '2024-08-21 11:25:21+00', 'william-roger-snow-attended-kcl-51', 'william-roger-snow-196', 'Jonah Miller'),
	(39, '2024-08-21 11:26:51+00', 'edmund-stavely-attended-kcl-52', 'edmund-staveley-197', 'Jonah Miller'),
	(40, '2024-08-21 11:28:26+00', 'charles-doyne-anderson-straker-attended-kcl-53', 'charles-doyne-anderson-straker-198', 'Jonah Miller'),
	(41, '2024-08-21 13:17:36+00', 'the-catholic-emancipation-40', 'george-henry-law-182', 'Arin Edwards'),
	(42, '2024-08-21 13:19:10+00', 'the-catholic-emancipation-40', 'henry-bathurst-193', 'Arin Edwards'),
	(43, '2024-08-21 13:25:47+00', 'the-catholic-emancipation-40', 'henry-handley-norris-194', 'Arin Edwards'),
	(44, '2024-08-21 13:26:45+00', 'the-catholic-emancipation-40', 'henry-hugh-hoare-195', 'Arin Edwards'),
	(45, '2024-08-26 12:07:56.251629+00', 'education-of-george-bannister-55', 'george-bannister-175', 'Im Chiew Ng'),
	(46, '2024-08-26 12:08:12.381007+00', 'education-of-william-barr-56', 'william-barr-176', 'Im Chiew Ng'),
	(47, '2024-08-26 12:08:27.327811+00', 'education-of-julius-barras-57', 'julius-barras-177', 'Im Chiew Ng'),
	(48, '2024-08-26 12:40:01.420727+00', 'birth-of-john-b-barker-61', 'john-b-barker-255', 'Im Chiew Ng'),
	(49, '2024-08-26 12:40:16.641413+00', 'education-of-john-b-barker-62', 'john-b-barker-255', 'Im Chiew Ng'),
	(50, '2024-08-26 12:40:32.850899+00', 'birth-of-edward-bell-63', 'edward-bell-256', 'Im Chiew Ng'),
	(51, '2024-08-26 12:40:46.537873+00', 'birth-of-robert-bennett-64', 'robert-bennett-257', 'Im Chiew Ng'),
	(52, '2024-08-26 12:41:01.474358+00', 'birth-of-james-c-berkeley-65', 'james-c-berkeley-258', 'Im Chiew Ng'),
	(53, '2024-08-26 12:41:17.921952+00', 'birth-of-robert-berkeley-66', 'robert-berkeley-259', 'Im Chiew Ng'),
	(54, '2024-08-26 12:41:31.205913+00', 'education-of-edward-bell-67', 'edward-bell-256', 'Im Chiew Ng'),
	(55, '2024-08-26 12:41:43.97531+00', 'education-of-robert-bennett-68', 'robert-bennett-257', 'Im Chiew Ng'),
	(56, '2024-08-26 12:41:56.340088+00', 'education-of-james-c-berkeley-69', 'james-c-berkeley-258', 'Im Chiew Ng'),
	(57, '2024-08-26 12:42:11.449678+00', 'education-of-robert-berkeley-70', 'robert-berkeley-259', 'Im Chiew Ng'),
	(58, '2024-08-26 14:10:05+00', 'birth-of-comyn-ching-58', 'comyn-ching-254', 'Arin Edwards'),
	(59, '2024-08-26 20:21:55.948023+00', 'birth-of-george-blewitt-71', 'george-blewitt-260', 'Im Chiew Ng'),
	(60, '2024-08-26 20:22:10.730342+00', 'birth-of-arthur-cecil-blunt-72', 'arthur-cecil-blunt-261', 'Im Chiew Ng'),
	(61, '2024-08-26 20:22:24.418609+00', 'birth-of-joseph-hf-blyth-73', 'joseph-hf-blyth-262', 'Im Chiew Ng'),
	(62, '2024-08-26 20:22:38.964196+00', 'birth-of-joshua-j-bowness-74', 'joshua-j-bowness-266', 'Im Chiew Ng'),
	(63, '2024-08-26 20:22:54.993217+00', 'birth-of-george-nj-bradford-75', 'george-nj-bradford-267', 'Im Chiew Ng'),
	(64, '2024-08-26 20:23:10.056936+00', 'birth-of-john-d-bradley-76', 'john-d-bradley-268', 'Im Chiew Ng'),
	(65, '2024-08-26 20:23:25.397298+00', 'birth-of-george-r-byron-77', 'george-r-byron-269', 'Im Chiew Ng'),
	(66, '2024-08-26 20:23:41.232868+00', 'birth-of-william-hay-chapman-78', 'william-hay-chapman-270', 'Im Chiew Ng'),
	(67, '2024-08-26 20:23:54.25229+00', 'education-of-george-blewitt-87', 'george-blewitt-260', 'Im Chiew Ng'),
	(68, '2024-08-26 20:24:06.449291+00', 'education-of-arthur-cecil-blunt-88', 'arthur-cecil-blunt-261', 'Im Chiew Ng'),
	(69, '2024-08-26 20:24:22.561655+00', 'education-of-joseph-hf-blyth-89', 'joseph-hf-blyth-262', 'Im Chiew Ng'),
	(70, '2024-08-26 20:24:35.237644+00', 'education-of-joshua-j-bowness-90', 'joshua-j-bowness-266', 'Im Chiew Ng'),
	(71, '2024-08-26 20:24:48.466216+00', 'education-of-george-nj-bradford-91', 'george-nj-bradford-267', 'Im Chiew Ng'),
	(72, '2024-08-26 20:25:02.525672+00', 'education-of-john-d-bradley-92', 'john-d-bradley-268', 'Im Chiew Ng'),
	(73, '2024-08-26 20:25:16.982835+00', 'education-of-george-r-byron-93', 'george-r-byron-269', 'Im Chiew Ng'),
	(74, '2024-08-26 20:25:29.526618+00', 'education-of-william-hay-chapman-94', 'william-hay-chapman-270', 'Im Chiew Ng'),
	(75, '2024-08-27 09:19:26+00', 'birth-of-arthur-manning-tuck-95', 'arthur-manning-tuck-271', 'Jonah Miller'),
	(76, '2024-08-27 09:34:08+00', 'birth-of-granville-waddilove-98', 'granville-waddilove-273', 'Jonah Miller'),
	(77, '2024-08-27 09:34:32+00', 'education-of-granville-waddilove-99', 'granville-waddilove-273', 'Jonah Miller'),
	(78, '2024-08-27 09:35:16+00', 'crimean-war-47', 'granville-waddilove-273', 'Jonah Miller'),
	(79, '2024-08-27 09:35:57+00', 'siege-of-sebastopol-48', 'granville-waddilove-273', 'Jonah Miller'),
	(80, '2024-08-27 09:40:18+00', 'battle-of-balaclava-100', 'granville-waddilove-273', 'Jonah Miller'),
	(81, '2024-08-27 09:40:38+00', 'battle-of-alma-101', 'granville-waddilove-273', 'Jonah Miller'),
	(82, '2024-08-27 09:40:59+00', 'battle-of-inkerman-102', 'granville-waddilove-273', 'Jonah Miller'),
	(83, '2024-08-29 15:38:38+00', 'birth-of-richard-w-cradock-103', 'richard-w-cradock-274', 'Arin Edwards'),
	(84, '2024-09-02 09:46:19.516729+00', 'education-of-richard-w-cradock-105', 'richard-w-cradock-274', 'Arin Edwards'),
	(85, '2024-09-02 09:46:32+00', 'education-of-charles-fw-cuffe-108', 'charles-fw-cuffe-275', 'Arin Edwards'),
	(87, '2024-09-02 09:47:30+00', 'birth-of-john-tindal-de-veulle-109', 'john-tindal-de-veulle-276', 'Arin Edwards'),
	(88, '2024-09-02 09:47:40+00', 'education-of-john-tindal-de-veulle-110', 'john-tindal-de-veulle-276', 'Arin Edwards'),
	(89, '2024-09-08 16:03:29+00', 'the-catholic-emancipation-40', 'hugh-percy-278', 'Arin Edwards'),
	(90, '2024-09-08 16:20:00+00', 'birth-of-hugh-percy-116', 'hugh-percy-278', 'Arin Edwards'),
	(91, '2024-09-08 16:21:11+00', 'marriage-of-hugh-percy-and-lady-charlotte-florentia-clive-117', 'hugh-percy-278', 'Arin Edwards'),
	(92, '2024-09-08 16:22:41+00', 'marriage-of-hugh-percy-and-lady-charlotte-florentia-clive-117', 'lady-charlotte-florentia-clive-279', 'Arin Edwards'),
	(93, '2024-09-11 15:35:47+00', 'peninsular-war-115', 'j-des-barres-277', 'Arin Edwards'),
	(94, '2024-09-11 15:36:23+00', 'anglo-zulu-war-118', 'j-des-barres-277', 'Arin Edwards'),
	(95, '2024-09-12 10:32:15+00', 'boer-war-119', 'j-des-barres-277', 'Arin Edwards'),
	(96, '2024-09-12 11:06:21+00', 'birth-of-thomas-wc-dickinson-120', 'thomas-wc-dickinson-299', 'Arin Edwards'),
	(97, '2024-09-12 11:07:12+00', 'education-of-thomas-wc-dickinson-121', 'thomas-wc-dickinson-299', 'Arin Edwards'),
	(98, '2024-09-12 11:07:21+00', 'marriage-of-thomas-wc-dickinson-and-elizabeth-charlotte-dickinson-122', 'thomas-wc-dickinson-299', 'Arin Edwards'),
	(99, '2024-09-13 11:54:35+00', 'abolition-of-slavery-127', 'hugh-percy-278', 'Arin Edwards');


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
	(10, 'Merchant', '2024-03-20 22:30:30.61205+00', 'Gillian Lamb'),
	(17, 'Philanthropist', '2024-08-14 10:45:30+00', 'Erika Melek Delgado'),
	(18, 'Cleric', '2024-08-14 13:31:20+00', 'Arin Edwards'),
	(19, 'Banker', '2024-08-14 13:32:20+00', 'Arin Edwards'),
	(20, 'Military officer', '2024-08-15 14:19:52.586588+00', 'Ariunzaya Batkhuyag'),
	(21, 'Inventor', '2024-08-16 12:15:06.420821+00', 'Ariunzaya Batkhuyag'),
	(22, 'Speaker of the House of Commons', '2024-08-20 13:27:57.976508+00', 'Ariunzaya Batkhuyag'),
	(23, 'Gas engineer', '2024-08-26 12:15:53+00', 'Arin Edwards'),
	(24, 'Dean of Westminster', '2024-09-11 15:05:20.806966+00', 'Ariunzaya Batkhuyag'),
	(25, 'Slave-owner', '2024-09-12 11:13:03.229789+00', 'Ariunzaya Batkhuyag'),
	(26, 'Wine merchant', '2024-09-12 11:26:42.489882+00', 'Ariunzaya Batkhuyag'),
	(27, 'Industrialist', '2024-09-21 16:11:09.062476+00', 'Ariunzaya Batkhuyag'),
	(28, 'Landowner', '2024-09-21 16:52:43.359187+00', 'Ariunzaya Batkhuyag'),
	(29, 'Scholar', '2024-09-23 15:18:58.830827+00', 'Ariunzaya Batkhuyag');


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
	(1, '2024-04-18 16:30:19.991788+00', 'eton-college-4', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(2, '2024-04-18 16:30:33.807198+00', 'st-johns-cambridge-5', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(3, '2024-04-18 16:30:47.262923+00', 'west-indian-company-10', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(4, '2024-04-18 16:31:05.405647+00', 'charterhouse-11', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(5, '2024-04-18 16:31:18.898669+00', 'harrow-16', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(6, '2024-04-18 16:31:38.713659+00', 'lincolns-inn-17', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(7, '2024-04-18 16:31:54.761351+00', 'great-northern-railway-9', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(8, '2024-04-18 16:32:14.814325+00', 'el-dock-company-18', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(9, '2024-04-18 16:32:29.822872+00', 'athaneum-24', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(10, '2024-04-18 16:32:43.301962+00', 'greenwich-hospital-25', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(11, '2024-04-18 16:32:58.725183+00', 'st-bartholomews-hospital-2', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(12, '2024-04-18 16:33:23.516458+00', 'society-of-psychorolutes-3', '2- 1828: The financial and political networks which created King''s', 'Gillian Lamb'),
	(13, '2024-08-21 11:46:11+00', 'department-of-military-science-kings-college-london-48', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller');


--
-- Data for Name: organisation_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."organisation_source" ("id", "organisation", "source", "added_by", "created_at") OVERRIDING SYSTEM VALUE VALUES
	(1, 'anti-apartheid-society-at-kings-college-london-146', 'kings-college-london-archives-students-union-ku-han-52-kings-college-london-students-union-handbook-1976-1977-london-kings-college-london-15-5', 'Erika Melek Delgado', '2025-01-12 12:10:53'),
	(2, 'third-world-first-society-at-kings-college-london-147', 'kings-college-london-archives-students-union-ku-han-54-kings-college-london-students-union-handbook-1978-1979-london-kings-college-london-34-6', 'Erika Melek Delgado', '2025-01-12 12:11:29'),
	(3, 'war-on-want-campaign-at-kings-college-london-148', 'kings-college-london-students-union-handbook-1965-1966-7', 'Erika Melek Delgado', '2025-01-12 12:12:00'),
	(4, 'group-against-racial-discrimination-at-kings-college-london-149', 'kings-college-london-students-union-handbook-1965-1966-7', 'Erika Melek Delgado', '2025-01-12 12:12:31'),
	(5, 'campaign-for-nuclear-disarmament-at-kings-college-london-150', 'kings-college-london-students-union-handbook-1965-1966-7', 'Erika Melek Delgado', '2025-01-12 12:12:54'),
	(6, 'afro-caribbean-society-at-kings-college-london-151', 'kings-college-london-students-union-handbook-1983-1984-8', 'Erika Melek Delgado', '2025-01-12 12:13:14');


--
-- Data for Name: organisation_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: organisation_url; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."organisation_url" ("id", "created_at", "organisation", "name", "url", "added_by") VALUES
	(1, '2024-10-29 07:43:09.277856+00', 'kings-college-london-47', 'King''s College London website', 'https://www.kcl.ac.uk', NULL);


--
-- Data for Name: person_feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_feature" ("id", "created_at", "person", "image_url", "image_title", "image_description", "added_by") VALUES
	(1, '2024-06-27 13:57:27.059276+00', 'william-cotton-160', 'https://upload.wikimedia.org/wikipedia/commons/7/7d/William_Cotton_by_Matthew_Noble_1855.JPG', 'William Cotton by Matthew Noble 1855', 'Bust of William Cotton', NULL),
	(2, '2024-06-27 14:40:37.888768+00', 'sir-robert-peel-138', 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Sir_Robert_Peel%2C_2nd_Bt_by_John_Linnell.jpg', 'Sir Robert Peel, 2nd Bt, by John Linnell', 'Painting of Sir Robert Peel, from the National Portrait Gallery, London', NULL),
	(3, '2024-10-15 19:59:22.023963+00', 'tomas-garrigue-masaryk-360', 'https://cdn.britannica.com/38/133538-050-668FB114/Tomas-Masaryk.jpg', 'Tomáš Masaryk', 'Tomáš Masaryk - Photo; Encyclopædia Britannica, Inc.', 'Erika Melek Delgado');


--
-- Data for Name: person_funder; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_funder" ("id", "created_at", "person", "organisation", "added_by") VALUES
	(1, '2024-03-21 10:56:50.96193+00', 'richard-edward-arden-2', 'kings-college-london-39', NULL),
	(2, '2024-09-01 14:33:39+00', 'george-henry-law-182', 'kings-college-london-39', 'Arin Edwards'),
	(4, '2024-09-02 08:23:11+00', 'george-james-cholmondeley-190', 'kings-college-london-39', 'Arin Edwards'),
	(5, '2024-09-02 08:24:10+00', 'henry-bathurst-193', 'kings-college-london-39', 'Arin Edwards'),
	(6, '2024-09-02 08:24:54.23035+00', 'henry-handley-norris-194', 'kings-college-london-47', 'Arin Edwards'),
	(7, '2024-09-02 08:24:59+00', 'henry-hugh-hoare-195', 'kings-college-london-47', 'Arin Edwards');


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
	(9, 'Friend', '2024-03-29 22:51:41.008061+00'),
	(10, 'In-Law', '2024-08-17 16:24:12+00'),
	(11, 'Liaison', '2024-08-17 16:56:20+00'),
	(12, 'Society associates
', '2024-08-19 11:48:57+00');


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
	(40, '2024-03-29 23:39:16.936753+00', 'robert-henley-113', 'sir-robert-peel-138', 'Gillian Lamb', 'Family member'),
	(41, '2024-08-15 13:45:35+00', 'george-henry-law-182', 'jane-adeane-184', 'Arin Edwards', 'Spouse'),
	(42, '2024-08-15 16:35:11+00', 'george-james-cholmondeley-190', 'lady-georgiana-charlotte-bertie-191', 'Arin Edwards', 'Spouse'),
	(43, '2024-08-16 11:05:33+00', 'henry-handley-norris-194', 'joshua-watson-133', 'Arin Edwards', 'Friend'),
	(44, '2024-08-17 16:29:39+00', 'george-henry-law-182', 'isaac-milner-203', 'Arin Edwards', 'Friend'),
	(45, '2024-08-17 16:30:20+00', 'george-henry-law-182', 'edward-law-204', 'Arin Edwards', 'In-Law'),
	(46, '2024-08-17 16:54:36.654741+00', 'george-james-cholmondeley-190', 'gertrude-mahon-206', 'Arin Edwards', 'Friend'),
	(47, '2024-08-17 16:56:44+00', 'george-james-cholmondeley-190', 'grace-dalrymple-elliott-207', 'Arin Edwards', 'Liaison'),
	(48, '2024-08-17 16:58:29.644211+00', 'george-james-cholmondeley-190', 'edward-smith-stanley-208', 'Arin Edwards', 'Friend'),
	(49, '2024-08-17 16:59:44.715268+00', 'george-james-cholmondeley-190', 'george-vancouver-209', 'Arin Edwards', 'Friend'),
	(50, '2024-08-19 11:38:34.045212+00', 'henry-bathurst-193', 'thomas-coke-of-holkham-210', 'Arin Edwards', 'Friend'),
	(51, '2024-08-19 11:38:40+00', 'henry-bathurst-193', 'richard-prosser-211', 'Arin Edwards', 'Religious'),
	(52, '2024-08-19 12:42:43.425619+00', 'henry-handley-norris-194', 'charles-lloyd-212', 'Arin Edwards', 'Society associates
'),
	(54, '2024-08-19 12:50:08+00', 'henry-handley-norris-194', 'john-henry-hobart-213', 'Arin Edwards', 'Religious'),
	(55, '2024-08-19 12:55:07+00', 'henry-handley-norris-194', 'john-jebb-214', 'Arin Edwards', 'Religious'),
	(56, '2024-08-19 13:00:19.281057+00', 'henry-handley-norris-194', 'charles-james-blomfield-215', 'Arin Edwards', 'Religious'),
	(57, '2024-08-19 13:04:28+00', 'henry-handley-norris-194', 'lord-liverpool-216', 'Arin Edwards', 'Religious'),
	(58, '2024-08-19 13:07:53+00', 'henry-handley-norris-194', 'dr-hawks-217', 'Arin Edwards', 'Religious'),
	(59, '2024-08-19 13:10:54+00', 'henry-handley-norris-194', 'thomas-mozley-218', 'Arin Edwards', 'Religious'),
	(60, '2024-08-19 13:12:26+00', 'henry-hugh-hoare-195', 'joshua-watson-133', 'Arin Edwards', 'Society associates
'),
	(61, '2024-08-19 13:16:47+00', 'henry-hugh-hoare-195', 'thomas-willement-219', 'Arin Edwards', 'Business'),
	(62, '2024-08-19 19:08:12.89063+00', 'henry-hugh-hoare-195', 'lord-charles-fitzroy-220', 'Arin Edwards', 'Friend'),
	(63, '2024-08-19 19:14:11.084078+00', 'henry-hugh-hoare-195', 'george-elphinstone-keith-221', 'Arin Edwards', 'Friend'),
	(64, '2024-08-20 13:47:47.783321+00', 'duke-of-wellington-137', 'angela-burnett-coutts-222', 'Ariunzaya Batkhuyag', NULL),
	(65, '2024-08-20 13:48:15.251139+00', 'duke-of-wellington-137', 'the-earl-and-countess-of-wilton-225', 'Ariunzaya Batkhuyag', NULL),
	(67, '2024-08-20 13:48:59.879609+00', 'duke-of-wellington-137', 'marquess-of-bute-226', 'Ariunzaya Batkhuyag', NULL),
	(68, '2024-08-20 13:49:16.814077+00', 'duke-of-wellington-137', 'princess-lieven-227', 'Ariunzaya Batkhuyag', NULL),
	(69, '2024-08-20 13:49:54.174927+00', 'duke-of-wellington-137', 'lady-bessborough-229', 'Ariunzaya Batkhuyag', NULL),
	(70, '2024-08-20 13:50:17.004048+00', 'duke-of-wellington-137', 'lady-salisbury-228', 'Ariunzaya Batkhuyag', NULL),
	(71, '2024-08-20 13:50:39.500626+00', 'duke-of-wellington-137', 'lady-shelley-230', 'Ariunzaya Batkhuyag', NULL),
	(72, '2024-08-20 13:58:20.123427+00', 'duke-of-wellington-137', 'catherine-pakenham-231', 'Ariunzaya Batkhuyag', 'Spouse'),
	(73, '2024-08-20 16:48:53.89874+00', 'patrick-bell-186', 'jane-lawson-232', 'Ariunzaya Batkhuyag', 'Spouse'),
	(74, '2024-08-20 17:10:02.584997+00', 'bowyer-edward-sparke-187', 'john-manners-233', 'Ariunzaya Batkhuyag', NULL),
	(75, '2024-08-20 17:24:55.409628+00', 'c-m-sutton-188', 'lucy-maria-charlotte-234', 'Ariunzaya Batkhuyag', 'Spouse'),
	(76, '2024-08-20 17:31:07.84368+00', 'charles-r-sumner-189', 'jennie-fanny-barnabine-235', 'Ariunzaya Batkhuyag', 'Spouse'),
	(77, '2024-08-20 18:05:01.208994+00', 'c-m-sutton-188', 'duke-of-wellington-137', 'Ariunzaya Batkhuyag', NULL),
	(78, '2024-08-20 18:06:17.014668+00', 'c-m-sutton-188', 'sir-robert-peel-138', 'Ariunzaya Batkhuyag', NULL),
	(79, '2024-08-20 18:51:52.250958+00', 'henry-william-majendie-245', 'queen-charlotte-246', 'Ariunzaya Batkhuyag', NULL),
	(80, '2024-08-20 18:52:16.107205+00', 'henry-william-majendie-245', 'king-william-iv-247', 'Ariunzaya Batkhuyag', NULL),
	(81, '2024-08-20 18:52:41.255925+00', 'henry-william-majendie-245', 'thomas-poole-248', 'Ariunzaya Batkhuyag', NULL),
	(82, '2024-08-20 18:53:03.915299+00', 'henry-william-majendie-245', 'dr-samuel-berdmore-249', 'Ariunzaya Batkhuyag', NULL),
	(83, '2024-08-20 18:53:38.683804+00', 'henry-william-majendie-245', 'anne-routledge-250', 'Ariunzaya Batkhuyag', 'Spouse'),
	(84, '2024-08-21 13:15:23.86684+00', 'duke-of-wellington-137', 'harriet-arbuthnot-252', 'Ariunzaya Batkhuyag', NULL),
	(85, '2024-08-21 13:15:41.758031+00', 'duke-of-wellington-137', 'charles-arbuthnot-253', 'Ariunzaya Batkhuyag', NULL),
	(86, '2024-09-08 16:25:53+00', 'hugh-percy-278', 'lady-charlotte-florentia-clive-279', 'Arin Edwards', 'Spouse'),
	(87, '2024-09-11 14:24:42.050167+00', 'john-george-de-la-poer-beresford-280', 'george-dunbar-281', 'Ariunzaya Batkhuyag', NULL),
	(88, '2024-09-11 14:25:04.523561+00', 'john-george-de-la-poer-beresford-280', 'joseph-dixon-282', 'Ariunzaya Batkhuyag', NULL),
	(89, '2024-09-11 14:25:29.854407+00', 'john-george-de-la-poer-beresford-280', 'henry-cooke-283', 'Ariunzaya Batkhuyag', NULL),
	(90, '2024-09-11 14:47:04.49241+00', 'john-banks-jenkinson-285', 'charles-jenkinson-286', 'Ariunzaya Batkhuyag', NULL),
	(91, '2024-09-11 14:57:43.519109+00', 'earl-brownlow-287', 'mary-anne-boode-288', 'Ariunzaya Batkhuyag', NULL),
	(92, '2024-09-11 15:00:35.497413+00', 'earl-brownlow-287', 'wilbraham-egerton-289', 'Ariunzaya Batkhuyag', NULL),
	(93, '2024-09-11 15:11:11.179665+00', 'john-ireland-290', 'william-gifford-291', 'Ariunzaya Batkhuyag', NULL),
	(94, '2024-09-11 15:20:41.322311+00', 'john-kaye-292', 'sir-robert-peel-138', 'Ariunzaya Batkhuyag', NULL),
	(95, '2024-09-11 15:23:15.079327+00', 'john-kaye-292', 'lord-liverpool-136', 'Ariunzaya Batkhuyag', NULL),
	(96, '2024-09-11 15:35:39.885036+00', 'john-luxmoore-293', 'duke-of-buccleuch-294', 'Ariunzaya Batkhuyag', NULL),
	(97, '2024-09-11 15:49:09.126975+00', 'john-manners-233', 'benjamin-disraeli-295', 'Ariunzaya Batkhuyag', NULL),
	(98, '2024-09-11 16:05:42.652104+00', 'lord-kenyon-296', 'william-blennerhassett-fairman-297', 'Ariunzaya Batkhuyag', NULL),
	(99, '2024-09-12 11:21:24.829545+00', 'lord-rolle-300', 'henry-dundas-152', 'Ariunzaya Batkhuyag', NULL),
	(100, '2024-09-12 11:21:48.115074+00', 'lord-rolle-300', 'charles-james-fox-301', 'Ariunzaya Batkhuyag', NULL),
	(101, '2024-09-12 11:22:24.806564+00', 'lord-rolle-300', 'queen-victoria-302', 'Ariunzaya Batkhuyag', NULL),
	(102, '2024-09-12 11:47:03.709389+00', 'lord-crewe-304', 'charles-james-fox-301', 'Ariunzaya Batkhuyag', NULL),
	(103, '2024-09-12 11:47:29.314819+00', 'lord-crewe-304', 'duke-of-grafton-306', 'Ariunzaya Batkhuyag', NULL),
	(104, '2024-09-13 11:55:40+00', 'sir-robert-peel-138', 'hugh-percy-278', 'Arin Edwards', 'Friend'),
	(105, '2024-09-13 12:08:13+00', 'william-wilberforce-142', 'hugh-percy-278', 'Arin Edwards', 'Friend'),
	(106, '2024-09-13 12:14:10+00', 'mrs-arbuthnot-307', 'hugh-percy-278', 'Arin Edwards', 'Friend'),
	(107, '2024-09-13 12:14:35+00', 'hugh-percy-278', 'charles-x-308', 'Arin Edwards', 'Legal'),
	(108, '2024-09-13 12:15:27.424373+00', 'sir-james-graham-309', 'hugh-percy-278', 'Arin Edwards', 'Friend'),
	(109, '2024-09-13 12:15:53+00', 'charles-greville-310', 'hugh-percy-278', 'Arin Edwards', 'Friend'),
	(110, '2024-09-21 16:20:11.291669+00', 'john-crichton-stuart-311', 'duke-of-wellington-137', 'Ariunzaya Batkhuyag', NULL),
	(111, '2024-09-21 16:20:48.647548+00', 'john-crichton-stuart-311', 'john-kaye-292', 'Ariunzaya Batkhuyag', NULL),
	(112, '2024-09-21 16:23:42.272546+00', 'john-crichton-stuart-311', 'madame-de-stael-312', 'Ariunzaya Batkhuyag', NULL),
	(113, '2024-09-21 16:24:03.993883+00', 'john-crichton-stuart-311', 'louis-phillipe-313', 'Ariunzaya Batkhuyag', NULL),
	(114, '2024-09-21 16:24:23.706449+00', 'john-crichton-stuart-311', 'napoleon-bonaparte-314', 'Ariunzaya Batkhuyag', NULL),
	(115, '2024-09-21 16:47:12.931218+00', 'george-horatio-cholmondeley-315', 'william-henry-cholmondeley-316', 'Ariunzaya Batkhuyag', NULL),
	(116, '2024-09-21 16:47:29.36424+00', 'george-horatio-cholmondeley-315', 'duke-of-beaufort-317', 'Ariunzaya Batkhuyag', NULL),
	(117, '2024-09-21 16:47:46.254152+00', 'george-horatio-cholmondeley-315', '1st-marquess-conyngham-318', 'Ariunzaya Batkhuyag', NULL),
	(118, '2024-09-21 17:00:44.43839+00', 'richard-fountayne-wilson-320', 'michael-sadler-321', 'Ariunzaya Batkhuyag', NULL),
	(119, '2024-09-21 17:01:01.773638+00', 'richard-fountayne-wilson-320', 'thomas-creevey-322', 'Ariunzaya Batkhuyag', NULL),
	(120, '2024-09-21 18:12:44.852098+00', 'richard-bagot-323', 'duke-of-wellington-137', 'Ariunzaya Batkhuyag', NULL),
	(121, '2024-09-21 18:13:07.312566+00', 'richard-bagot-323', 'sir-robert-peel-138', 'Ariunzaya Batkhuyag', NULL),
	(122, '2024-09-21 18:23:26.844532+00', 'richard-prosser-324', 'henry-bathurst-193', 'Ariunzaya Batkhuyag', NULL),
	(123, '2024-09-21 18:25:21.725083+00', 'richard-prosser-324', 'matthew-baillie-325', 'Ariunzaya Batkhuyag', NULL),
	(124, '2024-09-21 18:35:47.241647+00', 'richard-william-penn-curzon-howe-326', 'king-william-iv-247', 'Ariunzaya Batkhuyag', NULL),
	(125, '2024-09-21 18:36:04.71918+00', 'richard-william-penn-curzon-howe-326', 'queen-adelaide-327', 'Ariunzaya Batkhuyag', NULL),
	(126, '2024-09-22 14:48:45.926987+00', 'robert-james-carr-328', 'prince-george-iv-329', 'Ariunzaya Batkhuyag', NULL),
	(127, '2024-09-22 15:06:04.163875+00', 'sir-robert-peel-138', 'lord-liverpool-136', 'Ariunzaya Batkhuyag', NULL),
	(128, '2024-09-22 15:06:31.484947+00', 'sir-robert-peel-138', 'duke-of-wellington-137', 'Ariunzaya Batkhuyag', NULL),
	(129, '2024-09-22 15:06:50.910646+00', 'sir-robert-peel-138', 'henry-goulburn-139', 'Ariunzaya Batkhuyag', NULL),
	(130, '2024-09-22 15:08:10.717481+00', 'sir-robert-peel-138', 'charles-lloyd-212', 'Ariunzaya Batkhuyag', NULL),
	(131, '2024-09-22 15:11:59.734232+00', 'sir-robert-peel-138', 'henry-vane-330', 'Ariunzaya Batkhuyag', NULL),
	(132, '2024-09-22 15:12:18.085041+00', 'sir-robert-peel-138', 'john-wilson-croker-331', 'Ariunzaya Batkhuyag', NULL),
	(133, '2024-09-22 15:12:38.474573+00', 'sir-robert-peel-138', 'lord-byron-george-gordon-byron-noel-332', 'Ariunzaya Batkhuyag', NULL),
	(134, '2024-09-22 15:13:01.975899+00', 'sir-robert-peel-138', 'thomas-gaisford-333', 'Ariunzaya Batkhuyag', NULL),
	(135, '2024-09-22 15:25:52.902404+00', 'thomas-burgess-334', 'shute-barrington-bishop-of-salisbury-335', 'Ariunzaya Batkhuyag', NULL),
	(136, '2024-09-22 15:26:15.461198+00', 'thomas-burgess-334', 'henry-addington-p-m-336', 'Ariunzaya Batkhuyag', NULL),
	(137, '2024-09-22 16:33:54.664335+00', 'william-carey-338', 'cyril-jackson-339', 'Ariunzaya Batkhuyag', NULL),
	(138, '2024-09-22 16:34:17.521063+00', 'william-carey-338', 'duke-of-york-340', 'Ariunzaya Batkhuyag', NULL),
	(139, '2024-09-22 16:34:37.482048+00', 'william-carey-338', 'william-vincent-341', 'Ariunzaya Batkhuyag', NULL),
	(140, '2024-09-23 10:54:51.679076+00', 'william-howley-342', 'charles-james-blomfield-179', 'Ariunzaya Batkhuyag', NULL),
	(141, '2024-09-23 10:55:29.65784+00', 'william-howley-342', 'archdeacon-j-j-watson-343', 'Ariunzaya Batkhuyag', NULL),
	(142, '2024-09-23 10:56:03.105947+00', 'william-howley-342', 'marquess-of-abercorn-344', 'Ariunzaya Batkhuyag', NULL),
	(143, '2024-09-23 10:57:37.154002+00', 'william-howley-342', 'william-ii-of-the-netherlands-345', 'Ariunzaya Batkhuyag', NULL),
	(144, '2024-09-23 10:58:12.166589+00', 'william-howley-342', 'hugh-james-rose-346', 'Ariunzaya Batkhuyag', NULL),
	(145, '2024-09-23 10:58:34.989183+00', 'william-howley-342', 'benjamin-harrison-347', 'Ariunzaya Batkhuyag', NULL),
	(146, '2024-09-23 15:29:24.573716+00', 'william-van-mildert-348', 'charles-lloyd-212', 'Ariunzaya Batkhuyag', NULL),
	(147, '2024-09-23 15:30:34.333818+00', 'william-van-mildert-348', 'william-cotton-160', 'Ariunzaya Batkhuyag', NULL),
	(148, '2024-09-23 15:31:06.766053+00', 'william-van-mildert-348', 'george-doyley-111', 'Ariunzaya Batkhuyag', NULL),
	(149, '2024-09-23 15:31:41.090293+00', 'william-van-mildert-348', 'duke-of-wellington-137', 'Ariunzaya Batkhuyag', NULL),
	(150, '2024-09-23 15:32:25.604668+00', 'william-van-mildert-348', 'lord-liverpool-136', 'Ariunzaya Batkhuyag', NULL),
	(151, '2024-09-23 15:40:22.166749+00', 'william-van-mildert-348', 'charles-manners-sutton-dec-180', 'Ariunzaya Batkhuyag', NULL),
	(152, '2024-09-23 15:44:40.730579+00', 'william-van-mildert-348', '4th-duke-of-queensbury-349', 'Ariunzaya Batkhuyag', NULL),
	(153, '2024-09-23 15:45:03.093531+00', 'william-van-mildert-348', 'william-hill-350', 'Ariunzaya Batkhuyag', NULL),
	(154, '2024-09-23 15:56:18.599372+00', 'john-kaye-292', 'charles-james-blomfield-179', 'Ariunzaya Batkhuyag', NULL),
	(155, '2024-09-23 16:08:29.590441+00', 'john-kaye-292', 'charles-burney-356', 'Ariunzaya Batkhuyag', NULL),
	(156, '2024-09-23 16:08:54.280816+00', 'john-kaye-292', 'henry-bayley-of-stow-359', 'Ariunzaya Batkhuyag', NULL),
	(157, '2024-09-23 16:09:23.206832+00', 'john-kaye-292', 'charles-goddard-358', 'Ariunzaya Batkhuyag', NULL),
	(158, '2024-09-23 16:10:00.600495+00', 'john-kaye-292', 'j-h-monk-357', 'Ariunzaya Batkhuyag', NULL),
	(159, '2024-09-23 16:21:16.067276+00', 'joshua-watson-303', 'robert-harry-inglis-114', 'Ariunzaya Batkhuyag', NULL),
	(160, '2024-09-23 16:23:52.833559+00', 'joshua-watson-303', 'hugh-james-rose-346', 'Ariunzaya Batkhuyag', NULL),
	(161, '2024-09-23 16:25:35.167643+00', 'joshua-watson-303', 'benjamin-harrison-347', 'Ariunzaya Batkhuyag', NULL),
	(162, '2024-09-23 16:26:55.270253+00', 'joshua-watson-303', 'william-van-mildert-348', 'Ariunzaya Batkhuyag', NULL),
	(163, '2024-09-23 16:28:38.116528+00', 'joshua-watson-303', 'henry-handley-norris-194', 'Ariunzaya Batkhuyag', NULL),
	(164, '2024-09-26 10:33:04.321535+00', 'benjamin-collins-brodie-107', 'william-manning-118', 'Im Chiew Ng', 'In-Law');


--
-- Data for Name: person_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_language" ("id", "created_at", "language", "added_by", "person") VALUES
	(1, '2024-10-15 19:50:32+00', 'Slovak', 'Erika Melek Delgado', 'tomas-garrigue-masaryk-360'),
	(2, '2024-10-15 19:50:43+00', 'German', 'Erika Melek Delgado', 'tomas-garrigue-masaryk-360'),
	(3, '2024-10-15 19:51:26+00', 'Russian', 'Erika Melek Delgado', 'tomas-garrigue-masaryk-360'),
	(4, '2024-10-15 19:52:08+00', 'French', 'Erika Melek Delgado', 'tomas-garrigue-masaryk-360'),
	(5, '2024-10-15 19:52:36+00', 'English', 'Erika Melek Delgado', 'tomas-garrigue-masaryk-360'),
	(6, '2025-01-13 08:47:01+00', 'Afrikaans', 'Erika Melek Delgado', 'desmond-tutu-364'),
	(7, '2025-01-13 08:47:51+00', 'Sotho', 'Erika Melek Delgado', 'desmond-tutu-364'),
	(8, '2025-01-13 08:50:23+00', 'Xhosa', 'Erika Melek Delgado', 'desmond-tutu-364'),
	(9, '2025-01-13 08:51:29+00', 'Tswana', 'Erika Melek Delgado', 'desmond-tutu-364'),
	(10, '2025-01-13 08:56:57+00', 'English', 'Erika Melek Delgado', 'desmond-tutu-364'),
	(11, '2025-01-13 08:57:36+00', 'Zulu', 'Erika Melek Delgado', 'desmond-tutu-364');


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
	(49, '2024-03-31 21:14:56.467461+00', 'james-mill-171', 'society-for-the-diffusion-of-useful-knowledge-46', 'Gillian Lamb'),
	(51, '2024-08-15 12:10:06+00', 'george-henry-law-182', 'charterhouse-11', 'Arin Edwards'),
	(52, '2024-08-15 12:10:35+00', 'george-henry-law-182', 'pembroke-college-59', 'Arin Edwards'),
	(53, '2024-08-15 14:03:09+00', 'george-henry-law-182', 'queen-annes-bounty-60', 'Arin Edwards'),
	(54, '2024-08-15 14:26:27+00', 'george-henry-law-182', 'wells-theological-college-62', 'Arin Edwards'),
	(55, '2024-08-15 14:26:48+00', 'george-henry-law-182', 'society-of-antiquaries-of-london-61', 'Arin Edwards'),
	(56, '2024-08-15 14:27:19+00', 'george-henry-law-182', 'royal-society-dining-club-20', 'Arin Edwards'),
	(57, '2024-08-15 16:40:17+00', 'george-james-cholmondeley-190', 'eton-college-4', 'Arin Edwards'),
	(58, '2024-08-15 18:23:33+00', 'henry-bathurst-193', 'winchester-college-63', 'Arin Edwards'),
	(59, '2024-08-15 20:25:20+00', 'henry-bathurst-193', 'new-college-oxford-64', 'Arin Edwards'),
	(60, '2024-08-15 20:48:54+00', 'henry-handley-norris-194', 'pembroke-college-59', 'Arin Edwards'),
	(61, '2024-08-15 21:06:50+00', 'henry-hugh-hoare-195', 'harrow-16', 'Arin Edwards'),
	(62, '2024-08-16 10:41:52+00', 'henry-handley-norris-194', 'dr-newcomes-school-65', 'Arin Edwards'),
	(50, '2024-08-12 12:28:22+00', 'arthur-angelo-174', '74th-highland-foot-50', 'Jonah Miller'),
	(63, '2024-08-16 13:06:41+00', 'arthur-angelo-174', 'department-of-military-science-kings-college-london-48', 'Jonah Miller'),
	(64, '2024-08-16 14:26:07+00', 'william-roger-snow-196', 'department-of-military-science-kings-college-london-48', 'Jonah Miller'),
	(65, '2024-08-16 14:28:09+00', 'william-roger-snow-196', 'british-army-commissariat-staff-corps-66', 'Jonah Miller'),
	(66, '2024-08-16 15:06:01+00', 'edmund-staveley-197', 'royal-artillery-67', 'Jonah Miller'),
	(67, '2024-08-16 15:27:32+00', 'charles-doyne-anderson-straker-198', 'department-of-military-science-kings-college-london-48', 'Jonah Miller'),
	(68, '2024-08-16 15:30:54+00', 'charles-doyne-anderson-straker-198', 'madras-artillery-68', 'Jonah Miller'),
	(69, '2024-08-16 15:31:18+00', 'charles-doyne-anderson-straker-198', 'royal-artillery-67', 'Jonah Miller'),
	(70, '2024-08-16 15:46:19+00', 'roger-swire-199', 'department-of-military-science-kings-college-london-48', 'Jonah Miller'),
	(71, '2024-08-19 10:57:46+00', 'henry-bathurst-193', 'whigs-70', 'Arin Edwards'),
	(72, '2024-08-19 10:57:46+00', 'henry-bathurst-193', 'whigs-70', 'Arin Edwards'),
	(73, '2024-08-19 11:46:12+00', 'henry-handley-norris-194', 'hackney-phalanx-of-high-church-men-12', 'Arin Edwards'),
	(74, '2024-08-19 11:46:24+00', 'charles-lloyd-212', 'hackney-phalanx-of-high-church-men-12', 'Arin Edwards'),
	(75, '2024-08-19 19:20:42+00', 'henry-handley-norris-194', 'hackney-phalanx-of-high-church-men-12', 'Arin Edwards'),
	(76, '2024-08-19 19:31:29+00', 'henry-handley-norris-194', 'national-society-for-promoting-religious-education-71', 'Arin Edwards'),
	(77, '2024-08-19 19:37:08+00', 'henry-handley-norris-194', 'society-for-the-propagation-of-the-gospel-72', 'Arin Edwards'),
	(78, '2024-08-19 19:40:52+00', 'henry-handley-norris-194', 'society-for-promoting-christian-knowledge-73', 'Arin Edwards'),
	(79, '2024-08-19 19:57:05+00', 'henry-handley-norris-194', 'association-of-friends-of-the-church-74', 'Arin Edwards'),
	(80, '2024-08-19 20:01:20+00', 'henry-handley-norris-194', 'the-british-critic-75', 'Arin Edwards'),
	(81, '2024-08-19 20:08:03+00', 'henry-hugh-hoare-195', 'the-additional-curates-society-76', 'Arin Edwards'),
	(82, '2024-08-19 20:08:34+00', 'henry-hugh-hoare-195', 'royal-society-dining-club-20', 'Arin Edwards'),
	(83, '2024-08-19 20:09:14+00', 'henry-hugh-hoare-195', 'society-for-the-propagation-of-the-gospel-72', 'Arin Edwards'),
	(84, '2024-08-19 20:09:33+00', 'henry-hugh-hoare-195', 'hoares-bank-77', 'Arin Edwards'),
	(85, '2024-08-19 20:59:39.914027+00', 'charles-james-blomfield-179', 'society-for-the-promotion-of-christian-knowledge-78', 'Im Chiew Ng'),
	(86, '2024-08-20 14:15:14.964836+00', 'duke-of-wellington-137', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(87, '2024-08-20 14:15:38.133608+00', 'duke-of-wellington-137', 'athaneum-24', 'Ariunzaya Batkhuyag'),
	(88, '2024-08-20 14:16:11.864719+00', 'duke-of-wellington-137', 'diocesan-school-at-trim-79', 'Ariunzaya Batkhuyag'),
	(89, '2024-08-20 14:16:29.557388+00', 'duke-of-wellington-137', 'city-of-london-club-81', 'Ariunzaya Batkhuyag'),
	(90, '2024-08-20 14:16:45.843387+00', 'duke-of-wellington-137', 'browns-seminary-chelsea-80', 'Ariunzaya Batkhuyag'),
	(91, '2024-08-20 14:17:07.546132+00', 'duke-of-wellington-137', 'the-carlton-club-82', 'Ariunzaya Batkhuyag'),
	(92, '2024-08-20 14:17:30.048058+00', 'duke-of-wellington-137', 'the-oriental-club-83', 'Ariunzaya Batkhuyag'),
	(93, '2024-08-20 14:17:47.605924+00', 'duke-of-wellington-137', 'whites-84', 'Ariunzaya Batkhuyag'),
	(94, '2024-08-20 16:48:21.333451+00', 'patrick-bell-186', 'highland-and-agricultural-society-85', 'Ariunzaya Batkhuyag'),
	(95, '2024-08-20 16:55:16.68179+00', 'patrick-bell-186', 'university-of-st-andrews-86', 'Ariunzaya Batkhuyag'),
	(96, '2024-08-20 17:10:49.34702+00', 'bowyer-edward-sparke-187', 'royal-society-87', 'Ariunzaya Batkhuyag'),
	(98, '2024-08-20 17:25:23.610959+00', 'c-m-sutton-188', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(99, '2024-08-20 17:25:43.703808+00', 'c-m-sutton-188', 'trinity-college-cambridge-6', 'Ariunzaya Batkhuyag'),
	(100, '2024-08-20 17:28:28.226963+00', 'charles-r-sumner-189', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(101, '2024-08-20 17:28:46.942288+00', 'charles-r-sumner-189', 'trinity-college-cambridge-6', 'Ariunzaya Batkhuyag'),
	(103, '2024-08-20 18:27:28.62633+00', 'charles-r-sumner-189', 'surrey-church-association-90', 'Ariunzaya Batkhuyag'),
	(102, '2024-08-20 18:27:04.445773+00', 'charles-r-sumner-189', 'speculative-society-89', 'Ariunzaya Batkhuyag'),
	(104, '2024-08-20 18:47:54.234112+00', 'bowyer-edward-sparke-187', 'pembroke-college-59', 'Ariunzaya Batkhuyag'),
	(105, '2024-08-20 18:48:27.214618+00', 'henry-william-majendie-245', 'charterhouse-11', 'Ariunzaya Batkhuyag'),
	(106, '2024-08-20 18:50:44.904675+00', 'henry-william-majendie-245', 'christs-college-cambridge-92', 'Ariunzaya Batkhuyag'),
	(107, '2024-08-21 08:41:17.083808+00', 'henry-ryder-251', 'society-for-promoting-christian-knowledge-38', 'Im Chiew Ng'),
	(108, '2024-08-21 08:41:47.802294+00', 'charles-manners-sutton-dec-180', 'hackney-phalanx-of-high-church-men-12', 'Im Chiew Ng'),
	(109, '2024-08-26 11:53:18.680042+00', 'george-bannister-175', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(110, '2024-08-26 11:55:02.228934+00', 'george-bannister-175', '16th-regiment-bombay-native-infantry-51', 'Im Chiew Ng'),
	(111, '2024-08-26 12:00:19.938192+00', 'william-barr-176', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(112, '2024-08-26 12:00:56.011351+00', 'julius-barras-177', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(113, '2024-08-26 12:03:57.734335+00', 'william-barr-176', '53rd-foot-53', 'Im Chiew Ng'),
	(114, '2024-08-26 12:04:25.62601+00', 'julius-barras-177', '15th-regiment-native-infantry-56', 'Im Chiew Ng'),
	(115, '2024-08-26 12:04:47.638984+00', 'william-barr-176', '48th-foot-54', 'Im Chiew Ng'),
	(116, '2024-08-26 12:05:09.196127+00', 'william-barr-176', '15th-foot-pay-department-55', 'Im Chiew Ng'),
	(117, '2024-08-26 12:05:24.246375+00', 'julius-barras-177', 'bombay-staff-corps-52', 'Im Chiew Ng'),
	(118, '2024-08-26 12:16:42.236232+00', 'john-b-barker-255', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(119, '2024-08-26 12:16:57.21665+00', 'edward-bell-256', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(120, '2024-08-26 12:17:15.894864+00', 'robert-bennett-257', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(121, '2024-08-26 12:17:35.137235+00', 'james-c-berkeley-258', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(122, '2024-08-26 12:17:58.850619+00', 'robert-berkeley-259', 'department-of-military-science-kings-college-london-48', 'Im Chiew Ng'),
	(123, '2024-08-26 12:23:17.792054+00', 'john-b-barker-255', '5th-foot-fusiliers-93', 'Im Chiew Ng'),
	(124, '2024-08-26 12:23:32.230734+00', 'john-b-barker-255', '75th-foot-94', 'Im Chiew Ng'),
	(125, '2024-08-26 12:23:47.518006+00', 'john-b-barker-255', 'royal-denbigh-militia-95', 'Im Chiew Ng'),
	(126, '2024-08-26 12:25:48.831171+00', 'robert-bennett-257', '63rd-foot-96', 'Im Chiew Ng'),
	(127, '2024-08-26 12:26:01.795396+00', 'robert-bennett-257', '13th-defence-battalion-97', 'Im Chiew Ng'),
	(128, '2024-08-26 12:26:18.02881+00', 'robert-bennett-257', '46th-foot-98', 'Im Chiew Ng'),
	(129, '2024-08-26 12:26:30.617677+00', 'robert-bennett-257', '27th-regimental-district-99', 'Im Chiew Ng'),
	(130, '2024-08-26 12:26:42.967509+00', 'robert-bennett-257', 'depot-battalion-100', 'Im Chiew Ng'),
	(131, '2024-08-26 12:28:22.688017+00', 'james-c-berkeley-258', '48th-madras-native-industry-101', 'Im Chiew Ng'),
	(132, '2024-08-26 12:28:37.386183+00', 'james-c-berkeley-258', 'madras-staff-corps-102', 'Im Chiew Ng'),
	(133, '2024-08-26 12:29:23.181829+00', 'robert-berkeley-259', '29th-regiment-of-braemar-103', 'Im Chiew Ng'),
	(134, '2024-08-26 14:28:20+00', 'comyn-ching-254', '22nd-kent-rifle-volunteer-corps-104', 'Arin Edwards'),
	(135, '2024-08-26 20:44:51.128646+00', 'joseph-hf-blyth-262', '67th-foot-105', 'Im Chiew Ng'),
	(136, '2024-08-26 20:45:06.140735+00', 'joseph-hf-blyth-262', 'connaught-rangers-106', 'Im Chiew Ng'),
	(137, '2024-08-26 20:45:44.095083+00', 'joshua-j-bowness-266', '89th-foot-107', 'Im Chiew Ng'),
	(138, '2024-08-26 20:46:02.641003+00', 'joshua-j-bowness-266', '86th-foot-108', 'Im Chiew Ng'),
	(139, '2024-08-26 20:46:18.258607+00', 'joshua-j-bowness-266', '7th-foot-109', 'Im Chiew Ng'),
	(140, '2024-08-26 20:46:41.881467+00', 'george-nj-bradford-267', '8th-foot-110', 'Im Chiew Ng'),
	(141, '2024-08-26 20:46:57.636154+00', 'john-d-bradley-268', '14th-foot-111', 'Im Chiew Ng'),
	(142, '2024-08-26 20:47:11.808527+00', 'john-d-bradley-268', '49th-foot-112', 'Im Chiew Ng'),
	(143, '2024-08-26 20:47:23.684979+00', 'william-hay-chapman-270', '63rd-foot-113', 'Im Chiew Ng'),
	(144, '2024-08-27 09:08:07+00', 'arthur-manning-tuck-271', 'department-of-military-science-kings-college-london-48', 'Jonah Miller'),
	(145, '2024-08-27 09:13:22+00', 'arthur-manning-tuck-271', '36th-herefordshire-foot-114', 'Jonah Miller'),
	(146, '2024-08-27 09:26:48+00', 'granville-waddilove-273', 'department-of-military-science-kings-college-london-48', 'Jonah Miller'),
	(147, '2024-08-27 09:30:12+00', 'granville-waddilove-273', '47th-lancashire-foot-115', 'Jonah Miller'),
	(148, '2024-08-29 17:02:44+00', 'comyn-ching-254', '22nd-kent-rifle-volunteer-corps-104', 'Arin Edwards'),
	(149, '2024-09-01 15:28:08+00', 'richard-w-cradock-274', '17th-regiment-116', 'Arin Edwards'),
	(150, '2024-09-01 15:29:49+00', 'richard-w-cradock-274', 'east-york-regiment-of-militia-117', 'Arin Edwards'),
	(151, '2024-09-01 15:30:10+00', 'richard-w-cradock-274', '5th-batallion-royal-munster-fusiliers-118', 'Arin Edwards'),
	(152, '2024-09-01 15:31:08+00', 'charles-fw-cuffe-275', '66th-berkshire-foot-regiment-119', 'Arin Edwards'),
	(153, '2024-09-02 12:40:13+00', 'j-des-barres-277', 'royal-horse-artillery-120', 'Arin Edwards'),
	(154, '2024-09-06 22:43:08+00', 'hugh-percy-278', 'eton-college-4', 'Arin Edwards'),
	(155, '2024-09-06 22:43:37+00', 'hugh-percy-278', 'st-johns-cambridge-5', 'Arin Edwards'),
	(156, '2024-09-06 22:44:37+00', 'hugh-percy-278', 'kings-college-london-47', 'Arin Edwards'),
	(158, '2024-09-11 14:15:14.801991+00', 'john-george-de-la-poer-beresford-280', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(159, '2024-09-11 14:18:23.071801+00', 'john-george-de-la-poer-beresford-280', 'christ-church-oxford-124', 'Ariunzaya Batkhuyag'),
	(160, '2024-09-11 14:30:11.441328+00', 'john-george-de-la-poer-beresford-280', 'church-education-society-125', 'Ariunzaya Batkhuyag'),
	(161, '2024-09-11 14:30:30.356871+00', 'john-george-de-la-poer-beresford-280', 'church-of-irelands-riposte-to-the-state-national-schools-126', 'Ariunzaya Batkhuyag'),
	(162, '2024-09-11 14:40:48.720457+00', 'john-banks-jenkinson-285', 'christ-church-oxford-124', 'Ariunzaya Batkhuyag'),
	(163, '2024-09-11 14:43:39.547777+00', 'john-banks-jenkinson-285', 'winchester-college-63', 'Ariunzaya Batkhuyag'),
	(164, '2024-09-11 14:52:37.182788+00', 'earl-brownlow-287', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(165, '2024-09-11 14:53:07.468849+00', 'earl-brownlow-287', 'trinity-college-cambridge-6', 'Ariunzaya Batkhuyag'),
	(166, '2024-09-11 14:54:58.67+00', 'earl-brownlow-287', 'royal-society-87', 'Ariunzaya Batkhuyag'),
	(167, '2024-09-11 15:09:41.579743+00', 'john-ireland-290', 'ashburton-grammar-127', 'Ariunzaya Batkhuyag'),
	(168, '2024-09-11 15:10:01.011822+00', 'john-ireland-290', 'oriel-college-oxford-128', 'Ariunzaya Batkhuyag'),
	(169, '2024-09-11 15:17:05.032273+00', 'john-kaye-292', 'christs-college-cambridge-92', 'Ariunzaya Batkhuyag'),
	(170, '2024-09-11 15:18:55.59892+00', 'john-kaye-292', 'royal-society-87', 'Ariunzaya Batkhuyag'),
	(171, '2024-09-11 15:31:08.424347+00', 'john-luxmoore-293', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(172, '2024-09-11 15:34:09.620216+00', 'john-luxmoore-293', 'kings-college-cambridge-129', 'Ariunzaya Batkhuyag'),
	(173, '2024-09-11 15:47:03.386412+00', 'john-manners-233', 'new-college-oxford-64', 'Ariunzaya Batkhuyag'),
	(174, '2024-09-11 16:04:05.146309+00', 'lord-kenyon-296', 'christ-church-oxford-124', 'Ariunzaya Batkhuyag'),
	(175, '2024-09-12 10:53:57.876732+00', 'marquess-of-bristol-298', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(176, '2024-09-12 10:54:39.619961+00', 'marquess-of-bristol-298', 'st-johns-cambridge-5', 'Ariunzaya Batkhuyag'),
	(177, '2024-09-12 11:14:59.264686+00', 'lord-rolle-300', 'winchester-college-63', 'Ariunzaya Batkhuyag'),
	(178, '2024-09-12 11:18:08.004306+00', 'lord-rolle-300', 'emmanuel-college-cambridge-130', 'Ariunzaya Batkhuyag'),
	(179, '2024-09-12 11:37:13.103806+00', 'lord-crewe-304', 'whigs-70', 'Ariunzaya Batkhuyag'),
	(180, '2024-09-12 11:44:53.188041+00', 'lord-crewe-304', 'westminster-school-131', 'Ariunzaya Batkhuyag'),
	(181, '2024-09-12 11:45:32.069075+00', 'lord-crewe-304', 'christ-church-oxford-124', 'Ariunzaya Batkhuyag'),
	(182, '2024-09-12 11:52:34.086609+00', 'lord-crewe-304', 'almacks-132', 'Ariunzaya Batkhuyag'),
	(183, '2024-09-12 11:53:06.731286+00', 'lord-crewe-304', 'brooks-133', 'Ariunzaya Batkhuyag'),
	(184, '2024-09-12 11:53:39.12578+00', 'lord-crewe-304', 'boodles-134', 'Ariunzaya Batkhuyag'),
	(185, '2024-09-21 16:12:13.634409+00', 'john-crichton-stuart-311', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(186, '2024-09-21 16:13:00.039053+00', 'john-crichton-stuart-311', 'christs-college-cambridge-92', 'Ariunzaya Batkhuyag'),
	(187, '2024-09-21 16:38:46.804085+00', 'george-horatio-cholmondeley-315', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(188, '2024-09-21 17:07:55.777277+00', 'richard-bagot-323', 'christ-church-oxford-124', 'Ariunzaya Batkhuyag'),
	(189, '2024-09-21 18:10:18.953992+00', 'richard-bagot-323', 'rugby-school-135', 'Ariunzaya Batkhuyag'),
	(190, '2024-09-21 18:20:31.422942+00', 'richard-prosser-324', 'balliol-college-oxford-136', 'Ariunzaya Batkhuyag'),
	(191, '2024-09-22 14:44:27.282097+00', 'robert-james-carr-328', 'worcester-college-oxford-19', 'Ariunzaya Batkhuyag'),
	(192, '2024-09-22 14:58:10.365173+00', 'sir-robert-peel-138', 'harrow-16', 'Ariunzaya Batkhuyag'),
	(193, '2024-09-22 14:59:14.931809+00', 'sir-robert-peel-138', 'christ-church-oxford-124', 'Ariunzaya Batkhuyag'),
	(194, '2024-09-22 15:03:00.755256+00', 'sir-robert-peel-138', 'athaneum-24', 'Ariunzaya Batkhuyag'),
	(195, '2024-09-22 15:03:47.846005+00', 'sir-robert-peel-138', 'city-of-london-club-81', 'Ariunzaya Batkhuyag'),
	(196, '2024-09-22 15:04:32.913557+00', 'sir-robert-peel-138', 'the-carlton-club-82', 'Ariunzaya Batkhuyag'),
	(197, '2024-09-22 15:05:08.220883+00', 'sir-robert-peel-138', 'whites-84', 'Ariunzaya Batkhuyag'),
	(198, '2024-09-22 15:22:32.881304+00', 'thomas-burgess-334', 'winchester-college-63', 'Ariunzaya Batkhuyag'),
	(199, '2024-09-22 15:23:32.486745+00', 'thomas-burgess-334', 'corpus-christi-oxford-137', 'Ariunzaya Batkhuyag'),
	(200, '2024-09-22 15:55:20.719965+00', 'thomas-burgess-334', 'british-and-foreign-bible-society-33', 'Ariunzaya Batkhuyag'),
	(201, '2024-09-22 16:00:49.047058+00', 'thomas-burgess-334', 'london-society-for-promoting-christianity-amongst-the-jews-138', 'Ariunzaya Batkhuyag'),
	(202, '2024-09-22 16:03:34.506689+00', 'thomas-burgess-334', 'royal-society-of-literature-139', 'Ariunzaya Batkhuyag'),
	(203, '2024-09-22 16:05:37.944408+00', 'thomas-burgess-334', 'the-church-missionary-society-140', 'Ariunzaya Batkhuyag'),
	(204, '2024-09-22 16:12:33.864173+00', 'walter-francis-montagu-douglas-scott-337', 'eton-college-4', 'Ariunzaya Batkhuyag'),
	(205, '2024-09-22 16:13:05.482693+00', 'walter-francis-montagu-douglas-scott-337', 'st-johns-cambridge-5', 'Ariunzaya Batkhuyag'),
	(206, '2024-09-22 16:13:49.452298+00', 'walter-francis-montagu-douglas-scott-337', 'highland-and-agricultural-society-85', 'Ariunzaya Batkhuyag'),
	(207, '2024-09-22 16:19:21.796507+00', 'william-carey-338', 'christ-church-oxford-124', 'Ariunzaya Batkhuyag'),
	(208, '2024-09-22 16:21:24.295611+00', 'william-carey-338', 'westminster-school-131', 'Ariunzaya Batkhuyag'),
	(209, '2024-09-22 16:25:03.831974+00', 'william-carey-338', 'royal-military-asylum-141', 'Ariunzaya Batkhuyag'),
	(210, '2024-09-23 10:42:03.561259+00', 'william-howley-342', 'winchester-college-63', 'Ariunzaya Batkhuyag'),
	(211, '2024-09-23 10:43:04.502441+00', 'william-howley-342', 'new-college-oxford-64', 'Ariunzaya Batkhuyag'),
	(212, '2024-09-23 11:11:51.624405+00', 'william-howley-342', 'church-building-commissioners-142', 'Ariunzaya Batkhuyag'),
	(213, '2024-09-23 13:14:06.396208+00', 'william-howley-342', 'hackney-phalanx-of-high-church-men-12', 'Ariunzaya Batkhuyag'),
	(214, '2024-09-23 13:15:03.024429+00', 'william-howley-342', 'incorporated-church-building-society-45', 'Ariunzaya Batkhuyag'),
	(215, '2024-09-23 13:15:37.845675+00', 'william-howley-342', 'national-society-for-promoting-the-education-of-the-poor-in-the-principles-of-the-established-church-143', 'Ariunzaya Batkhuyag'),
	(216, '2024-09-23 13:15:58.48773+00', 'william-howley-342', 'nobodys-friends-144', 'Ariunzaya Batkhuyag'),
	(217, '2024-09-23 13:16:39.998682+00', 'william-howley-342', 'society-for-promoting-christian-knowledge-38', 'Ariunzaya Batkhuyag'),
	(218, '2024-09-23 15:24:08.988063+00', 'william-van-mildert-348', 'st-saviors-school-southwark-145', 'Ariunzaya Batkhuyag'),
	(219, '2024-09-23 15:24:41.635358+00', 'william-van-mildert-348', 'the-queens-college-oxford-37', 'Ariunzaya Batkhuyag'),
	(220, '2024-09-23 15:25:20.202218+00', 'william-van-mildert-348', 'the-british-critic-75', 'Ariunzaya Batkhuyag'),
	(221, '2024-09-23 15:25:55.473824+00', 'william-van-mildert-348', 'incorporated-church-building-society-45', 'Ariunzaya Batkhuyag'),
	(222, '2024-09-23 15:26:28.749576+00', 'william-van-mildert-348', 'hackney-phalanx-of-high-church-men-12', 'Ariunzaya Batkhuyag'),
	(223, '2024-09-23 15:27:55.709601+00', 'william-van-mildert-348', 'nobodys-friends-144', 'Ariunzaya Batkhuyag'),
	(224, '2024-09-23 15:28:24.226183+00', 'william-van-mildert-348', 'society-for-promoting-christian-knowledge-38', 'Ariunzaya Batkhuyag'),
	(225, '2024-09-23 16:10:57.407455+00', 'john-kaye-292', 'hackney-phalanx-of-high-church-men-12', 'Ariunzaya Batkhuyag'),
	(226, '2024-09-23 16:11:40.135445+00', 'john-kaye-292', 'society-for-promoting-christian-knowledge-38', 'Ariunzaya Batkhuyag'),
	(227, '2024-09-23 16:19:10.972626+00', 'john-kaye-292', 'national-society-for-propagation-of-the-gospel-44', 'Ariunzaya Batkhuyag'),
	(228, '2024-09-23 16:33:09.239987+00', 'joshua-watson-303', 'queen-annes-bounty-60', 'Ariunzaya Batkhuyag'),
	(229, '2024-09-23 16:34:01.320257+00', 'joshua-watson-303', 'hackney-phalanx-of-high-church-men-12', 'Ariunzaya Batkhuyag'),
	(230, '2024-09-23 16:34:31.91202+00', 'joshua-watson-303', 'nobodys-friends-144', 'Ariunzaya Batkhuyag'),
	(231, '2024-09-23 16:35:33.969943+00', 'joshua-watson-303', 'national-society-for-promoting-the-education-of-the-poor-in-the-principles-of-the-established-church-143', 'Ariunzaya Batkhuyag'),
	(232, '2024-09-23 16:37:21.798088+00', 'joshua-watson-303', 'society-for-promoting-christian-knowledge-38', 'Ariunzaya Batkhuyag');


--
-- Data for Name: person_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_moment" ("id", "created_at", "person", "moment", "added_by") VALUES
	(109, '2024-10-15 20:15:46+00', 'tomas-garrigue-masaryk-360', '9 - 1919: Crises of Empire', 'Erika Melek Delgado'),
	(13, '2024-08-12 12:40:31+00', 'arthur-angelo-174', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(15, '2024-08-16 14:28:40+00', 'william-roger-snow-196', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(16, '2024-08-16 15:06:25+00', 'edmund-staveley-197', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(17, '2024-08-16 15:28:07+00', 'charles-doyne-anderson-straker-198', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(18, '2024-08-16 15:46:47+00', 'roger-swire-199', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(53, '2024-08-26 11:53:39.326714+00', 'george-bannister-175', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(54, '2024-08-26 12:01:41.918802+00', 'julius-barras-177', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(55, '2024-08-26 12:02:01.743564+00', 'william-barr-176', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(56, '2024-08-26 12:13:10+00', 'comyn-ching-254', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(57, '2024-08-26 12:18:36.922187+00', 'john-b-barker-255', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(58, '2024-08-26 12:18:49.391023+00', 'edward-bell-256', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(59, '2024-08-26 12:19:00.287698+00', 'robert-bennett-257', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(60, '2024-08-26 12:19:12.585199+00', 'james-c-berkeley-258', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(61, '2024-08-26 12:19:24.154898+00', 'robert-berkeley-259', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(62, '2024-08-26 20:12:11.459049+00', 'george-blewitt-260', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(63, '2024-08-26 20:12:27.42715+00', 'arthur-cecil-blunt-261', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(64, '2024-08-26 20:12:42.499904+00', 'joseph-hf-blyth-262', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(65, '2024-08-26 20:13:01.97592+00', 'joshua-j-bowness-266', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(66, '2024-08-26 20:13:16.700503+00', 'george-nj-bradford-267', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(67, '2024-08-26 20:13:29.925286+00', 'john-d-bradley-268', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(68, '2024-08-26 20:13:41.53296+00', 'george-r-byron-269', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(69, '2024-08-26 20:13:55.871355+00', 'william-hay-chapman-270', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Im Chiew Ng'),
	(70, '2024-08-27 09:09:14+00', 'arthur-manning-tuck-271', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(71, '2024-08-27 09:27:29+00', 'granville-waddilove-273', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Jonah Miller'),
	(72, '2024-08-29 18:00:56+00', 'richard-w-cradock-274', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(73, '2024-08-29 18:06:09+00', 'charles-fw-cuffe-275', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(74, '2024-09-02 09:44:23+00', 'john-tindal-de-veulle-276', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(75, '2024-09-07 13:32:31+00', 'j-des-barres-277', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(76, '2024-09-12 11:33:59+00', 'thomas-wc-dickinson-299', '4- 1857: War, nineteenth-century empire and Conservative empire', 'Arin Edwards'),
	(1, '2024-03-21 11:14:44.002332+00', 'richard-edward-arden-2', '2- 1828: The financial and political networks which created King''s', NULL),
	(2, '2024-03-21 11:14:57.085739+00', 'lord-arden-1', '2- 1828: The financial and political networks which created King''s', NULL),
	(3, '2024-03-21 11:15:45.037152+00', 'lancelot-shadwell-102', '2- 1828: The financial and political networks which created King''s', NULL),
	(4, '2024-03-21 11:15:59.983757+00', 'nicholas-conyngham-tyndal-103', '2- 1828: The financial and political networks which created King''s', NULL),
	(5, '2024-03-21 11:16:11.860682+00', 'william-astell-104', '2- 1828: The financial and political networks which created King''s', NULL),
	(6, '2024-03-21 11:16:35.570322+00', 'john-atkins-105', '2- 1828: The financial and political networks which created King''s', NULL),
	(7, '2024-03-21 11:16:47.731123+00', 'christopher-benson-106', '2- 1828: The financial and political networks which created King''s', NULL),
	(8, '2024-03-21 11:17:05.150608+00', 'benjamin-collins-brodie-107', '2- 1828: The financial and political networks which created King''s', NULL),
	(9, '2024-03-21 11:17:18.359446+00', 'archdeacon-cambridge-108', '2- 1828: The financial and political networks which created King''s', NULL),
	(10, '2024-03-21 11:17:33.665058+00', 'astley-p-cooper-109', '2- 1828: The financial and political networks which created King''s', NULL),
	(11, '2024-03-21 11:18:20.896402+00', 'george-doyley-111', '2- 1828: The financial and political networks which created King''s', NULL),
	(12, '2024-06-27 15:04:53.298043+00', 'william-cotton-160', '2- 1828: The financial and political networks which created King''s', NULL),
	(14, '2024-08-16 13:05:42.130128+00', 'duke-of-wellington-137', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(19, '2024-08-20 16:56:04.454744+00', 'patrick-bell-186', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(20, '2024-08-20 18:55:19.40531+00', 'bowyer-edward-sparke-187', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(21, '2024-08-20 18:55:37.064057+00', 'c-m-sutton-188', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(22, '2024-08-20 18:55:57.913233+00', 'charles-r-sumner-189', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(23, '2024-08-20 18:56:15.972494+00', 'henry-william-majendie-245', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(24, '2024-08-21 17:47:16+00', 'jane-adeane-184', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(25, '2024-08-21 17:47:43+00', 'george-henry-law-182', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(26, '2024-08-21 17:48:07+00', 'george-james-cholmondeley-190', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(27, '2024-08-21 17:48:57+00', 'lady-georgiana-charlotte-bertie-191', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(28, '2024-08-21 17:49:28+00', 'henry-bathurst-193', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(29, '2024-08-21 17:52:51+00', 'henry-handley-norris-194', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(30, '2024-08-21 17:53:16+00', 'henry-hugh-hoare-195', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(31, '2024-08-21 17:56:42+00', 'grace-coote-200', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(32, '2024-08-21 17:57:24+00', 'catherine-henrietta-201', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(33, '2024-08-21 17:57:55+00', 'maria-palmer-acland-202', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(34, '2024-08-21 17:58:18+00', 'isaac-milner-203', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(35, '2024-08-21 17:58:49+00', 'edward-law-204', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(36, '2024-08-21 17:59:16+00', 'gertrude-mahon-206', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(37, '2024-08-21 17:59:45+00', 'grace-dalrymple-elliott-207', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(38, '2024-08-21 18:00:01+00', 'edward-smith-stanley-208', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(39, '2024-08-21 18:00:30+00', 'george-vancouver-209', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(40, '2024-08-21 18:00:58+00', 'thomas-coke-of-holkham-210', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(41, '2024-08-21 18:01:14+00', 'richard-prosser-211', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(42, '2024-08-21 18:10:36+00', 'charles-lloyd-212', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(43, '2024-08-21 18:10:59+00', 'john-henry-hobart-213', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(44, '2024-08-21 18:11:34+00', 'john-henry-hobart-213', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(45, '2024-08-21 18:12:05+00', 'john-jebb-214', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(46, '2024-08-21 18:12:35+00', 'charles-james-blomfield-215', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(47, '2024-08-21 18:12:56+00', 'lord-liverpool-216', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(48, '2024-08-21 18:13:21+00', 'dr-hawks-217', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(49, '2024-08-21 18:13:48+00', 'thomas-mozley-218', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(50, '2024-08-21 18:14:07+00', 'thomas-willement-219', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(51, '2024-08-21 18:14:32+00', 'lord-charles-fitzroy-220', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(52, '2024-08-21 18:14:48+00', 'george-elphinstone-keith-221', '2- 1828: The financial and political networks which created King''s', 'Arin Edwards'),
	(77, '2024-09-13 13:04:40.737705+00', 'john-george-de-la-poer-beresford-280', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(78, '2024-09-13 13:09:32.301711+00', 'sir-james-bart-langham-284', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(79, '2024-09-13 13:13:10.901254+00', 'john-banks-jenkinson-285', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(80, '2024-09-13 13:17:39.986446+00', 'earl-brownlow-287', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(81, '2024-09-13 13:26:43.826366+00', 'john-ireland-290', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(82, '2024-09-13 13:30:37.951826+00', 'john-kaye-292', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(83, '2024-09-13 13:36:12.089413+00', 'john-luxmoore-293', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(84, '2024-09-13 13:42:36.164114+00', 'john-manners-233', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(85, '2024-09-13 13:53:38.405177+00', 'joshua-watson-303', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(86, '2024-09-13 13:57:07.981848+00', 'lord-crewe-304', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(87, '2024-09-13 14:02:07.651282+00', 'lord-kenyon-296', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(88, '2024-09-13 14:06:40.429769+00', 'lord-rolle-300', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(89, '2024-09-13 14:11:54.591931+00', 'marquess-of-bristol-298', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(90, '2024-09-21 16:07:04.017931+00', 'john-crichton-stuart-311', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(91, '2024-09-21 16:38:04.822757+00', 'george-horatio-cholmondeley-315', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(92, '2024-09-21 18:16:39.325952+00', 'elisabeth-sophia-lawrence-319', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(93, '2024-09-21 18:16:58.964097+00', 'richard-fountayne-wilson-320', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(94, '2024-09-21 18:17:13.940169+00', 'richard-bagot-323', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(95, '2024-09-21 18:17:30.276645+00', 'richard-prosser-324', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(96, '2024-09-21 18:32:52.371316+00', 'richard-william-penn-curzon-howe-326', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(97, '2024-09-22 14:49:07.721606+00', 'robert-james-carr-328', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(98, '2024-09-22 14:56:20.786043+00', 'sir-robert-peel-138', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(99, '2024-09-22 15:26:40.527299+00', 'thomas-burgess-334', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(100, '2024-09-22 16:09:15.554186+00', 'walter-francis-montagu-douglas-scott-337', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(101, '2024-09-22 16:17:22.526401+00', 'william-carey-338', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(102, '2024-09-23 10:38:31.203129+00', 'william-howley-342', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(103, '2024-09-23 13:20:25.809432+00', 'william-van-mildert-348', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(104, '2024-09-23 15:47:12.922818+00', 'thomas-sikes-351', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(105, '2024-09-23 15:48:18.854344+00', 'rev-dr-richards-352', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(106, '2024-09-23 15:50:21.272284+00', 'messrs-drummonds-353', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(107, '2024-09-23 15:51:13.264262+00', 'messrs-hoares-354', '2- 1828: The financial and political networks which created King''s', 'Ariunzaya Batkhuyag'),
	(108, '2024-09-23 15:52:52.3247+00', 'rev-j-m-rogers-355', '2- 1828: The financial and political networks which created King''s', NULL);


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
	(19, 'william-cotton-160', 'Financial', '2024-03-21 11:42:57.81037+00', 'Gillian Lamb'),
	(20, 'charles-james-blomfield-179', 'Cleric', '2024-08-14 21:27:25.383905+00', 'Im Chiew Ng'),
	(21, 'charles-manners-sutton-dec-180', 'Cleric', '2024-08-14 21:36:46.999947+00', 'Im Chiew Ng'),
	(22, 'edward-copleston-181', 'Cleric', '2024-08-14 21:39:40.734161+00', 'Im Chiew Ng'),
	(23, 'george-henry-law-182', 'Cleric', '2024-08-15 10:53:54+00', 'Arin Edwards'),
	(24, 'edward-venables-vernon-183', 'Cleric', '2024-08-15 12:09:35.263526+00', 'Im Chiew Ng'),
	(25, 'george-james-cholmondeley-190', 'Politician', '2024-08-15 16:39:25+00', 'Arin Edwards'),
	(26, 'george-james-cholmondeley-190', 'Noble', '2024-08-15 16:39:50+00', 'Arin Edwards'),
	(27, 'henry-bathurst-193', 'Cleric', '2024-08-15 18:20:20+00', 'Arin Edwards'),
	(28, 'henry-bathurst-193', 'Politician', '2024-08-15 18:21:00+00', 'Arin Edwards'),
	(29, 'henry-handley-norris-194', 'Cleric', '2024-08-15 20:47:08+00', 'Arin Edwards'),
	(30, 'henry-handley-norris-194', 'Philanthropist', '2024-08-15 20:47:41+00', 'Arin Edwards'),
	(31, 'henry-hugh-hoare-195', 'Banker', '2024-08-15 21:06:19+00', 'Arin Edwards'),
	(32, 'arthur-angelo-174', 'Military officer', '2024-08-16 13:02:14+00', 'Jonah Miller'),
	(33, 'william-roger-snow-196', 'Military officer', '2024-08-16 14:25:49+00', 'Jonah Miller'),
	(34, 'edmund-staveley-197', 'Military officer', '2024-08-16 15:06:59+00', 'Jonah Miller'),
	(35, 'charles-doyne-anderson-straker-198', 'Military officer', '2024-08-16 15:28:42+00', 'Jonah Miller'),
	(36, 'roger-swire-199', 'Military officer', '2024-08-16 15:47:25+00', 'Jonah Miller'),
	(37, 'duke-of-wellington-137', 'Politician', '2024-08-20 13:22:43.727239+00', 'Ariunzaya Batkhuyag'),
	(38, 'duke-of-wellington-137', 'Noble', '2024-08-20 13:23:57.679431+00', 'Ariunzaya Batkhuyag'),
	(39, 'duke-of-wellington-137', 'Military officer', '2024-08-20 13:24:22.168401+00', 'Ariunzaya Batkhuyag'),
	(40, 'patrick-bell-186', 'Cleric', '2024-08-20 13:25:01.690239+00', 'Ariunzaya Batkhuyag'),
	(41, 'patrick-bell-186', 'Inventor', '2024-08-20 13:25:29.609955+00', 'Ariunzaya Batkhuyag'),
	(42, 'bowyer-edward-sparke-187', 'Cleric', '2024-08-20 13:26:10.63968+00', 'Ariunzaya Batkhuyag'),
	(43, 'c-m-sutton-188', 'Speaker of the House of Commons', '2024-08-20 13:28:22.204706+00', 'Ariunzaya Batkhuyag'),
	(44, 'charles-r-sumner-189', 'Cleric', '2024-08-20 13:28:46.540336+00', 'Ariunzaya Batkhuyag'),
	(45, 'henry-william-majendie-245', 'Cleric', '2024-08-20 18:56:42.641561+00', 'Ariunzaya Batkhuyag'),
	(46, 'henry-ryder-251', 'Cleric', '2024-08-20 21:43:09.829737+00', 'Im Chiew Ng'),
	(47, 'george-bannister-175', 'Military officer', '2024-08-26 11:53:58.198776+00', 'Im Chiew Ng'),
	(48, 'william-barr-176', 'Military officer', '2024-08-26 12:02:45.60713+00', 'Im Chiew Ng'),
	(49, 'julius-barras-177', 'Military officer', '2024-08-26 12:03:00.386084+00', 'Im Chiew Ng'),
	(50, 'comyn-ching-254', 'Gas engineer', '2024-08-26 12:16:20+00', 'Arin Edwards'),
	(51, 'john-b-barker-255', 'Military officer', '2024-08-26 12:19:46.896672+00', 'Im Chiew Ng'),
	(52, 'edward-bell-256', 'Military officer', '2024-08-26 12:20:00.164278+00', 'Im Chiew Ng'),
	(53, 'robert-bennett-257', 'Military officer', '2024-08-26 12:20:13.493144+00', 'Im Chiew Ng'),
	(54, 'james-c-berkeley-258', 'Military officer', '2024-08-26 12:20:27.200145+00', 'Im Chiew Ng'),
	(55, 'robert-berkeley-259', 'Military officer', '2024-08-26 12:20:38.796785+00', 'Im Chiew Ng'),
	(56, 'george-blewitt-260', 'Military officer', '2024-08-26 20:15:05.415995+00', 'Im Chiew Ng'),
	(57, 'arthur-cecil-blunt-261', 'Military officer', '2024-08-26 20:15:15.881685+00', 'Im Chiew Ng'),
	(58, 'joseph-hf-blyth-262', 'Military officer', '2024-08-26 20:15:28.782035+00', 'Im Chiew Ng'),
	(59, 'joshua-j-bowness-266', 'Military officer', '2024-08-26 20:15:53.336234+00', 'Im Chiew Ng'),
	(60, 'george-nj-bradford-267', 'Military officer', '2024-08-26 20:16:08.123412+00', 'Im Chiew Ng'),
	(61, 'john-d-bradley-268', 'Military officer', '2024-08-26 20:16:21.169562+00', 'Im Chiew Ng'),
	(62, 'george-r-byron-269', 'Military officer', '2024-08-26 20:16:33.470099+00', 'Im Chiew Ng'),
	(63, 'william-hay-chapman-270', 'Military officer', '2024-08-26 20:16:45.416978+00', 'Im Chiew Ng'),
	(64, 'arthur-manning-tuck-271', 'Military officer', '2024-08-27 09:09:58+00', 'Jonah Miller'),
	(65, 'granville-waddilove-273', 'Military officer', '2024-08-27 09:28:02+00', 'Jonah Miller'),
	(66, 'comyn-ching-254', 'Gas engineer', '2024-09-01 14:40:01.952435+00', 'Arin Edwards'),
	(67, 'john-george-de-la-poer-beresford-280', 'Cleric', '2024-09-11 14:13:58.836009+00', 'Ariunzaya Batkhuyag'),
	(68, 'john-george-de-la-poer-beresford-280', 'Philanthropist', '2024-09-11 14:14:37.262403+00', 'Ariunzaya Batkhuyag'),
	(69, 'sir-james-bart-langham-284', 'Politician', '2024-09-11 14:34:12.742385+00', 'Ariunzaya Batkhuyag'),
	(70, 'sir-james-bart-langham-284', 'Barrister', '2024-09-11 14:34:28.294838+00', 'Ariunzaya Batkhuyag'),
	(71, 'john-banks-jenkinson-285', 'Cleric', '2024-09-11 14:48:19.817262+00', 'Ariunzaya Batkhuyag'),
	(72, 'john-ireland-290', 'Dean of Westminster', '2024-09-11 15:05:52.734133+00', 'Ariunzaya Batkhuyag'),
	(73, 'john-kaye-292', 'Cleric', '2024-09-11 15:13:58.018515+00', 'Ariunzaya Batkhuyag'),
	(74, 'john-luxmoore-293', 'Cleric', '2024-09-11 15:30:17.731909+00', 'Ariunzaya Batkhuyag'),
	(75, 'lord-kenyon-296', 'Noble', '2024-09-11 16:03:23.515369+00', 'Ariunzaya Batkhuyag'),
	(76, 'marquess-of-bristol-298', 'Noble', '2024-09-12 10:53:10.384524+00', 'Ariunzaya Batkhuyag'),
	(77, 'marquess-of-bristol-298', 'Politician', '2024-09-12 10:53:31.361761+00', 'Ariunzaya Batkhuyag'),
	(78, 'lord-rolle-300', 'Noble', '2024-09-12 11:12:08.183841+00', 'Ariunzaya Batkhuyag'),
	(79, 'lord-rolle-300', 'Politician', '2024-09-12 11:12:34.906603+00', 'Ariunzaya Batkhuyag'),
	(80, 'lord-rolle-300', 'Slave-owner', '2024-09-12 11:13:31.577753+00', 'Ariunzaya Batkhuyag'),
	(81, 'joshua-watson-303', 'Philanthropist', '2024-09-12 11:24:43.061289+00', 'Ariunzaya Batkhuyag'),
	(82, 'joshua-watson-303', 'Wine merchant', '2024-09-12 11:27:13.547614+00', 'Ariunzaya Batkhuyag'),
	(83, 'lord-crewe-304', 'Noble', '2024-09-12 11:33:54.984208+00', 'Ariunzaya Batkhuyag'),
	(84, 'lord-crewe-304', 'Politician', '2024-09-12 11:34:26.075705+00', 'Ariunzaya Batkhuyag'),
	(85, 'hugh-percy-278', 'Noble', '2024-09-13 11:48:36+00', 'Arin Edwards'),
	(86, 'hugh-percy-278', 'Politician', '2024-09-13 11:48:54+00', 'Arin Edwards'),
	(87, 'john-crichton-stuart-311', 'Industrialist', '2024-09-21 16:11:39.644467+00', 'Ariunzaya Batkhuyag'),
	(88, 'george-horatio-cholmondeley-315', 'Noble', '2024-09-21 16:37:48.021934+00', 'Ariunzaya Batkhuyag'),
	(89, 'george-horatio-cholmondeley-315', 'Politician', '2024-09-21 16:38:23.154874+00', 'Ariunzaya Batkhuyag'),
	(90, 'elisabeth-sophia-lawrence-319', 'Philanthropist', '2024-09-21 16:53:13.337892+00', 'Ariunzaya Batkhuyag'),
	(91, 'elisabeth-sophia-lawrence-319', 'Landowner', '2024-09-21 16:53:30.69333+00', 'Ariunzaya Batkhuyag'),
	(92, 'richard-fountayne-wilson-320', 'Politician', '2024-09-21 16:57:55.332102+00', 'Ariunzaya Batkhuyag'),
	(93, 'richard-fountayne-wilson-320', 'Landowner', '2024-09-21 16:58:09.758467+00', 'Ariunzaya Batkhuyag'),
	(94, 'richard-bagot-323', 'Cleric', '2024-09-21 17:06:35.792243+00', 'Ariunzaya Batkhuyag'),
	(95, 'richard-prosser-324', 'Cleric', '2024-09-21 18:15:43.986122+00', 'Ariunzaya Batkhuyag'),
	(96, 'richard-william-penn-curzon-howe-326', 'Noble', '2024-09-21 18:27:24.442425+00', 'Ariunzaya Batkhuyag'),
	(97, 'richard-william-penn-curzon-howe-326', 'Politician', '2024-09-21 18:27:37.325562+00', 'Ariunzaya Batkhuyag'),
	(98, 'robert-james-carr-328', 'Cleric', '2024-09-22 14:42:13.246109+00', 'Ariunzaya Batkhuyag'),
	(99, 'sir-robert-peel-138', 'Politician', '2024-09-22 14:57:31.741986+00', 'Ariunzaya Batkhuyag'),
	(100, 'thomas-burgess-334', 'Cleric', '2024-09-22 15:21:43.747066+00', 'Ariunzaya Batkhuyag'),
	(101, 'walter-francis-montagu-douglas-scott-337', 'Noble', '2024-09-22 16:11:46.409828+00', 'Ariunzaya Batkhuyag'),
	(102, 'walter-francis-montagu-douglas-scott-337', 'Politician', '2024-09-22 16:12:06.781338+00', 'Ariunzaya Batkhuyag'),
	(103, 'william-carey-338', 'Cleric', '2024-09-22 16:17:56.809927+00', 'Ariunzaya Batkhuyag'),
	(104, 'william-howley-342', 'Cleric', '2024-09-23 10:41:23.071207+00', 'Ariunzaya Batkhuyag'),
	(105, 'william-van-mildert-348', 'Cleric', '2024-09-23 13:25:07.263303+00', 'Ariunzaya Batkhuyag'),
	(106, 'william-van-mildert-348', 'Scholar', '2024-09-23 15:20:10.485736+00', 'Ariunzaya Batkhuyag');


--
-- Data for Name: person_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_same_as" ("id", "created_at", "person", "name", "url", "added_by") VALUES
	(1, '2024-10-15 19:54:17+00', 'tomas-garrigue-masaryk-360', 'Tomáš Masaryk - president of Czechoslovakia', 'https://www.britannica.com/biography/Tomas-Masaryk', 'Erika Melek Delgado');


--
-- Data for Name: person_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_source" ("id", "person", "source", "added_by", "created_at") OVERRIDING SYSTEM VALUE VALUES
	(1, 'arthur-angelo-174', 'national-archives-war-office-army-lists-1', 'Jonah Miller', '2024-08-12 13:59:54'),
	(4, 'william-roger-snow-196', '1851-census-england-2', 'Jonah Miller', '2024-08-16 15:59:13'),
	(5, 'edmund-staveley-197', 'national-archives-war-office-army-lists-1', 'Jonah Miller', '2024-08-16 16:07:33'),
	(6, 'charles-doyne-anderson-straker-198', 'london-gazette-3', 'Jonah Miller', '2024-08-16 16:29:59'),
	(7, 'roger-swire-199', 'national-archives-war-office-army-lists-1', 'Jonah Miller', '2024-08-16 16:47:53'),
	(8, 'george-bannister-175', 'national-archives-war-office-army-lists-1', 'Im Chiew Ng', '2024-08-26 11:54:24.851642'),
	(9, 'arthur-manning-tuck-271', 'suffolk-chronicle-4', 'Jonah Miller', '2024-08-27 10:11:26'),
	(10, 'granville-waddilove-273', 'national-archives-war-office-army-lists-1', 'Jonah Miller', '2024-08-27 10:28:35');


--
-- Data for Name: person_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: person_url; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person_url" ("id", "created_at", "person", "name", "url", "added_by") VALUES
	(1, '2024-10-15 19:55:33+00', 'tomas-garrigue-masaryk-360', 'Tomas Garrigue Masaryk - Government Information Centre of the CR', 'https://vlada.gov.cz/en/tema/tomas-garrigue-masaryk-7-march-1850--14-september-1937-69539/tmplid-676/', 'Erika Melek Delgado');


--
-- Data for Name: place_feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."place_feature" ("id", "created_at", "place", "image_url", "image_title", "image_description", "added_by") VALUES
	(1, '2024-10-15 18:35:26+00', 'freemasons-tavern-44', 'https://d1inegp6v2yuxm.cloudfront.net/royal-academy/image/upload/c_limit,cs_tinysrgb,dn_72,f_auto,fl_progressive.keep_iptc,w_2400/cyzhzstxeislyqpbxwno.jpeg', 'Freemasons'' Tavern, Great Queen Street, Lincoln''s Inn Fields', 'Watercolour by John Nixon circa 1800. Line engraving. 108 mm x 168 mm. © Photo: Royal Academy of Arts, London.', 'Erika Melek Delgado');


--
-- Data for Name: place_moment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."place_moment" ("id", "created_at", "place", "moment", "added_by") VALUES
	(1, '2024-10-15 18:38:49+00', 'freemasons-tavern-44', '2- 1828: The financial and political networks which created King''s', 'Erika Melek Delgado');


--
-- Data for Name: place_same_as; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."place_same_as" ("id", "created_at", "place", "name", "url", "added_by") VALUES
	(1, '2024-10-15 18:39:11+00', 'freemasons-tavern-44', 'Freemasons'' Tavern', 'https://en.wikipedia.org/wiki/Freemasons%27_Tavern#:~:text=The%20Freemasons''%20Tavern%20was%20established,way%20for%20the%20Connaught%20Rooms.', 'Erika Melek Delgado');


--
-- Data for Name: place_source; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."place_type" ("id", "name", "created_at", "added_by") VALUES
	(1, 'Country', '2024-08-12 11:45:28+00', 'Erika Melek Delgado'),
	(2, 'City', '2024-08-14 10:40:17+00', 'Erika Melek Delgado'),
	(3, 'County', '2024-08-15 16:24:41+00', 'Arin Edwards'),
	(4, 'Island', '2024-08-16 16:36:52+00', 'Arin Edwards'),
	(5, 'Kingdom', '2024-09-11 15:28:50+00', 'Arin Edwards'),
	(6, 'Pub/Tavern', '2024-10-15 18:21:34+00', 'Erika Melek Delgado');


--
-- Data for Name: place_url; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."place_url" ("id", "created_at", "place", "name", "url", "added_by") VALUES
	(1, '2024-10-15 18:41:08+00', 'freemasons-tavern-44', 'Freemasons'' Tavern', 'https://londonwiki.co.uk/LondonPubs/StGiles/FreeMasonsTavern.shtml', 'Erika Melek Delgado');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 8, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."country_id_seq"', 253, true);


--
-- Name: currency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."currency_id_seq"', 2, true);


--
-- Name: donation_agent_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_agent_organisation_id_seq"', 1, true);


--
-- Name: donation_agent_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_agent_person_id_seq"', 17, true);


--
-- Name: donation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."donation_id_seq"', 22, true);


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

SELECT pg_catalog.setval('"public"."donation_recipient_person_id_seq"', 5, true);


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

SELECT pg_catalog.setval('"public"."ethnicity_id_seq"', 2, true);


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_id_seq"', 193, true);


--
-- Name: event_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_moment_id_seq"', 55, true);


--
-- Name: event_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_organisation_id_seq"', 5, true);


--
-- Name: event_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."event_person_id_seq"', 99, true);


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

SELECT pg_catalog.setval('"public"."event_type_id_seq"', 10, true);


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

SELECT pg_catalog.setval('"public"."moment_id_seq"', 17, true);


--
-- Name: occupation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."occupation_id_seq"', 29, true);


--
-- Name: organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_id_seq"', 151, true);


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

SELECT pg_catalog.setval('"public"."organisation_member_of_id_seq"', 1, true);


--
-- Name: organisation_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_moment_id_seq"', 13, true);


--
-- Name: organisation_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_same_as_id_seq"', 1, false);


--
-- Name: organisation_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_source_id_seq"', 6, true);


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

SELECT pg_catalog.setval('"public"."organisation_type_id_seq"', 25, true);


--
-- Name: organisation_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."organisation_url_id_seq"', 1, true);


--
-- Name: person_funder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_funder_id_seq"', 7, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_id_seq"', 364, true);


--
-- Name: person_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_image_id_seq"', 3, true);


--
-- Name: person_knows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_knows_id_seq"', 164, true);


--
-- Name: person_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_language_id_seq"', 11, true);


--
-- Name: person_member_of_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_member_of_organisation_id_seq"', 232, true);


--
-- Name: person_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_moment_id_seq"', 109, true);


--
-- Name: person_occupation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_occupation_id_seq"', 106, true);


--
-- Name: person_relationship_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_relationship_type_id_seq"', 12, true);


--
-- Name: person_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_same_as_id_seq"', 1, true);


--
-- Name: person_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_source_id_seq"', 10, true);


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

SELECT pg_catalog.setval('"public"."person_url_id_seq"', 1, true);


--
-- Name: place_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_feature_id_seq"', 1, true);


--
-- Name: place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_id_seq"', 44, true);


--
-- Name: place_moment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_moment_id_seq"', 1, true);


--
-- Name: place_same_as_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_same_as_id_seq"', 1, true);


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

SELECT pg_catalog.setval('"public"."place_type_id_seq"', 6, true);


--
-- Name: place_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."place_url_id_seq"', 1, true);


--
-- Name: researcher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."researcher_id_seq"', 9, true);


--
-- Name: source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."source_id_seq"', 8, true);


--
-- Name: theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."theme_id_seq"', 2, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
