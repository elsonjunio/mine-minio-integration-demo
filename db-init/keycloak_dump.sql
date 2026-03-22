--
-- PostgreSQL database dump
--

\restrict mnmGedcwEROjU3bCW0zJ7XcEWSEy62ryYdtw5y5MK13fmaGouDnJEv505GczdZ1

-- Dumped from database version 16.13 (Debian 16.13-1.pgdg13+1)
-- Dumped by pg_dump version 16.13 (Debian 16.13-1.pgdg13+1)

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

ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS fkdc4897cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS fkdc34197cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS fk_user_group_user;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS fk_t13hpu1j94r2ebpekr39x5eu5;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS fk_supported_locales_realm;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS fk_role_attribute_id;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS fk_resource_server_uris;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS fk_req_act_realm;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS fk_r_def_cli_scope_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS fk_pmconfig;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS fk_pfyr0glasqyl0dei3kl69r6v0;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_pcm_realm;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS fk_ouse064plmlr732lxjcn1q5f1;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS fk_lojpho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS fk_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS fk_idpm_realm;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nxev9f5y69j;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nwedrf5y69j;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS fk_group_role_group;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS fk_group_attribute_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS fk_grntcsnt_user;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS fk_grntcsnt_clsc_usc;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_gr7thllb9lu8q4vqa4524jjy8;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS fk_frsrso213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrps213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpp213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpos53xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrpos13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS fk_frsrpo213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrpo2128cx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrpass3xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsrpas14xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog84sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog83sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82sspmt;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrasp13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsr5s213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_realm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_fedprv;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS fk_fedmapper_cfg;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS fk_def_groups_realm;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS fk_component_realm;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS fk_component_config;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS fk_client_init_acc_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_cli_scope_mapper;
ALTER TABLE IF EXISTS ONLY public.client_user_session_note DROP CONSTRAINT IF EXISTS fk_cl_usr_ses_note;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS fk_cl_scope_rm_scope;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS fk_cl_scope_attr_scope;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS fk_c4fqv34p1mbylloxang7b1q3l;
ALTER TABLE IF EXISTS ONLY public.client_session DROP CONSTRAINT IF EXISTS fk_b4ao2vcvat6ukau74wbwtfqo1;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS fk_auth_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS fk_auth_flow_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_flow;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_a63wvekftu8jo1pnj81e7mce2;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS fk_8shxd6l3e9atqukacxgpffptw;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS fk_70ej8xdxgxd0b9hh6180irr0o;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS fk_6vyqfe4cn4wlq8r6kt5vdsj5c;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS fk_6qj3w1jw9cvafhe19bwsiuvmd;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu043kqepovbr;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu022kqepovbr;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS fk_5hg65lybevavkqfki3kponh9v;
ALTER TABLE IF EXISTS ONLY public.client_session_prot_mapper DROP CONSTRAINT IF EXISTS fk_33a8sgqw18i532811v7o2dk89;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS fk_1fj32f6ptolw2qy60cd8n01e8;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS fk_1burs8pb4ouj97h5wuppahv9f;
ALTER TABLE IF EXISTS ONLY public.client_session_role DROP CONSTRAINT IF EXISTS fk_11b7sgqw18i532811v7o2dv76;
ALTER TABLE IF EXISTS ONLY public.user_session_note DROP CONSTRAINT IF EXISTS fk5edfb00ff51d3472;
ALTER TABLE IF EXISTS ONLY public.client_session_note DROP CONSTRAINT IF EXISTS fk5edfb00ff51c2736;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS fk4129723ba992f594;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS fk404288b92ef007a6;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS fk3c47c64beacca966;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS fk2b4ebc52ae5c3b34;
ALTER TABLE IF EXISTS ONLY public.client_session_auth_status DROP CONSTRAINT IF EXISTS auth_status_constraint;
DROP INDEX IF EXISTS public.user_attr_long_values_lower_case;
DROP INDEX IF EXISTS public.user_attr_long_values;
DROP INDEX IF EXISTS public.idx_web_orig_client;
DROP INDEX IF EXISTS public.idx_usr_fed_prv_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_fed_prv;
DROP INDEX IF EXISTS public.idx_user_service_account;
DROP INDEX IF EXISTS public.idx_user_role_mapping;
DROP INDEX IF EXISTS public.idx_user_reqactions;
DROP INDEX IF EXISTS public.idx_user_group_mapping;
DROP INDEX IF EXISTS public.idx_user_email;
DROP INDEX IF EXISTS public.idx_user_credential;
DROP INDEX IF EXISTS public.idx_user_consent;
DROP INDEX IF EXISTS public.idx_user_attribute_name;
DROP INDEX IF EXISTS public.idx_user_attribute;
DROP INDEX IF EXISTS public.idx_usconsent_clscope;
DROP INDEX IF EXISTS public.idx_us_sess_id_on_cl_sess;
DROP INDEX IF EXISTS public.idx_update_time;
DROP INDEX IF EXISTS public.idx_scope_policy_policy;
DROP INDEX IF EXISTS public.idx_scope_mapping_role;
DROP INDEX IF EXISTS public.idx_role_clscope;
DROP INDEX IF EXISTS public.idx_role_attribute;
DROP INDEX IF EXISTS public.idx_res_srv_scope_res_srv;
DROP INDEX IF EXISTS public.idx_res_srv_res_res_srv;
DROP INDEX IF EXISTS public.idx_res_serv_pol_res_serv;
DROP INDEX IF EXISTS public.idx_res_scope_scope;
DROP INDEX IF EXISTS public.idx_res_policy_policy;
DROP INDEX IF EXISTS public.idx_req_act_prov_realm;
DROP INDEX IF EXISTS public.idx_redir_uri_client;
DROP INDEX IF EXISTS public.idx_realm_supp_local_realm;
DROP INDEX IF EXISTS public.idx_realm_master_adm_cli;
DROP INDEX IF EXISTS public.idx_realm_evt_types_realm;
DROP INDEX IF EXISTS public.idx_realm_evt_list_realm;
DROP INDEX IF EXISTS public.idx_realm_def_grp_realm;
DROP INDEX IF EXISTS public.idx_realm_clscope;
DROP INDEX IF EXISTS public.idx_realm_attr_realm;
DROP INDEX IF EXISTS public.idx_protocol_mapper_client;
DROP INDEX IF EXISTS public.idx_offline_uss_preload;
DROP INDEX IF EXISTS public.idx_offline_uss_createdon;
DROP INDEX IF EXISTS public.idx_offline_uss_by_usersess;
DROP INDEX IF EXISTS public.idx_offline_uss_by_user;
DROP INDEX IF EXISTS public.idx_offline_css_preload;
DROP INDEX IF EXISTS public.idx_keycloak_role_realm;
DROP INDEX IF EXISTS public.idx_keycloak_role_client;
DROP INDEX IF EXISTS public.idx_ident_prov_realm;
DROP INDEX IF EXISTS public.idx_id_prov_mapp_realm;
DROP INDEX IF EXISTS public.idx_group_role_mapp_group;
DROP INDEX IF EXISTS public.idx_group_attr_group;
DROP INDEX IF EXISTS public.idx_group_att_by_name_value;
DROP INDEX IF EXISTS public.idx_fu_role_mapping_ru;
DROP INDEX IF EXISTS public.idx_fu_role_mapping;
DROP INDEX IF EXISTS public.idx_fu_required_action_ru;
DROP INDEX IF EXISTS public.idx_fu_required_action;
DROP INDEX IF EXISTS public.idx_fu_group_membership_ru;
DROP INDEX IF EXISTS public.idx_fu_group_membership;
DROP INDEX IF EXISTS public.idx_fu_credential_ru;
DROP INDEX IF EXISTS public.idx_fu_credential;
DROP INDEX IF EXISTS public.idx_fu_consent_ru;
DROP INDEX IF EXISTS public.idx_fu_consent;
DROP INDEX IF EXISTS public.idx_fu_cnsnt_ext;
DROP INDEX IF EXISTS public.idx_fu_attribute;
DROP INDEX IF EXISTS public.idx_fedidentity_user;
DROP INDEX IF EXISTS public.idx_fedidentity_feduser;
DROP INDEX IF EXISTS public.idx_event_time;
DROP INDEX IF EXISTS public.idx_defcls_scope;
DROP INDEX IF EXISTS public.idx_defcls_realm;
DROP INDEX IF EXISTS public.idx_composite_child;
DROP INDEX IF EXISTS public.idx_composite;
DROP INDEX IF EXISTS public.idx_component_realm;
DROP INDEX IF EXISTS public.idx_component_provider_type;
DROP INDEX IF EXISTS public.idx_compo_config_compo;
DROP INDEX IF EXISTS public.idx_clscope_role;
DROP INDEX IF EXISTS public.idx_clscope_protmap;
DROP INDEX IF EXISTS public.idx_clscope_cl;
DROP INDEX IF EXISTS public.idx_clscope_attrs;
DROP INDEX IF EXISTS public.idx_client_session_session;
DROP INDEX IF EXISTS public.idx_client_init_acc_realm;
DROP INDEX IF EXISTS public.idx_client_id;
DROP INDEX IF EXISTS public.idx_client_att_by_name_value;
DROP INDEX IF EXISTS public.idx_cl_clscope;
DROP INDEX IF EXISTS public.idx_auth_flow_realm;
DROP INDEX IF EXISTS public.idx_auth_exec_realm_flow;
DROP INDEX IF EXISTS public.idx_auth_exec_flow;
DROP INDEX IF EXISTS public.idx_auth_config_realm;
DROP INDEX IF EXISTS public.idx_assoc_pol_assoc_pol_id;
DROP INDEX IF EXISTS public.idx_admin_event_time;
DROP INDEX IF EXISTS public.fed_user_attr_long_values_lower_case;
DROP INDEX IF EXISTS public.fed_user_attr_long_values;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_ru8tt6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS uk_orvsdmla56612eaefiq6wl5oi;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS uk_jkuwuvd56ontgsuhogm8uewrt;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS uk_frsrst700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS uk_frsrpt700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5pmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_dykn684sl8up1crfei6eckhd7;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS uk_cli_scope;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS uk_b71cjlbenv945rb6gcon438at;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS uk_2daelwnibji49avxsrtuf6xj33;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS sibling_names;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS res_attr_pk;
ALTER TABLE IF EXISTS ONLY public.realm_localizations DROP CONSTRAINT IF EXISTS realm_localizations_pkey;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS r_def_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS pk_template_scope;
ALTER TABLE IF EXISTS ONLY public.resource_server DROP CONSTRAINT IF EXISTS pk_resource_server;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS pk_cli_template;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS pk_cl_tmpl_attr;
ALTER TABLE IF EXISTS ONLY public.databasechangeloglock DROP CONSTRAINT IF EXISTS databasechangeloglock_pkey;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS constraint_web_origins;
ALTER TABLE IF EXISTS ONLY public.user_session_note DROP CONSTRAINT IF EXISTS constraint_usn_pk;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS constraint_user_group;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS constraint_user_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS constraint_role_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS constraint_resour_uris_pk;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS constraint_required_action;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS constraint_req_act_prv_pk;
ALTER TABLE IF EXISTS ONLY public.required_action_config DROP CONSTRAINT IF EXISTS constraint_req_act_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS constraint_redirect_uris;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS constraint_pmconfig;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS constraint_pcm;
ALTER TABLE IF EXISTS ONLY public.offline_user_session DROP CONSTRAINT IF EXISTS constraint_offl_us_ses_pk2;
ALTER TABLE IF EXISTS ONLY public.offline_client_session DROP CONSTRAINT IF EXISTS constraint_offl_cl_ses_pk3;
ALTER TABLE IF EXISTS ONLY public.migration_model DROP CONSTRAINT IF EXISTS constraint_migmod;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS constraint_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS constraint_idpm;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS constraint_group_role;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS constraint_group_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS constraint_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS constraint_grntcsnt_pm;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS constraint_grntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent_cl_scope DROP CONSTRAINT IF EXISTS constraint_fgrntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS constraint_fedmapperpm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS constraint_fedmapper_cfg_pm;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS constraint_fb;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS constraint_farsrsps;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS constraint_farsrsp;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS constraint_farsrs;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS constraint_farsrpp;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS constraint_farsrpap;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS constraint_farsrp;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS constraint_farsr;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS constraint_fapmt;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS constraint_f9;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS constraint_f;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS constraint_e;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS constraint_dpc;
ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS constraint_d;
ALTER TABLE IF EXISTS ONLY public.client_session_prot_mapper DROP CONSTRAINT IF EXISTS constraint_cs_pmp_pk;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS constraint_composite_role;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS constraint_c;
ALTER TABLE IF EXISTS ONLY public.client_session_auth_status DROP CONSTRAINT IF EXISTS constraint_auth_status_pk;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS constraint_auth_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS constraint_auth_flow_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS constraint_auth_exec_pk;
ALTER TABLE IF EXISTS ONLY public.authenticator_config_entry DROP CONSTRAINT IF EXISTS constraint_auth_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.admin_event_entity DROP CONSTRAINT IF EXISTS constraint_admin_event_entity;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS constraint_a;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS constraint_92;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS constraint_9;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS constraint_84;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS constraint_81;
ALTER TABLE IF EXISTS ONLY public.client_session DROP CONSTRAINT IF EXISTS constraint_8;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS constraint_7;
ALTER TABLE IF EXISTS ONLY public.client_session_note DROP CONSTRAINT IF EXISTS constraint_5e;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS constraint_5c;
ALTER TABLE IF EXISTS ONLY public.user_session DROP CONSTRAINT IF EXISTS constraint_57;
ALTER TABLE IF EXISTS ONLY public.client_session_role DROP CONSTRAINT IF EXISTS constraint_5;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS constraint_4a;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS constraint_40;
ALTER TABLE IF EXISTS ONLY public.event_entity DROP CONSTRAINT IF EXISTS constraint_4;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS constraint_3c;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS constraint_2b;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS constr_realm_supported_locales;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS constr_realm_events_listeners;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS constr_realm_enabl_event_types;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS constr_realm_default_groups;
ALTER TABLE IF EXISTS ONLY public.federated_user DROP CONSTRAINT IF EXISTS constr_federated_user;
ALTER TABLE IF EXISTS ONLY public.fed_user_role_mapping DROP CONSTRAINT IF EXISTS constr_fed_user_role;
ALTER TABLE IF EXISTS ONLY public.fed_user_group_membership DROP CONSTRAINT IF EXISTS constr_fed_user_group;
ALTER TABLE IF EXISTS ONLY public.fed_user_credential DROP CONSTRAINT IF EXISTS constr_fed_user_cred_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent DROP CONSTRAINT IF EXISTS constr_fed_user_consent_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_attribute DROP CONSTRAINT IF EXISTS constr_fed_user_attr_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_required_action DROP CONSTRAINT IF EXISTS constr_fed_required_action;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS constr_component_pk;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS constr_component_config_pk;
ALTER TABLE IF EXISTS ONLY public.client_user_session_note DROP CONSTRAINT IF EXISTS constr_cl_usr_ses_note;
ALTER TABLE IF EXISTS ONLY public.broker_link DROP CONSTRAINT IF EXISTS constr_broker_link_pk;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS con_group_id_def_groups;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS cnstr_client_init_acc_pk;
ALTER TABLE IF EXISTS ONLY public.client_scope_client DROP CONSTRAINT IF EXISTS c_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.client_auth_flow_bindings DROP CONSTRAINT IF EXISTS c_cli_flow_bind;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS "UK_J3RWUVD56ONTGSUHOGM184WW2-2";
ALTER TABLE IF EXISTS ONLY public.username_login_failure DROP CONSTRAINT IF EXISTS "CONSTRAINT_17-2";
DROP TABLE IF EXISTS public.web_origins;
DROP TABLE IF EXISTS public.username_login_failure;
DROP TABLE IF EXISTS public.user_session_note;
DROP TABLE IF EXISTS public.user_session;
DROP TABLE IF EXISTS public.user_role_mapping;
DROP TABLE IF EXISTS public.user_required_action;
DROP TABLE IF EXISTS public.user_group_membership;
DROP TABLE IF EXISTS public.user_federation_provider;
DROP TABLE IF EXISTS public.user_federation_mapper_config;
DROP TABLE IF EXISTS public.user_federation_mapper;
DROP TABLE IF EXISTS public.user_federation_config;
DROP TABLE IF EXISTS public.user_entity;
DROP TABLE IF EXISTS public.user_consent_client_scope;
DROP TABLE IF EXISTS public.user_consent;
DROP TABLE IF EXISTS public.user_attribute;
DROP TABLE IF EXISTS public.scope_policy;
DROP TABLE IF EXISTS public.scope_mapping;
DROP TABLE IF EXISTS public.role_attribute;
DROP TABLE IF EXISTS public.resource_uris;
DROP TABLE IF EXISTS public.resource_server_scope;
DROP TABLE IF EXISTS public.resource_server_resource;
DROP TABLE IF EXISTS public.resource_server_policy;
DROP TABLE IF EXISTS public.resource_server_perm_ticket;
DROP TABLE IF EXISTS public.resource_server;
DROP TABLE IF EXISTS public.resource_scope;
DROP TABLE IF EXISTS public.resource_policy;
DROP TABLE IF EXISTS public.resource_attribute;
DROP TABLE IF EXISTS public.required_action_provider;
DROP TABLE IF EXISTS public.required_action_config;
DROP TABLE IF EXISTS public.redirect_uris;
DROP TABLE IF EXISTS public.realm_supported_locales;
DROP TABLE IF EXISTS public.realm_smtp_config;
DROP TABLE IF EXISTS public.realm_required_credential;
DROP TABLE IF EXISTS public.realm_localizations;
DROP TABLE IF EXISTS public.realm_events_listeners;
DROP TABLE IF EXISTS public.realm_enabled_event_types;
DROP TABLE IF EXISTS public.realm_default_groups;
DROP TABLE IF EXISTS public.realm_attribute;
DROP TABLE IF EXISTS public.realm;
DROP TABLE IF EXISTS public.protocol_mapper_config;
DROP TABLE IF EXISTS public.protocol_mapper;
DROP TABLE IF EXISTS public.policy_config;
DROP TABLE IF EXISTS public.offline_user_session;
DROP TABLE IF EXISTS public.offline_client_session;
DROP TABLE IF EXISTS public.migration_model;
DROP TABLE IF EXISTS public.keycloak_role;
DROP TABLE IF EXISTS public.keycloak_group;
DROP TABLE IF EXISTS public.idp_mapper_config;
DROP TABLE IF EXISTS public.identity_provider_mapper;
DROP TABLE IF EXISTS public.identity_provider_config;
DROP TABLE IF EXISTS public.identity_provider;
DROP TABLE IF EXISTS public.group_role_mapping;
DROP TABLE IF EXISTS public.group_attribute;
DROP TABLE IF EXISTS public.federated_user;
DROP TABLE IF EXISTS public.federated_identity;
DROP TABLE IF EXISTS public.fed_user_role_mapping;
DROP TABLE IF EXISTS public.fed_user_required_action;
DROP TABLE IF EXISTS public.fed_user_group_membership;
DROP TABLE IF EXISTS public.fed_user_credential;
DROP TABLE IF EXISTS public.fed_user_consent_cl_scope;
DROP TABLE IF EXISTS public.fed_user_consent;
DROP TABLE IF EXISTS public.fed_user_attribute;
DROP TABLE IF EXISTS public.event_entity;
DROP TABLE IF EXISTS public.default_client_scope;
DROP TABLE IF EXISTS public.databasechangeloglock;
DROP TABLE IF EXISTS public.databasechangelog;
DROP TABLE IF EXISTS public.credential;
DROP TABLE IF EXISTS public.composite_role;
DROP TABLE IF EXISTS public.component_config;
DROP TABLE IF EXISTS public.component;
DROP TABLE IF EXISTS public.client_user_session_note;
DROP TABLE IF EXISTS public.client_session_role;
DROP TABLE IF EXISTS public.client_session_prot_mapper;
DROP TABLE IF EXISTS public.client_session_note;
DROP TABLE IF EXISTS public.client_session_auth_status;
DROP TABLE IF EXISTS public.client_session;
DROP TABLE IF EXISTS public.client_scope_role_mapping;
DROP TABLE IF EXISTS public.client_scope_client;
DROP TABLE IF EXISTS public.client_scope_attributes;
DROP TABLE IF EXISTS public.client_scope;
DROP TABLE IF EXISTS public.client_node_registrations;
DROP TABLE IF EXISTS public.client_initial_access;
DROP TABLE IF EXISTS public.client_auth_flow_bindings;
DROP TABLE IF EXISTS public.client_attributes;
DROP TABLE IF EXISTS public.client;
DROP TABLE IF EXISTS public.broker_link;
DROP TABLE IF EXISTS public.authenticator_config_entry;
DROP TABLE IF EXISTS public.authenticator_config;
DROP TABLE IF EXISTS public.authentication_flow;
DROP TABLE IF EXISTS public.authentication_execution;
DROP TABLE IF EXISTS public.associated_policy;
DROP TABLE IF EXISTS public.admin_event_entity;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_event_entity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.admin_event_entity (
    id character varying(36) NOT NULL,
    admin_event_time bigint,
    realm_id character varying(255),
    operation_type character varying(255),
    auth_realm_id character varying(255),
    auth_client_id character varying(255),
    auth_user_id character varying(255),
    ip_address character varying(255),
    resource_path character varying(2550),
    representation text,
    error character varying(255),
    resource_type character varying(64)
);


ALTER TABLE public.admin_event_entity OWNER TO keycloak;

--
-- Name: associated_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.associated_policy (
    policy_id character varying(36) NOT NULL,
    associated_policy_id character varying(36) NOT NULL
);


ALTER TABLE public.associated_policy OWNER TO keycloak;

--
-- Name: authentication_execution; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authentication_execution (
    id character varying(36) NOT NULL,
    alias character varying(255),
    authenticator character varying(36),
    realm_id character varying(36),
    flow_id character varying(36),
    requirement integer,
    priority integer,
    authenticator_flow boolean DEFAULT false NOT NULL,
    auth_flow_id character varying(36),
    auth_config character varying(36)
);


ALTER TABLE public.authentication_execution OWNER TO keycloak;

--
-- Name: authentication_flow; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authentication_flow (
    id character varying(36) NOT NULL,
    alias character varying(255),
    description character varying(255),
    realm_id character varying(36),
    provider_id character varying(36) DEFAULT 'basic-flow'::character varying NOT NULL,
    top_level boolean DEFAULT false NOT NULL,
    built_in boolean DEFAULT false NOT NULL
);


ALTER TABLE public.authentication_flow OWNER TO keycloak;

--
-- Name: authenticator_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authenticator_config (
    id character varying(36) NOT NULL,
    alias character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.authenticator_config OWNER TO keycloak;

--
-- Name: authenticator_config_entry; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authenticator_config_entry (
    authenticator_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.authenticator_config_entry OWNER TO keycloak;

--
-- Name: broker_link; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.broker_link (
    identity_provider character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL,
    broker_user_id character varying(255),
    broker_username character varying(255),
    token text,
    user_id character varying(255) NOT NULL
);


ALTER TABLE public.broker_link OWNER TO keycloak;

--
-- Name: client; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client (
    id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    full_scope_allowed boolean DEFAULT false NOT NULL,
    client_id character varying(255),
    not_before integer,
    public_client boolean DEFAULT false NOT NULL,
    secret character varying(255),
    base_url character varying(255),
    bearer_only boolean DEFAULT false NOT NULL,
    management_url character varying(255),
    surrogate_auth_required boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    protocol character varying(255),
    node_rereg_timeout integer DEFAULT 0,
    frontchannel_logout boolean DEFAULT false NOT NULL,
    consent_required boolean DEFAULT false NOT NULL,
    name character varying(255),
    service_accounts_enabled boolean DEFAULT false NOT NULL,
    client_authenticator_type character varying(255),
    root_url character varying(255),
    description character varying(255),
    registration_token character varying(255),
    standard_flow_enabled boolean DEFAULT true NOT NULL,
    implicit_flow_enabled boolean DEFAULT false NOT NULL,
    direct_access_grants_enabled boolean DEFAULT false NOT NULL,
    always_display_in_console boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client OWNER TO keycloak;

--
-- Name: client_attributes; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_attributes (
    client_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.client_attributes OWNER TO keycloak;

--
-- Name: client_auth_flow_bindings; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_auth_flow_bindings (
    client_id character varying(36) NOT NULL,
    flow_id character varying(36),
    binding_name character varying(255) NOT NULL
);


ALTER TABLE public.client_auth_flow_bindings OWNER TO keycloak;

--
-- Name: client_initial_access; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_initial_access (
    id character varying(36) NOT NULL,
    realm_id character varying(36) NOT NULL,
    "timestamp" integer,
    expiration integer,
    count integer,
    remaining_count integer
);


ALTER TABLE public.client_initial_access OWNER TO keycloak;

--
-- Name: client_node_registrations; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_node_registrations (
    client_id character varying(36) NOT NULL,
    value integer,
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_node_registrations OWNER TO keycloak;

--
-- Name: client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope (
    id character varying(36) NOT NULL,
    name character varying(255),
    realm_id character varying(36),
    description character varying(255),
    protocol character varying(255)
);


ALTER TABLE public.client_scope OWNER TO keycloak;

--
-- Name: client_scope_attributes; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_attributes (
    scope_id character varying(36) NOT NULL,
    value character varying(2048),
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_scope_attributes OWNER TO keycloak;

--
-- Name: client_scope_client; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_client (
    client_id character varying(255) NOT NULL,
    scope_id character varying(255) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client_scope_client OWNER TO keycloak;

--
-- Name: client_scope_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_role_mapping (
    scope_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.client_scope_role_mapping OWNER TO keycloak;

--
-- Name: client_session; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session (
    id character varying(36) NOT NULL,
    client_id character varying(36),
    redirect_uri character varying(255),
    state character varying(255),
    "timestamp" integer,
    session_id character varying(36),
    auth_method character varying(255),
    realm_id character varying(255),
    auth_user_id character varying(36),
    current_action character varying(36)
);


ALTER TABLE public.client_session OWNER TO keycloak;

--
-- Name: client_session_auth_status; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_auth_status (
    authenticator character varying(36) NOT NULL,
    status integer,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_auth_status OWNER TO keycloak;

--
-- Name: client_session_note; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_note (
    name character varying(255) NOT NULL,
    value character varying(255),
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_note OWNER TO keycloak;

--
-- Name: client_session_prot_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_prot_mapper (
    protocol_mapper_id character varying(36) NOT NULL,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_prot_mapper OWNER TO keycloak;

--
-- Name: client_session_role; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_role (
    role_id character varying(255) NOT NULL,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_role OWNER TO keycloak;

--
-- Name: client_user_session_note; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_user_session_note (
    name character varying(255) NOT NULL,
    value character varying(2048),
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_user_session_note OWNER TO keycloak;

--
-- Name: component; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.component (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_id character varying(36),
    provider_id character varying(36),
    provider_type character varying(255),
    realm_id character varying(36),
    sub_type character varying(255)
);


ALTER TABLE public.component OWNER TO keycloak;

--
-- Name: component_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.component_config (
    id character varying(36) NOT NULL,
    component_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.component_config OWNER TO keycloak;

--
-- Name: composite_role; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.composite_role (
    composite character varying(36) NOT NULL,
    child_role character varying(36) NOT NULL
);


ALTER TABLE public.composite_role OWNER TO keycloak;

--
-- Name: credential; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    user_id character varying(36),
    created_date bigint,
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);


ALTER TABLE public.credential OWNER TO keycloak;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO keycloak;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO keycloak;

--
-- Name: default_client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.default_client_scope (
    realm_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.default_client_scope OWNER TO keycloak;

--
-- Name: event_entity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.event_entity (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    details_json character varying(2550),
    error character varying(255),
    ip_address character varying(255),
    realm_id character varying(255),
    session_id character varying(255),
    event_time bigint,
    type character varying(255),
    user_id character varying(255),
    details_json_long_value text
);


ALTER TABLE public.event_entity OWNER TO keycloak;

--
-- Name: fed_user_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_attribute (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    value character varying(2024),
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);


ALTER TABLE public.fed_user_attribute OWNER TO keycloak;

--
-- Name: fed_user_consent; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.fed_user_consent OWNER TO keycloak;

--
-- Name: fed_user_consent_cl_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_consent_cl_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.fed_user_consent_cl_scope OWNER TO keycloak;

--
-- Name: fed_user_credential; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    created_date bigint,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);


ALTER TABLE public.fed_user_credential OWNER TO keycloak;

--
-- Name: fed_user_group_membership; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_group_membership OWNER TO keycloak;

--
-- Name: fed_user_required_action; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_required_action (
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_required_action OWNER TO keycloak;

--
-- Name: fed_user_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_role_mapping (
    role_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_role_mapping OWNER TO keycloak;

--
-- Name: federated_identity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.federated_identity (
    identity_provider character varying(255) NOT NULL,
    realm_id character varying(36),
    federated_user_id character varying(255),
    federated_username character varying(255),
    token text,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_identity OWNER TO keycloak;

--
-- Name: federated_user; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.federated_user (
    id character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_user OWNER TO keycloak;

--
-- Name: group_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.group_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_attribute OWNER TO keycloak;

--
-- Name: group_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.group_role_mapping (
    role_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_role_mapping OWNER TO keycloak;

--
-- Name: identity_provider; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider (
    internal_id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    provider_alias character varying(255),
    provider_id character varying(255),
    store_token boolean DEFAULT false NOT NULL,
    authenticate_by_default boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    add_token_role boolean DEFAULT true NOT NULL,
    trust_email boolean DEFAULT false NOT NULL,
    first_broker_login_flow_id character varying(36),
    post_broker_login_flow_id character varying(36),
    provider_display_name character varying(255),
    link_only boolean DEFAULT false NOT NULL
);


ALTER TABLE public.identity_provider OWNER TO keycloak;

--
-- Name: identity_provider_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider_config (
    identity_provider_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.identity_provider_config OWNER TO keycloak;

--
-- Name: identity_provider_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    idp_alias character varying(255) NOT NULL,
    idp_mapper_name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.identity_provider_mapper OWNER TO keycloak;

--
-- Name: idp_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.idp_mapper_config (
    idp_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.idp_mapper_config OWNER TO keycloak;

--
-- Name: keycloak_group; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.keycloak_group (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_group character varying(36) NOT NULL,
    realm_id character varying(36)
);


ALTER TABLE public.keycloak_group OWNER TO keycloak;

--
-- Name: keycloak_role; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.keycloak_role (
    id character varying(36) NOT NULL,
    client_realm_constraint character varying(255),
    client_role boolean DEFAULT false NOT NULL,
    description character varying(255),
    name character varying(255),
    realm_id character varying(255),
    client character varying(36),
    realm character varying(36)
);


ALTER TABLE public.keycloak_role OWNER TO keycloak;

--
-- Name: migration_model; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.migration_model (
    id character varying(36) NOT NULL,
    version character varying(36),
    update_time bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.migration_model OWNER TO keycloak;

--
-- Name: offline_client_session; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.offline_client_session (
    user_session_id character varying(36) NOT NULL,
    client_id character varying(255) NOT NULL,
    offline_flag character varying(4) NOT NULL,
    "timestamp" integer,
    data text,
    client_storage_provider character varying(36) DEFAULT 'local'::character varying NOT NULL,
    external_client_id character varying(255) DEFAULT 'local'::character varying NOT NULL
);


ALTER TABLE public.offline_client_session OWNER TO keycloak;

--
-- Name: offline_user_session; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.offline_user_session (
    user_session_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    created_on integer NOT NULL,
    offline_flag character varying(4) NOT NULL,
    data text,
    last_session_refresh integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.offline_user_session OWNER TO keycloak;

--
-- Name: policy_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.policy_config (
    policy_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.policy_config OWNER TO keycloak;

--
-- Name: protocol_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.protocol_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    protocol character varying(255) NOT NULL,
    protocol_mapper_name character varying(255) NOT NULL,
    client_id character varying(36),
    client_scope_id character varying(36)
);


ALTER TABLE public.protocol_mapper OWNER TO keycloak;

--
-- Name: protocol_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.protocol_mapper_config (
    protocol_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.protocol_mapper_config OWNER TO keycloak;

--
-- Name: realm; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm (
    id character varying(36) NOT NULL,
    access_code_lifespan integer,
    user_action_lifespan integer,
    access_token_lifespan integer,
    account_theme character varying(255),
    admin_theme character varying(255),
    email_theme character varying(255),
    enabled boolean DEFAULT false NOT NULL,
    events_enabled boolean DEFAULT false NOT NULL,
    events_expiration bigint,
    login_theme character varying(255),
    name character varying(255),
    not_before integer,
    password_policy character varying(2550),
    registration_allowed boolean DEFAULT false NOT NULL,
    remember_me boolean DEFAULT false NOT NULL,
    reset_password_allowed boolean DEFAULT false NOT NULL,
    social boolean DEFAULT false NOT NULL,
    ssl_required character varying(255),
    sso_idle_timeout integer,
    sso_max_lifespan integer,
    update_profile_on_soc_login boolean DEFAULT false NOT NULL,
    verify_email boolean DEFAULT false NOT NULL,
    master_admin_client character varying(36),
    login_lifespan integer,
    internationalization_enabled boolean DEFAULT false NOT NULL,
    default_locale character varying(255),
    reg_email_as_username boolean DEFAULT false NOT NULL,
    admin_events_enabled boolean DEFAULT false NOT NULL,
    admin_events_details_enabled boolean DEFAULT false NOT NULL,
    edit_username_allowed boolean DEFAULT false NOT NULL,
    otp_policy_counter integer DEFAULT 0,
    otp_policy_window integer DEFAULT 1,
    otp_policy_period integer DEFAULT 30,
    otp_policy_digits integer DEFAULT 6,
    otp_policy_alg character varying(36) DEFAULT 'HmacSHA1'::character varying,
    otp_policy_type character varying(36) DEFAULT 'totp'::character varying,
    browser_flow character varying(36),
    registration_flow character varying(36),
    direct_grant_flow character varying(36),
    reset_credentials_flow character varying(36),
    client_auth_flow character varying(36),
    offline_session_idle_timeout integer DEFAULT 0,
    revoke_refresh_token boolean DEFAULT false NOT NULL,
    access_token_life_implicit integer DEFAULT 0,
    login_with_email_allowed boolean DEFAULT true NOT NULL,
    duplicate_emails_allowed boolean DEFAULT false NOT NULL,
    docker_auth_flow character varying(36),
    refresh_token_max_reuse integer DEFAULT 0,
    allow_user_managed_access boolean DEFAULT false NOT NULL,
    sso_max_lifespan_remember_me integer DEFAULT 0 NOT NULL,
    sso_idle_timeout_remember_me integer DEFAULT 0 NOT NULL,
    default_role character varying(255)
);


ALTER TABLE public.realm OWNER TO keycloak;

--
-- Name: realm_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_attribute (
    name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    value text
);


ALTER TABLE public.realm_attribute OWNER TO keycloak;

--
-- Name: realm_default_groups; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_default_groups (
    realm_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_groups OWNER TO keycloak;

--
-- Name: realm_enabled_event_types; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_enabled_event_types (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_enabled_event_types OWNER TO keycloak;

--
-- Name: realm_events_listeners; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_events_listeners (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_events_listeners OWNER TO keycloak;

--
-- Name: realm_localizations; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_localizations (
    realm_id character varying(255) NOT NULL,
    locale character varying(255) NOT NULL,
    texts text NOT NULL
);


ALTER TABLE public.realm_localizations OWNER TO keycloak;

--
-- Name: realm_required_credential; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_required_credential (
    type character varying(255) NOT NULL,
    form_label character varying(255),
    input boolean DEFAULT false NOT NULL,
    secret boolean DEFAULT false NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_required_credential OWNER TO keycloak;

--
-- Name: realm_smtp_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_smtp_config (
    realm_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.realm_smtp_config OWNER TO keycloak;

--
-- Name: realm_supported_locales; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_supported_locales (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_supported_locales OWNER TO keycloak;

--
-- Name: redirect_uris; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.redirect_uris (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.redirect_uris OWNER TO keycloak;

--
-- Name: required_action_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.required_action_config (
    required_action_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.required_action_config OWNER TO keycloak;

--
-- Name: required_action_provider; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.required_action_provider (
    id character varying(36) NOT NULL,
    alias character varying(255),
    name character varying(255),
    realm_id character varying(36),
    enabled boolean DEFAULT false NOT NULL,
    default_action boolean DEFAULT false NOT NULL,
    provider_id character varying(255),
    priority integer
);


ALTER TABLE public.required_action_provider OWNER TO keycloak;

--
-- Name: resource_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    resource_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_attribute OWNER TO keycloak;

--
-- Name: resource_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_policy (
    resource_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_policy OWNER TO keycloak;

--
-- Name: resource_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_scope (
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_scope OWNER TO keycloak;

--
-- Name: resource_server; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server (
    id character varying(36) NOT NULL,
    allow_rs_remote_mgmt boolean DEFAULT false NOT NULL,
    policy_enforce_mode smallint NOT NULL,
    decision_strategy smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.resource_server OWNER TO keycloak;

--
-- Name: resource_server_perm_ticket; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_perm_ticket (
    id character varying(36) NOT NULL,
    owner character varying(255) NOT NULL,
    requester character varying(255) NOT NULL,
    created_timestamp bigint NOT NULL,
    granted_timestamp bigint,
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36),
    resource_server_id character varying(36) NOT NULL,
    policy_id character varying(36)
);


ALTER TABLE public.resource_server_perm_ticket OWNER TO keycloak;

--
-- Name: resource_server_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_policy (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255) NOT NULL,
    decision_strategy smallint,
    logic smallint,
    resource_server_id character varying(36) NOT NULL,
    owner character varying(255)
);


ALTER TABLE public.resource_server_policy OWNER TO keycloak;

--
-- Name: resource_server_resource; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_resource (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255),
    icon_uri character varying(255),
    owner character varying(255) NOT NULL,
    resource_server_id character varying(36) NOT NULL,
    owner_managed_access boolean DEFAULT false NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_resource OWNER TO keycloak;

--
-- Name: resource_server_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_scope (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    icon_uri character varying(255),
    resource_server_id character varying(36) NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_scope OWNER TO keycloak;

--
-- Name: resource_uris; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_uris (
    resource_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.resource_uris OWNER TO keycloak;

--
-- Name: role_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.role_attribute (
    id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255)
);


ALTER TABLE public.role_attribute OWNER TO keycloak;

--
-- Name: scope_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.scope_mapping (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_mapping OWNER TO keycloak;

--
-- Name: scope_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.scope_policy (
    scope_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_policy OWNER TO keycloak;

--
-- Name: user_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    user_id character varying(36) NOT NULL,
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);


ALTER TABLE public.user_attribute OWNER TO keycloak;

--
-- Name: user_consent; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(36) NOT NULL,
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.user_consent OWNER TO keycloak;

--
-- Name: user_consent_client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_consent_client_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.user_consent_client_scope OWNER TO keycloak;

--
-- Name: user_entity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_entity (
    id character varying(36) NOT NULL,
    email character varying(255),
    email_constraint character varying(255),
    email_verified boolean DEFAULT false NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    federation_link character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    realm_id character varying(255),
    username character varying(255),
    created_timestamp bigint,
    service_account_client_link character varying(255),
    not_before integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.user_entity OWNER TO keycloak;

--
-- Name: user_federation_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_config (
    user_federation_provider_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_config OWNER TO keycloak;

--
-- Name: user_federation_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    federation_provider_id character varying(36) NOT NULL,
    federation_mapper_type character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.user_federation_mapper OWNER TO keycloak;

--
-- Name: user_federation_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_mapper_config (
    user_federation_mapper_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_mapper_config OWNER TO keycloak;

--
-- Name: user_federation_provider; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_provider (
    id character varying(36) NOT NULL,
    changed_sync_period integer,
    display_name character varying(255),
    full_sync_period integer,
    last_sync integer,
    priority integer,
    provider_name character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.user_federation_provider OWNER TO keycloak;

--
-- Name: user_group_membership; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_group_membership OWNER TO keycloak;

--
-- Name: user_required_action; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_required_action (
    user_id character varying(36) NOT NULL,
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL
);


ALTER TABLE public.user_required_action OWNER TO keycloak;

--
-- Name: user_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_role_mapping (
    role_id character varying(255) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_role_mapping OWNER TO keycloak;

--
-- Name: user_session; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_session (
    id character varying(36) NOT NULL,
    auth_method character varying(255),
    ip_address character varying(255),
    last_session_refresh integer,
    login_username character varying(255),
    realm_id character varying(255),
    remember_me boolean DEFAULT false NOT NULL,
    started integer,
    user_id character varying(255),
    user_session_state integer,
    broker_session_id character varying(255),
    broker_user_id character varying(255)
);


ALTER TABLE public.user_session OWNER TO keycloak;

--
-- Name: user_session_note; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_session_note (
    user_session character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(2048)
);


ALTER TABLE public.user_session_note OWNER TO keycloak;

--
-- Name: username_login_failure; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.username_login_failure (
    realm_id character varying(36) NOT NULL,
    username character varying(255) NOT NULL,
    failed_login_not_before integer,
    last_failure bigint,
    last_ip_failure character varying(255),
    num_failures integer
);


ALTER TABLE public.username_login_failure OWNER TO keycloak;

--
-- Name: web_origins; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.web_origins (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.web_origins OWNER TO keycloak;

--
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.admin_event_entity (id, admin_event_time, realm_id, operation_type, auth_realm_id, auth_client_id, auth_user_id, ip_address, resource_path, representation, error, resource_type) FROM stdin;
\.


--
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.associated_policy (policy_id, associated_policy_id) FROM stdin;
\.


--
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_execution (id, alias, authenticator, realm_id, flow_id, requirement, priority, authenticator_flow, auth_flow_id, auth_config) FROM stdin;
4d8f549b-90d2-4d25-95c7-8ae15514d949	\N	auth-cookie	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	e8169ef4-e9b7-4817-afb5-c87ed1aef1b6	2	10	f	\N	\N
44ebbbcf-24f6-4433-9056-aead43346f5d	\N	auth-spnego	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	e8169ef4-e9b7-4817-afb5-c87ed1aef1b6	3	20	f	\N	\N
0c28195c-eaaf-4eca-bce9-d1e9dfd79d3d	\N	identity-provider-redirector	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	e8169ef4-e9b7-4817-afb5-c87ed1aef1b6	2	25	f	\N	\N
c6087e27-9e10-45e1-a593-e9551d9a5667	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	e8169ef4-e9b7-4817-afb5-c87ed1aef1b6	2	30	t	9a2b16bc-3fe8-4ce8-b453-ef6283ad39c4	\N
7c2d6668-f652-43d1-a9a1-4d54ac75ec91	\N	auth-username-password-form	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	9a2b16bc-3fe8-4ce8-b453-ef6283ad39c4	0	10	f	\N	\N
f9959d6f-992e-4186-a888-bbef9c976cd4	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	9a2b16bc-3fe8-4ce8-b453-ef6283ad39c4	1	20	t	fcaa2384-2632-4e00-a0bc-dcd5ef73acc3	\N
c42d156c-144c-494e-903f-9805ec0da989	\N	conditional-user-configured	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	fcaa2384-2632-4e00-a0bc-dcd5ef73acc3	0	10	f	\N	\N
22dacdf4-c024-4c5d-af70-8c39dc060d99	\N	auth-otp-form	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	fcaa2384-2632-4e00-a0bc-dcd5ef73acc3	0	20	f	\N	\N
d2781b6e-9e90-4d14-b3bc-4ad29a13bcf9	\N	direct-grant-validate-username	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	22e2c9ae-177f-4c26-a7ac-77d752959662	0	10	f	\N	\N
f4e21e80-2754-45f1-8d49-96e359124e41	\N	direct-grant-validate-password	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	22e2c9ae-177f-4c26-a7ac-77d752959662	0	20	f	\N	\N
2bc767af-3be8-4fa9-8741-77aa91922651	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	22e2c9ae-177f-4c26-a7ac-77d752959662	1	30	t	a5c7de2a-d6bd-4976-8759-2ecbdc7ebfce	\N
f045ce1f-ee88-469c-aaaf-746adf941d96	\N	conditional-user-configured	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a5c7de2a-d6bd-4976-8759-2ecbdc7ebfce	0	10	f	\N	\N
b3d70dea-3418-4505-9ec4-e02ccfa77b7a	\N	direct-grant-validate-otp	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a5c7de2a-d6bd-4976-8759-2ecbdc7ebfce	0	20	f	\N	\N
de91d24e-80b0-48ed-8302-8bd5921adea3	\N	registration-page-form	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	387f5edc-5521-4249-81e8-23ab6e913b6f	0	10	t	beed353e-f4a1-4535-9e60-34ca85647b63	\N
bd3aaad4-6a9a-4d2e-afde-3f0195996fbf	\N	registration-user-creation	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	beed353e-f4a1-4535-9e60-34ca85647b63	0	20	f	\N	\N
21bbc71f-0f54-4299-9f78-31e46abedbbf	\N	registration-password-action	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	beed353e-f4a1-4535-9e60-34ca85647b63	0	50	f	\N	\N
16da777c-7205-4221-adef-ccb029d624e2	\N	registration-recaptcha-action	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	beed353e-f4a1-4535-9e60-34ca85647b63	3	60	f	\N	\N
801881e4-b918-460d-b1c8-1004dab24c49	\N	registration-terms-and-conditions	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	beed353e-f4a1-4535-9e60-34ca85647b63	3	70	f	\N	\N
6b1995ea-4e55-4edb-a43b-5f2eb0c68ed3	\N	reset-credentials-choose-user	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	0421d5d5-3b86-4128-bed1-5d2758c93614	0	10	f	\N	\N
d37a1382-4a98-40b1-87f4-82eb6884a353	\N	reset-credential-email	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	0421d5d5-3b86-4128-bed1-5d2758c93614	0	20	f	\N	\N
044620c8-43b3-4dad-a3c8-46713355a166	\N	reset-password	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	0421d5d5-3b86-4128-bed1-5d2758c93614	0	30	f	\N	\N
36300abd-44fa-452b-b1c2-4801728e89d0	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	0421d5d5-3b86-4128-bed1-5d2758c93614	1	40	t	ec5922fd-3dca-47e1-b839-908ca4604bf0	\N
0e7ce5b5-ca7d-48ed-a2fe-74f105cecc6f	\N	conditional-user-configured	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ec5922fd-3dca-47e1-b839-908ca4604bf0	0	10	f	\N	\N
07740682-71ac-4a5b-b3c1-3abaf4a4c303	\N	reset-otp	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ec5922fd-3dca-47e1-b839-908ca4604bf0	0	20	f	\N	\N
552d4dff-8870-40e9-b376-d929c82a5715	\N	client-secret	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a2400932-ff2e-4aa3-94d3-d4cff8b4d68c	2	10	f	\N	\N
080ac7ad-ed6c-4b21-b2fe-e6f0f73d2cc3	\N	client-jwt	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a2400932-ff2e-4aa3-94d3-d4cff8b4d68c	2	20	f	\N	\N
a2fc3c68-baa6-42e5-8b25-b7fdd9eb014f	\N	client-secret-jwt	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a2400932-ff2e-4aa3-94d3-d4cff8b4d68c	2	30	f	\N	\N
ed1ba47c-8672-49d1-b764-433012e2f9d1	\N	client-x509	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a2400932-ff2e-4aa3-94d3-d4cff8b4d68c	2	40	f	\N	\N
21016ef4-0d53-44c6-9c04-ae84df671fc7	\N	idp-review-profile	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	6a9d3430-fc39-439d-9a3e-651e08a911f6	0	10	f	\N	4c639e7c-e70c-4940-91ad-1b8325328dbb
1e96d0b8-9441-40f6-b2a4-650a2e2eff24	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	6a9d3430-fc39-439d-9a3e-651e08a911f6	0	20	t	bc4358a6-657d-4e34-81c4-89273623242b	\N
2a928448-3557-462d-9929-5781ae16c597	\N	idp-create-user-if-unique	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	bc4358a6-657d-4e34-81c4-89273623242b	2	10	f	\N	d56a837e-e037-41af-b08f-a70d4dac1d0a
4d0389aa-1fc2-4294-9fd7-ae0dd6c423be	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	bc4358a6-657d-4e34-81c4-89273623242b	2	20	t	fd3e96b9-77af-48ef-949d-6251bb414d5c	\N
8c415b76-cbfa-4ccd-bc44-764339dff9bf	\N	idp-confirm-link	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	fd3e96b9-77af-48ef-949d-6251bb414d5c	0	10	f	\N	\N
311999aa-93ea-4f23-a84e-02a7346c48d5	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	fd3e96b9-77af-48ef-949d-6251bb414d5c	0	20	t	300aa6d5-515e-4b44-8a42-491206df0d22	\N
ba6cd512-dab0-4849-bf08-a70c4affe1ae	\N	idp-email-verification	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	300aa6d5-515e-4b44-8a42-491206df0d22	2	10	f	\N	\N
4a9855ec-933d-4da1-9bf2-3cc7d92133ec	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	300aa6d5-515e-4b44-8a42-491206df0d22	2	20	t	19c59296-3036-4cde-ad66-d15c5a6ef09c	\N
d35ff22b-e07b-4c2a-838a-a36ffc1335e1	\N	idp-username-password-form	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	19c59296-3036-4cde-ad66-d15c5a6ef09c	0	10	f	\N	\N
c1b4f477-b20f-4f88-b91f-7f05bc53208b	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	19c59296-3036-4cde-ad66-d15c5a6ef09c	1	20	t	caa0033b-918d-4e68-bb10-5c30443a3946	\N
8dd8ac6c-5673-4539-b53d-5e6a9383d004	\N	conditional-user-configured	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	caa0033b-918d-4e68-bb10-5c30443a3946	0	10	f	\N	\N
a6b42efd-cc82-4793-9647-e322c5a12412	\N	auth-otp-form	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	caa0033b-918d-4e68-bb10-5c30443a3946	0	20	f	\N	\N
201e340e-6929-478f-9a19-5d6c7a214770	\N	http-basic-authenticator	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	365823b6-89d6-4471-a81b-e49c9fe762d0	0	10	f	\N	\N
0e9ec6a5-21f7-44c2-a8f6-1428b6588e90	\N	docker-http-basic-authenticator	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	080eaeb0-281c-4ea4-8143-f2a75545e2a4	0	10	f	\N	\N
2a502b2e-9c92-49c6-bbfd-f3bf517bdcac	\N	auth-cookie	de12fda2-20f4-4d12-9465-963b62049436	2f650ed6-9dca-4fda-ac95-687639d4ac3a	2	10	f	\N	\N
2ce323ce-858a-4e89-94cf-e35e9b7295ab	\N	auth-spnego	de12fda2-20f4-4d12-9465-963b62049436	2f650ed6-9dca-4fda-ac95-687639d4ac3a	3	20	f	\N	\N
a8935ce4-4c6d-41ac-8413-b9050e37ea27	\N	identity-provider-redirector	de12fda2-20f4-4d12-9465-963b62049436	2f650ed6-9dca-4fda-ac95-687639d4ac3a	2	25	f	\N	\N
b0bcb844-49de-4d91-97e0-e3e860cb6e35	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	2f650ed6-9dca-4fda-ac95-687639d4ac3a	2	30	t	c5b76279-dbac-4c11-b121-fbf19d7e87c6	\N
917379cd-26fc-4caf-8e32-1373dccf9e36	\N	auth-username-password-form	de12fda2-20f4-4d12-9465-963b62049436	c5b76279-dbac-4c11-b121-fbf19d7e87c6	0	10	f	\N	\N
344d3ca6-d873-4d08-b982-4d911a721f2e	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	c5b76279-dbac-4c11-b121-fbf19d7e87c6	1	20	t	7b76d940-0a9c-44d1-bc6c-12eaeec5b69d	\N
d976669d-a949-4f85-a7f2-be9ff2e744c5	\N	conditional-user-configured	de12fda2-20f4-4d12-9465-963b62049436	7b76d940-0a9c-44d1-bc6c-12eaeec5b69d	0	10	f	\N	\N
e5e46ca0-45b2-4843-bbe4-e62b127e4e8c	\N	auth-otp-form	de12fda2-20f4-4d12-9465-963b62049436	7b76d940-0a9c-44d1-bc6c-12eaeec5b69d	0	20	f	\N	\N
f672d64b-a18d-49bc-89e0-a40797439848	\N	direct-grant-validate-username	de12fda2-20f4-4d12-9465-963b62049436	7f2c7d6d-f739-499b-9f24-a00543278e51	0	10	f	\N	\N
c19d9d8e-0f66-4eb1-b97e-77a6179729be	\N	direct-grant-validate-password	de12fda2-20f4-4d12-9465-963b62049436	7f2c7d6d-f739-499b-9f24-a00543278e51	0	20	f	\N	\N
32c5219e-8a2b-4d3a-ada0-6cddb06ccc3d	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	7f2c7d6d-f739-499b-9f24-a00543278e51	1	30	t	758d28dc-b2ef-44ad-949a-91ba8fc8035d	\N
4db17f86-953c-417c-a469-589aca44f3f8	\N	conditional-user-configured	de12fda2-20f4-4d12-9465-963b62049436	758d28dc-b2ef-44ad-949a-91ba8fc8035d	0	10	f	\N	\N
f06f7c5b-701d-4dd0-8e4e-fa8319df8975	\N	direct-grant-validate-otp	de12fda2-20f4-4d12-9465-963b62049436	758d28dc-b2ef-44ad-949a-91ba8fc8035d	0	20	f	\N	\N
89305f3d-1fc9-4059-8446-a2d00feeca51	\N	registration-page-form	de12fda2-20f4-4d12-9465-963b62049436	e530bc40-b37b-4540-a71a-6eb3cdc63b75	0	10	t	7c4928fd-a4d5-4533-873c-b060b05baaac	\N
53617d03-b298-4a43-bc4a-11f1c447a21f	\N	registration-user-creation	de12fda2-20f4-4d12-9465-963b62049436	7c4928fd-a4d5-4533-873c-b060b05baaac	0	20	f	\N	\N
c0325f49-d1dd-4c39-b8ee-6472d4d6e3c2	\N	registration-password-action	de12fda2-20f4-4d12-9465-963b62049436	7c4928fd-a4d5-4533-873c-b060b05baaac	0	50	f	\N	\N
695b1470-177e-424f-b362-274aeba2b471	\N	registration-recaptcha-action	de12fda2-20f4-4d12-9465-963b62049436	7c4928fd-a4d5-4533-873c-b060b05baaac	3	60	f	\N	\N
20f979ff-2167-498b-af07-415c68585cb9	\N	registration-terms-and-conditions	de12fda2-20f4-4d12-9465-963b62049436	7c4928fd-a4d5-4533-873c-b060b05baaac	3	70	f	\N	\N
8c5e1fbb-5bd7-4b9f-8ec4-c4d62b41547d	\N	reset-credentials-choose-user	de12fda2-20f4-4d12-9465-963b62049436	47c702b9-7b45-4e13-9ff6-04ba043e1dff	0	10	f	\N	\N
5d16e270-ecf6-45cc-8cfc-d80ac835a582	\N	reset-credential-email	de12fda2-20f4-4d12-9465-963b62049436	47c702b9-7b45-4e13-9ff6-04ba043e1dff	0	20	f	\N	\N
6d90d743-2981-45ae-a23b-5807ed9808e8	\N	reset-password	de12fda2-20f4-4d12-9465-963b62049436	47c702b9-7b45-4e13-9ff6-04ba043e1dff	0	30	f	\N	\N
8b65a3a5-b10b-410a-8735-ccd3dd0693dc	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	47c702b9-7b45-4e13-9ff6-04ba043e1dff	1	40	t	8c022881-a4fb-4642-be63-6647acad882d	\N
849684dd-d226-4cdb-8fb9-bb5a88eadacd	\N	conditional-user-configured	de12fda2-20f4-4d12-9465-963b62049436	8c022881-a4fb-4642-be63-6647acad882d	0	10	f	\N	\N
430538e5-6831-4c86-98c8-a6c2811702bd	\N	reset-otp	de12fda2-20f4-4d12-9465-963b62049436	8c022881-a4fb-4642-be63-6647acad882d	0	20	f	\N	\N
2e02b3d8-5353-4f4f-b1f7-a446eb565347	\N	client-secret	de12fda2-20f4-4d12-9465-963b62049436	c984575a-95b5-418e-93e5-df2c811a6dbc	2	10	f	\N	\N
603d3d37-9dd7-492d-a3ea-5752fb0f886e	\N	client-jwt	de12fda2-20f4-4d12-9465-963b62049436	c984575a-95b5-418e-93e5-df2c811a6dbc	2	20	f	\N	\N
d780310e-1ee7-43b3-9553-0ddc6e7a64c1	\N	client-secret-jwt	de12fda2-20f4-4d12-9465-963b62049436	c984575a-95b5-418e-93e5-df2c811a6dbc	2	30	f	\N	\N
153321a8-474a-41cf-8005-0f57be1356ba	\N	client-x509	de12fda2-20f4-4d12-9465-963b62049436	c984575a-95b5-418e-93e5-df2c811a6dbc	2	40	f	\N	\N
cbdf7b54-155a-42b2-8876-bfee6723b3b9	\N	idp-review-profile	de12fda2-20f4-4d12-9465-963b62049436	f52b4757-2f53-47ac-976d-762bf71be4a6	0	10	f	\N	19a34c3f-b541-498b-aa23-873c1d666254
ffc56425-757f-4628-af1c-6edc0a6732be	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	f52b4757-2f53-47ac-976d-762bf71be4a6	0	20	t	60c0f5b6-c933-4011-ba1f-8390c12a5fff	\N
e7ce2322-451e-479b-91be-fd18ec34e400	\N	idp-create-user-if-unique	de12fda2-20f4-4d12-9465-963b62049436	60c0f5b6-c933-4011-ba1f-8390c12a5fff	2	10	f	\N	8d5813d7-7caf-4a99-bce9-03e84c703880
1d07e31d-3e61-4d64-9d0c-34ad726cfc27	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	60c0f5b6-c933-4011-ba1f-8390c12a5fff	2	20	t	3012e797-a72e-475a-a317-56276b297abc	\N
f91be7e0-464a-4120-8ba8-e1f6997fae07	\N	idp-confirm-link	de12fda2-20f4-4d12-9465-963b62049436	3012e797-a72e-475a-a317-56276b297abc	0	10	f	\N	\N
22ff13f0-babb-44ee-93eb-90414ce36ed5	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	3012e797-a72e-475a-a317-56276b297abc	0	20	t	e9509946-fc8d-4d2a-b0ab-a8dfeaca61c8	\N
fed811fb-a14d-424f-a95c-f02f8229a175	\N	idp-email-verification	de12fda2-20f4-4d12-9465-963b62049436	e9509946-fc8d-4d2a-b0ab-a8dfeaca61c8	2	10	f	\N	\N
69c0fc9a-4328-415a-b8a1-718f2e7b057e	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	e9509946-fc8d-4d2a-b0ab-a8dfeaca61c8	2	20	t	2a17e980-2b2d-4db2-9189-a1a931c91883	\N
cbada2bf-8e49-4522-8d72-d29ec5e4fe60	\N	idp-username-password-form	de12fda2-20f4-4d12-9465-963b62049436	2a17e980-2b2d-4db2-9189-a1a931c91883	0	10	f	\N	\N
7bb6fbcb-fa6c-4098-b150-53beb1dc84d2	\N	\N	de12fda2-20f4-4d12-9465-963b62049436	2a17e980-2b2d-4db2-9189-a1a931c91883	1	20	t	0146bef5-0775-45c4-b98a-d1b6634b641b	\N
2bdc0fd1-a4e5-43eb-a2ab-b16b2265bf5b	\N	conditional-user-configured	de12fda2-20f4-4d12-9465-963b62049436	0146bef5-0775-45c4-b98a-d1b6634b641b	0	10	f	\N	\N
468e9497-da88-4e3e-a1d7-c87a322c14fc	\N	auth-otp-form	de12fda2-20f4-4d12-9465-963b62049436	0146bef5-0775-45c4-b98a-d1b6634b641b	0	20	f	\N	\N
ed3d1365-6a0a-404c-8689-ffe4377cea2d	\N	http-basic-authenticator	de12fda2-20f4-4d12-9465-963b62049436	a1d674be-48aa-401c-a4bb-2cca31748afd	0	10	f	\N	\N
697ce949-ee0d-48f9-a3b3-f1b4b4865624	\N	docker-http-basic-authenticator	de12fda2-20f4-4d12-9465-963b62049436	946ebd05-b7b1-4da9-bb18-18dbad9bb5b5	0	10	f	\N	\N
\.


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
e8169ef4-e9b7-4817-afb5-c87ed1aef1b6	browser	browser based authentication	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	t	t
9a2b16bc-3fe8-4ce8-b453-ef6283ad39c4	forms	Username, password, otp and other auth forms.	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
fcaa2384-2632-4e00-a0bc-dcd5ef73acc3	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
22e2c9ae-177f-4c26-a7ac-77d752959662	direct grant	OpenID Connect Resource Owner Grant	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	t	t
a5c7de2a-d6bd-4976-8759-2ecbdc7ebfce	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
387f5edc-5521-4249-81e8-23ab6e913b6f	registration	registration flow	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	t	t
beed353e-f4a1-4535-9e60-34ca85647b63	registration form	registration form	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	form-flow	f	t
0421d5d5-3b86-4128-bed1-5d2758c93614	reset credentials	Reset credentials for a user if they forgot their password or something	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	t	t
ec5922fd-3dca-47e1-b839-908ca4604bf0	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
a2400932-ff2e-4aa3-94d3-d4cff8b4d68c	clients	Base authentication for clients	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	client-flow	t	t
6a9d3430-fc39-439d-9a3e-651e08a911f6	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	t	t
bc4358a6-657d-4e34-81c4-89273623242b	User creation or linking	Flow for the existing/non-existing user alternatives	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
fd3e96b9-77af-48ef-949d-6251bb414d5c	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
300aa6d5-515e-4b44-8a42-491206df0d22	Account verification options	Method with which to verity the existing account	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
19c59296-3036-4cde-ad66-d15c5a6ef09c	Verify Existing Account by Re-authentication	Reauthentication of existing account	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
caa0033b-918d-4e68-bb10-5c30443a3946	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	f	t
365823b6-89d6-4471-a81b-e49c9fe762d0	saml ecp	SAML ECP Profile Authentication Flow	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	t	t
080eaeb0-281c-4ea4-8143-f2a75545e2a4	docker auth	Used by Docker clients to authenticate against the IDP	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	basic-flow	t	t
2f650ed6-9dca-4fda-ac95-687639d4ac3a	browser	browser based authentication	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	t	t
c5b76279-dbac-4c11-b121-fbf19d7e87c6	forms	Username, password, otp and other auth forms.	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
7b76d940-0a9c-44d1-bc6c-12eaeec5b69d	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
7f2c7d6d-f739-499b-9f24-a00543278e51	direct grant	OpenID Connect Resource Owner Grant	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	t	t
758d28dc-b2ef-44ad-949a-91ba8fc8035d	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
e530bc40-b37b-4540-a71a-6eb3cdc63b75	registration	registration flow	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	t	t
7c4928fd-a4d5-4533-873c-b060b05baaac	registration form	registration form	de12fda2-20f4-4d12-9465-963b62049436	form-flow	f	t
47c702b9-7b45-4e13-9ff6-04ba043e1dff	reset credentials	Reset credentials for a user if they forgot their password or something	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	t	t
8c022881-a4fb-4642-be63-6647acad882d	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
c984575a-95b5-418e-93e5-df2c811a6dbc	clients	Base authentication for clients	de12fda2-20f4-4d12-9465-963b62049436	client-flow	t	t
f52b4757-2f53-47ac-976d-762bf71be4a6	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	t	t
60c0f5b6-c933-4011-ba1f-8390c12a5fff	User creation or linking	Flow for the existing/non-existing user alternatives	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
3012e797-a72e-475a-a317-56276b297abc	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
e9509946-fc8d-4d2a-b0ab-a8dfeaca61c8	Account verification options	Method with which to verity the existing account	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
2a17e980-2b2d-4db2-9189-a1a931c91883	Verify Existing Account by Re-authentication	Reauthentication of existing account	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
0146bef5-0775-45c4-b98a-d1b6634b641b	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	f	t
a1d674be-48aa-401c-a4bb-2cca31748afd	saml ecp	SAML ECP Profile Authentication Flow	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	t	t
946ebd05-b7b1-4da9-bb18-18dbad9bb5b5	docker auth	Used by Docker clients to authenticate against the IDP	de12fda2-20f4-4d12-9465-963b62049436	basic-flow	t	t
\.


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
4c639e7c-e70c-4940-91ad-1b8325328dbb	review profile config	0d1a9a29-65d3-423c-8d0d-bbce102b38e3
d56a837e-e037-41af-b08f-a70d4dac1d0a	create unique user config	0d1a9a29-65d3-423c-8d0d-bbce102b38e3
19a34c3f-b541-498b-aa23-873c1d666254	review profile config	de12fda2-20f4-4d12-9465-963b62049436
8d5813d7-7caf-4a99-bce9-03e84c703880	create unique user config	de12fda2-20f4-4d12-9465-963b62049436
\.


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
4c639e7c-e70c-4940-91ad-1b8325328dbb	missing	update.profile.on.first.login
d56a837e-e037-41af-b08f-a70d4dac1d0a	false	require.password.update.after.registration
19a34c3f-b541-498b-aa23-873c1d666254	missing	update.profile.on.first.login
8d5813d7-7caf-4a99-bce9-03e84c703880	false	require.password.update.after.registration
\.


--
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.broker_link (identity_provider, storage_provider_id, realm_id, broker_user_id, broker_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client (id, enabled, full_scope_allowed, client_id, not_before, public_client, secret, base_url, bearer_only, management_url, surrogate_auth_required, realm_id, protocol, node_rereg_timeout, frontchannel_logout, consent_required, name, service_accounts_enabled, client_authenticator_type, root_url, description, registration_token, standard_flow_enabled, implicit_flow_enabled, direct_access_grants_enabled, always_display_in_console) FROM stdin;
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	f	master-realm	0	f	\N	\N	t	\N	f	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N	0	f	f	master Realm	f	client-secret	\N	\N	\N	t	f	f	f
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	f	account	0	t	\N	/realms/master/account/	f	\N	f	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
c2334f0f-b958-492a-a19e-1caee6b0c80c	t	f	account-console	0	t	\N	/realms/master/account/	f	\N	f	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
4d0e9a29-7e44-42e0-b996-06e717c10a95	t	f	broker	0	f	\N	\N	t	\N	f	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
616302de-d891-419a-b143-7fd14bd78988	t	f	security-admin-console	0	t	\N	/admin/master/console/	f	\N	f	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	t	f	admin-cli	0	t	\N	\N	f	\N	f	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
ff410b6d-6331-4fdd-9e62-9f2341d92885	t	f	infra-realm	0	f	\N	\N	t	\N	f	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N	0	f	f	infra Realm	f	client-secret	\N	\N	\N	t	f	f	f
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	f	realm-management	0	f	\N	\N	t	\N	f	de12fda2-20f4-4d12-9465-963b62049436	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f
23e16926-946b-450b-99f2-b6c8851e8b9a	t	f	account	0	t	\N	/realms/infra/account/	f	\N	f	de12fda2-20f4-4d12-9465-963b62049436	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	t	f	account-console	0	t	\N	/realms/infra/account/	f	\N	f	de12fda2-20f4-4d12-9465-963b62049436	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
730c4097-9ae0-407c-809a-2c2d8f831486	t	f	broker	0	f	\N	\N	t	\N	f	de12fda2-20f4-4d12-9465-963b62049436	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
402292aa-3c17-4583-a05c-465e509cff53	t	f	security-admin-console	0	t	\N	/admin/infra/console/	f	\N	f	de12fda2-20f4-4d12-9465-963b62049436	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
0027133b-52a3-47e0-9bee-b3ee934469d5	t	f	admin-cli	0	t	\N	\N	f	\N	f	de12fda2-20f4-4d12-9465-963b62049436	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
9a1f7220-2322-4c4f-97d9-b3a049c093d1	t	t	minio	0	f	OlXJhYsCS9RbnxdKQW62NWBvV6L71kcZ		f		f	de12fda2-20f4-4d12-9465-963b62049436	openid-connect	-1	t	f		f	client-secret			\N	t	f	t	f
\.


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_attributes (client_id, name, value) FROM stdin;
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	post.logout.redirect.uris	+
c2334f0f-b958-492a-a19e-1caee6b0c80c	post.logout.redirect.uris	+
c2334f0f-b958-492a-a19e-1caee6b0c80c	pkce.code.challenge.method	S256
616302de-d891-419a-b143-7fd14bd78988	post.logout.redirect.uris	+
616302de-d891-419a-b143-7fd14bd78988	pkce.code.challenge.method	S256
23e16926-946b-450b-99f2-b6c8851e8b9a	post.logout.redirect.uris	+
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	post.logout.redirect.uris	+
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	pkce.code.challenge.method	S256
402292aa-3c17-4583-a05c-465e509cff53	post.logout.redirect.uris	+
402292aa-3c17-4583-a05c-465e509cff53	pkce.code.challenge.method	S256
9a1f7220-2322-4c4f-97d9-b3a049c093d1	client.secret.creation.time	1773533304
9a1f7220-2322-4c4f-97d9-b3a049c093d1	oauth2.device.authorization.grant.enabled	false
9a1f7220-2322-4c4f-97d9-b3a049c093d1	oidc.ciba.grant.enabled	false
9a1f7220-2322-4c4f-97d9-b3a049c093d1	backchannel.logout.session.required	true
9a1f7220-2322-4c4f-97d9-b3a049c093d1	backchannel.logout.revoke.offline.tokens	false
9a1f7220-2322-4c4f-97d9-b3a049c093d1	display.on.consent.screen	false
9a1f7220-2322-4c4f-97d9-b3a049c093d1	post.logout.redirect.uris	http://localhost:8080
\.


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
\.


--
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_initial_access (id, realm_id, "timestamp", expiration, count, remaining_count) FROM stdin;
\.


--
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_node_registrations (client_id, value, name) FROM stdin;
\.


--
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope (id, name, realm_id, description, protocol) FROM stdin;
b4e8b63c-9583-4539-9f54-9b14960cedbf	offline_access	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect built-in scope: offline_access	openid-connect
6d4b3d32-1aee-4a86-83cc-731edab1ba5b	role_list	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	SAML role list	saml
c4ad38f4-66d1-4493-b720-efbda3631008	profile	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect built-in scope: profile	openid-connect
e62af729-e080-4944-9a24-6c9ce4421f55	email	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect built-in scope: email	openid-connect
b76b17b1-7829-456e-b885-9be7b490e9ec	address	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect built-in scope: address	openid-connect
f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	phone	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect built-in scope: phone	openid-connect
cb390b44-68fa-457d-a606-f5d917223193	roles	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect scope for add user roles to the access token	openid-connect
c60147f8-d097-43eb-91ff-78de7a97c9ee	web-origins	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect scope for add allowed web origins to the access token	openid-connect
6c008837-3497-45e9-9764-04cd9df96198	microprofile-jwt	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	Microprofile - JWT built-in scope	openid-connect
eff8cdf8-2ffd-4eea-bc6b-33462c789db8	acr	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
1ec94178-a969-4a39-aee6-1d42a0f9c42b	offline_access	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect built-in scope: offline_access	openid-connect
6cccfe42-cb82-43db-bfb8-7d53bd1fb7f7	role_list	de12fda2-20f4-4d12-9465-963b62049436	SAML role list	saml
f3b7d017-716d-42a8-b455-cbe553f12ef8	profile	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect built-in scope: profile	openid-connect
d0c7277f-8e8a-40bd-9d0a-5bb49d930384	email	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect built-in scope: email	openid-connect
7b1a3f54-fd5b-4648-986d-7103f88e9ef7	address	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect built-in scope: address	openid-connect
7e4a2db8-a15d-46d6-a77d-33625844fbd2	phone	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect built-in scope: phone	openid-connect
4525c9bb-e7d2-400a-85f0-a39402da0adb	roles	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect scope for add user roles to the access token	openid-connect
66fb6575-fad4-44b7-b495-c0395d3f3cf0	web-origins	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect scope for add allowed web origins to the access token	openid-connect
22ae09db-1f0e-4453-8513-b37e88ef513e	microprofile-jwt	de12fda2-20f4-4d12-9465-963b62049436	Microprofile - JWT built-in scope	openid-connect
59305467-fc0f-45ba-b8c4-4ea5bcc7f912	acr	de12fda2-20f4-4d12-9465-963b62049436	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
\.


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
b4e8b63c-9583-4539-9f54-9b14960cedbf	true	display.on.consent.screen
b4e8b63c-9583-4539-9f54-9b14960cedbf	${offlineAccessScopeConsentText}	consent.screen.text
6d4b3d32-1aee-4a86-83cc-731edab1ba5b	true	display.on.consent.screen
6d4b3d32-1aee-4a86-83cc-731edab1ba5b	${samlRoleListScopeConsentText}	consent.screen.text
c4ad38f4-66d1-4493-b720-efbda3631008	true	display.on.consent.screen
c4ad38f4-66d1-4493-b720-efbda3631008	${profileScopeConsentText}	consent.screen.text
c4ad38f4-66d1-4493-b720-efbda3631008	true	include.in.token.scope
e62af729-e080-4944-9a24-6c9ce4421f55	true	display.on.consent.screen
e62af729-e080-4944-9a24-6c9ce4421f55	${emailScopeConsentText}	consent.screen.text
e62af729-e080-4944-9a24-6c9ce4421f55	true	include.in.token.scope
b76b17b1-7829-456e-b885-9be7b490e9ec	true	display.on.consent.screen
b76b17b1-7829-456e-b885-9be7b490e9ec	${addressScopeConsentText}	consent.screen.text
b76b17b1-7829-456e-b885-9be7b490e9ec	true	include.in.token.scope
f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	true	display.on.consent.screen
f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	${phoneScopeConsentText}	consent.screen.text
f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	true	include.in.token.scope
cb390b44-68fa-457d-a606-f5d917223193	true	display.on.consent.screen
cb390b44-68fa-457d-a606-f5d917223193	${rolesScopeConsentText}	consent.screen.text
cb390b44-68fa-457d-a606-f5d917223193	false	include.in.token.scope
c60147f8-d097-43eb-91ff-78de7a97c9ee	false	display.on.consent.screen
c60147f8-d097-43eb-91ff-78de7a97c9ee		consent.screen.text
c60147f8-d097-43eb-91ff-78de7a97c9ee	false	include.in.token.scope
6c008837-3497-45e9-9764-04cd9df96198	false	display.on.consent.screen
6c008837-3497-45e9-9764-04cd9df96198	true	include.in.token.scope
eff8cdf8-2ffd-4eea-bc6b-33462c789db8	false	display.on.consent.screen
eff8cdf8-2ffd-4eea-bc6b-33462c789db8	false	include.in.token.scope
1ec94178-a969-4a39-aee6-1d42a0f9c42b	true	display.on.consent.screen
1ec94178-a969-4a39-aee6-1d42a0f9c42b	${offlineAccessScopeConsentText}	consent.screen.text
6cccfe42-cb82-43db-bfb8-7d53bd1fb7f7	true	display.on.consent.screen
6cccfe42-cb82-43db-bfb8-7d53bd1fb7f7	${samlRoleListScopeConsentText}	consent.screen.text
f3b7d017-716d-42a8-b455-cbe553f12ef8	true	display.on.consent.screen
f3b7d017-716d-42a8-b455-cbe553f12ef8	${profileScopeConsentText}	consent.screen.text
f3b7d017-716d-42a8-b455-cbe553f12ef8	true	include.in.token.scope
d0c7277f-8e8a-40bd-9d0a-5bb49d930384	true	display.on.consent.screen
d0c7277f-8e8a-40bd-9d0a-5bb49d930384	${emailScopeConsentText}	consent.screen.text
d0c7277f-8e8a-40bd-9d0a-5bb49d930384	true	include.in.token.scope
7b1a3f54-fd5b-4648-986d-7103f88e9ef7	true	display.on.consent.screen
7b1a3f54-fd5b-4648-986d-7103f88e9ef7	${addressScopeConsentText}	consent.screen.text
7b1a3f54-fd5b-4648-986d-7103f88e9ef7	true	include.in.token.scope
7e4a2db8-a15d-46d6-a77d-33625844fbd2	true	display.on.consent.screen
7e4a2db8-a15d-46d6-a77d-33625844fbd2	${phoneScopeConsentText}	consent.screen.text
7e4a2db8-a15d-46d6-a77d-33625844fbd2	true	include.in.token.scope
4525c9bb-e7d2-400a-85f0-a39402da0adb	true	display.on.consent.screen
4525c9bb-e7d2-400a-85f0-a39402da0adb	${rolesScopeConsentText}	consent.screen.text
4525c9bb-e7d2-400a-85f0-a39402da0adb	false	include.in.token.scope
66fb6575-fad4-44b7-b495-c0395d3f3cf0	false	display.on.consent.screen
66fb6575-fad4-44b7-b495-c0395d3f3cf0		consent.screen.text
66fb6575-fad4-44b7-b495-c0395d3f3cf0	false	include.in.token.scope
22ae09db-1f0e-4453-8513-b37e88ef513e	false	display.on.consent.screen
22ae09db-1f0e-4453-8513-b37e88ef513e	true	include.in.token.scope
59305467-fc0f-45ba-b8c4-4ea5bcc7f912	false	display.on.consent.screen
59305467-fc0f-45ba-b8c4-4ea5bcc7f912	false	include.in.token.scope
\.


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	cb390b44-68fa-457d-a606-f5d917223193	t
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	c60147f8-d097-43eb-91ff-78de7a97c9ee	t
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	c4ad38f4-66d1-4493-b720-efbda3631008	t
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	e62af729-e080-4944-9a24-6c9ce4421f55	t
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	eff8cdf8-2ffd-4eea-bc6b-33462c789db8	t
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	b76b17b1-7829-456e-b885-9be7b490e9ec	f
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	6c008837-3497-45e9-9764-04cd9df96198	f
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	b4e8b63c-9583-4539-9f54-9b14960cedbf	f
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	f
c2334f0f-b958-492a-a19e-1caee6b0c80c	cb390b44-68fa-457d-a606-f5d917223193	t
c2334f0f-b958-492a-a19e-1caee6b0c80c	c60147f8-d097-43eb-91ff-78de7a97c9ee	t
c2334f0f-b958-492a-a19e-1caee6b0c80c	c4ad38f4-66d1-4493-b720-efbda3631008	t
c2334f0f-b958-492a-a19e-1caee6b0c80c	e62af729-e080-4944-9a24-6c9ce4421f55	t
c2334f0f-b958-492a-a19e-1caee6b0c80c	eff8cdf8-2ffd-4eea-bc6b-33462c789db8	t
c2334f0f-b958-492a-a19e-1caee6b0c80c	b76b17b1-7829-456e-b885-9be7b490e9ec	f
c2334f0f-b958-492a-a19e-1caee6b0c80c	6c008837-3497-45e9-9764-04cd9df96198	f
c2334f0f-b958-492a-a19e-1caee6b0c80c	b4e8b63c-9583-4539-9f54-9b14960cedbf	f
c2334f0f-b958-492a-a19e-1caee6b0c80c	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	f
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	cb390b44-68fa-457d-a606-f5d917223193	t
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	c60147f8-d097-43eb-91ff-78de7a97c9ee	t
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	c4ad38f4-66d1-4493-b720-efbda3631008	t
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	e62af729-e080-4944-9a24-6c9ce4421f55	t
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	eff8cdf8-2ffd-4eea-bc6b-33462c789db8	t
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	b76b17b1-7829-456e-b885-9be7b490e9ec	f
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	6c008837-3497-45e9-9764-04cd9df96198	f
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	b4e8b63c-9583-4539-9f54-9b14960cedbf	f
6e0a6f1d-a45b-4fff-bb2d-d1a127815d82	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	f
4d0e9a29-7e44-42e0-b996-06e717c10a95	cb390b44-68fa-457d-a606-f5d917223193	t
4d0e9a29-7e44-42e0-b996-06e717c10a95	c60147f8-d097-43eb-91ff-78de7a97c9ee	t
4d0e9a29-7e44-42e0-b996-06e717c10a95	c4ad38f4-66d1-4493-b720-efbda3631008	t
4d0e9a29-7e44-42e0-b996-06e717c10a95	e62af729-e080-4944-9a24-6c9ce4421f55	t
4d0e9a29-7e44-42e0-b996-06e717c10a95	eff8cdf8-2ffd-4eea-bc6b-33462c789db8	t
4d0e9a29-7e44-42e0-b996-06e717c10a95	b76b17b1-7829-456e-b885-9be7b490e9ec	f
4d0e9a29-7e44-42e0-b996-06e717c10a95	6c008837-3497-45e9-9764-04cd9df96198	f
4d0e9a29-7e44-42e0-b996-06e717c10a95	b4e8b63c-9583-4539-9f54-9b14960cedbf	f
4d0e9a29-7e44-42e0-b996-06e717c10a95	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	f
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	cb390b44-68fa-457d-a606-f5d917223193	t
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	c60147f8-d097-43eb-91ff-78de7a97c9ee	t
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	c4ad38f4-66d1-4493-b720-efbda3631008	t
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	e62af729-e080-4944-9a24-6c9ce4421f55	t
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	eff8cdf8-2ffd-4eea-bc6b-33462c789db8	t
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	b76b17b1-7829-456e-b885-9be7b490e9ec	f
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	6c008837-3497-45e9-9764-04cd9df96198	f
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	b4e8b63c-9583-4539-9f54-9b14960cedbf	f
97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	f
616302de-d891-419a-b143-7fd14bd78988	cb390b44-68fa-457d-a606-f5d917223193	t
616302de-d891-419a-b143-7fd14bd78988	c60147f8-d097-43eb-91ff-78de7a97c9ee	t
616302de-d891-419a-b143-7fd14bd78988	c4ad38f4-66d1-4493-b720-efbda3631008	t
616302de-d891-419a-b143-7fd14bd78988	e62af729-e080-4944-9a24-6c9ce4421f55	t
616302de-d891-419a-b143-7fd14bd78988	eff8cdf8-2ffd-4eea-bc6b-33462c789db8	t
616302de-d891-419a-b143-7fd14bd78988	b76b17b1-7829-456e-b885-9be7b490e9ec	f
616302de-d891-419a-b143-7fd14bd78988	6c008837-3497-45e9-9764-04cd9df96198	f
616302de-d891-419a-b143-7fd14bd78988	b4e8b63c-9583-4539-9f54-9b14960cedbf	f
616302de-d891-419a-b143-7fd14bd78988	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	f
23e16926-946b-450b-99f2-b6c8851e8b9a	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
23e16926-946b-450b-99f2-b6c8851e8b9a	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
23e16926-946b-450b-99f2-b6c8851e8b9a	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
23e16926-946b-450b-99f2-b6c8851e8b9a	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
23e16926-946b-450b-99f2-b6c8851e8b9a	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
23e16926-946b-450b-99f2-b6c8851e8b9a	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
23e16926-946b-450b-99f2-b6c8851e8b9a	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
23e16926-946b-450b-99f2-b6c8851e8b9a	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
23e16926-946b-450b-99f2-b6c8851e8b9a	22ae09db-1f0e-4453-8513-b37e88ef513e	f
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	22ae09db-1f0e-4453-8513-b37e88ef513e	f
0027133b-52a3-47e0-9bee-b3ee934469d5	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
0027133b-52a3-47e0-9bee-b3ee934469d5	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
0027133b-52a3-47e0-9bee-b3ee934469d5	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
0027133b-52a3-47e0-9bee-b3ee934469d5	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
0027133b-52a3-47e0-9bee-b3ee934469d5	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
0027133b-52a3-47e0-9bee-b3ee934469d5	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
0027133b-52a3-47e0-9bee-b3ee934469d5	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
0027133b-52a3-47e0-9bee-b3ee934469d5	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
0027133b-52a3-47e0-9bee-b3ee934469d5	22ae09db-1f0e-4453-8513-b37e88ef513e	f
730c4097-9ae0-407c-809a-2c2d8f831486	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
730c4097-9ae0-407c-809a-2c2d8f831486	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
730c4097-9ae0-407c-809a-2c2d8f831486	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
730c4097-9ae0-407c-809a-2c2d8f831486	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
730c4097-9ae0-407c-809a-2c2d8f831486	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
730c4097-9ae0-407c-809a-2c2d8f831486	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
730c4097-9ae0-407c-809a-2c2d8f831486	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
730c4097-9ae0-407c-809a-2c2d8f831486	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
730c4097-9ae0-407c-809a-2c2d8f831486	22ae09db-1f0e-4453-8513-b37e88ef513e	f
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
eaeac2ab-032f-4a13-8ada-2df1ebe5de92	22ae09db-1f0e-4453-8513-b37e88ef513e	f
402292aa-3c17-4583-a05c-465e509cff53	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
402292aa-3c17-4583-a05c-465e509cff53	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
402292aa-3c17-4583-a05c-465e509cff53	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
402292aa-3c17-4583-a05c-465e509cff53	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
402292aa-3c17-4583-a05c-465e509cff53	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
402292aa-3c17-4583-a05c-465e509cff53	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
402292aa-3c17-4583-a05c-465e509cff53	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
402292aa-3c17-4583-a05c-465e509cff53	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
402292aa-3c17-4583-a05c-465e509cff53	22ae09db-1f0e-4453-8513-b37e88ef513e	f
9a1f7220-2322-4c4f-97d9-b3a049c093d1	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
9a1f7220-2322-4c4f-97d9-b3a049c093d1	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
9a1f7220-2322-4c4f-97d9-b3a049c093d1	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
9a1f7220-2322-4c4f-97d9-b3a049c093d1	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
9a1f7220-2322-4c4f-97d9-b3a049c093d1	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
9a1f7220-2322-4c4f-97d9-b3a049c093d1	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
9a1f7220-2322-4c4f-97d9-b3a049c093d1	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
9a1f7220-2322-4c4f-97d9-b3a049c093d1	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
9a1f7220-2322-4c4f-97d9-b3a049c093d1	22ae09db-1f0e-4453-8513-b37e88ef513e	f
\.


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
b4e8b63c-9583-4539-9f54-9b14960cedbf	c56ba56d-c121-4746-a670-5f07f53fa44d
1ec94178-a969-4a39-aee6-1d42a0f9c42b	09bffe4e-aee6-492c-a62b-720a6b72515e
\.


--
-- Data for Name: client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session (id, client_id, redirect_uri, state, "timestamp", session_id, auth_method, realm_id, auth_user_id, current_action) FROM stdin;
\.


--
-- Data for Name: client_session_auth_status; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_auth_status (authenticator, status, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_note (name, value, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_prot_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_prot_mapper (protocol_mapper_id, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_role (role_id, client_session) FROM stdin;
\.


--
-- Data for Name: client_user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_user_session_note (name, value, client_session) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component (id, name, parent_id, provider_id, provider_type, realm_id, sub_type) FROM stdin;
a8425c8c-8260-4546-96e3-ccb50d1ad269	Trusted Hosts	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	anonymous
c14a56c6-7b92-4047-b1d1-750c821c897b	Consent Required	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	anonymous
58b4d5b6-b13f-4a63-aa13-e016e02fc61d	Full Scope Disabled	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	anonymous
220adc34-0905-4267-b5cc-8ad95b39ee3f	Max Clients Limit	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	anonymous
ccb17fc1-4986-443e-938a-fc57d0443810	Allowed Protocol Mapper Types	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	anonymous
41b91810-e2bd-4c29-87c1-8ce856d0c468	Allowed Client Scopes	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	anonymous
7012450e-f835-4891-ac92-a15353db2549	Allowed Protocol Mapper Types	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	authenticated
7572e662-0c60-4680-a567-64aa5b8a0dd9	Allowed Client Scopes	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	authenticated
35e49078-52bc-4fd9-889d-334b7265642d	rsa-generated	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	rsa-generated	org.keycloak.keys.KeyProvider	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N
3913890c-5c32-4a4b-bf2d-4aec4bb59c5f	rsa-enc-generated	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	rsa-enc-generated	org.keycloak.keys.KeyProvider	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N
339bab2c-5307-48cb-bb91-66a19ba0f9e8	hmac-generated-hs512	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	hmac-generated	org.keycloak.keys.KeyProvider	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N
0f916f72-646c-4256-9b11-1606c6f0c081	aes-generated	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	aes-generated	org.keycloak.keys.KeyProvider	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N
3803210a-e171-4099-8208-222cc2726336	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	declarative-user-profile	org.keycloak.userprofile.UserProfileProvider	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N
8c90e3ff-a4ba-42a5-aa6f-84f7c504a849	rsa-generated	de12fda2-20f4-4d12-9465-963b62049436	rsa-generated	org.keycloak.keys.KeyProvider	de12fda2-20f4-4d12-9465-963b62049436	\N
dd3db09c-0b51-4b17-b76d-0e89824ea6ca	rsa-enc-generated	de12fda2-20f4-4d12-9465-963b62049436	rsa-enc-generated	org.keycloak.keys.KeyProvider	de12fda2-20f4-4d12-9465-963b62049436	\N
e048e473-f5e3-4a56-adb4-fe65c51adf06	hmac-generated-hs512	de12fda2-20f4-4d12-9465-963b62049436	hmac-generated	org.keycloak.keys.KeyProvider	de12fda2-20f4-4d12-9465-963b62049436	\N
0cd5bf29-503c-4858-b2da-e8e141dba8fb	aes-generated	de12fda2-20f4-4d12-9465-963b62049436	aes-generated	org.keycloak.keys.KeyProvider	de12fda2-20f4-4d12-9465-963b62049436	\N
566908e2-87dd-45fe-b2ea-63f39bceb3e3	Trusted Hosts	de12fda2-20f4-4d12-9465-963b62049436	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	anonymous
3ffeae6d-6bdb-498e-ab90-d4772dabcef5	Consent Required	de12fda2-20f4-4d12-9465-963b62049436	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	anonymous
e14e1db4-299a-4e3e-b310-aeb105d808c2	Full Scope Disabled	de12fda2-20f4-4d12-9465-963b62049436	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	anonymous
184d0459-2bf7-48f3-87e3-179a04499516	Max Clients Limit	de12fda2-20f4-4d12-9465-963b62049436	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	anonymous
ca6561f6-080d-493a-bd0c-9adb6422d150	Allowed Protocol Mapper Types	de12fda2-20f4-4d12-9465-963b62049436	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	anonymous
5ed59bde-754d-4d15-9fb4-f9b6307577df	Allowed Client Scopes	de12fda2-20f4-4d12-9465-963b62049436	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	anonymous
5d75d246-07dd-4f84-b725-994e31c56ab7	Allowed Protocol Mapper Types	de12fda2-20f4-4d12-9465-963b62049436	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	authenticated
c4426d6e-1579-4010-9201-ea1ad7b161b0	Allowed Client Scopes	de12fda2-20f4-4d12-9465-963b62049436	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	de12fda2-20f4-4d12-9465-963b62049436	authenticated
\.


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component_config (id, component_id, name, value) FROM stdin;
303a7b15-1a83-438b-9277-127cd02c1354	220adc34-0905-4267-b5cc-8ad95b39ee3f	max-clients	200
29d90930-1cba-4971-ac58-29438a16a469	a8425c8c-8260-4546-96e3-ccb50d1ad269	client-uris-must-match	true
fc656a79-db9c-42d4-a470-7ad4626965ce	a8425c8c-8260-4546-96e3-ccb50d1ad269	host-sending-registration-request-must-match	true
686ee29c-dacc-4138-85fe-893c11e11eb1	41b91810-e2bd-4c29-87c1-8ce856d0c468	allow-default-scopes	true
218f8235-4b85-49d3-971a-405985192a81	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	saml-user-attribute-mapper
8287049b-9033-4e8f-b72f-7c96588acf4a	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	oidc-full-name-mapper
cc9a5a8c-1f81-4878-b0d4-000967cf9a1c	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
c7a61677-8070-4ece-829d-2300b9754a03	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
0d08e4ed-61c3-442d-bfa3-f60974b0ab68	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	oidc-address-mapper
7669c76d-4bbd-4eb4-aa8d-fd76915afa89	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	saml-user-property-mapper
38a2b8c5-ff34-430f-baf8-def1896fe0be	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	saml-role-list-mapper
43f87a47-26b3-419a-9c6a-f918cc2f9001	ccb17fc1-4986-443e-938a-fc57d0443810	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
1c0a88e9-29c5-43db-893c-0ebedadac8ac	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	saml-user-attribute-mapper
5b6fa682-8b56-4a2c-9b1e-3dfd80ec544b	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
26becaed-c4b4-462c-9698-f76bdc9662f4	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	oidc-address-mapper
ba3a217d-8027-44da-abac-cd4530b96000	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	saml-role-list-mapper
60976c6c-a050-41ab-9ac2-41ec3093e2f2	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	oidc-full-name-mapper
4d0cacfa-7986-4bf6-9f83-da8e13b8eeb5	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	saml-user-property-mapper
22dda744-5339-4a82-a553-addf790f1078	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
3c8f156e-5510-4de5-9b54-d5e7e077b8a3	7012450e-f835-4891-ac92-a15353db2549	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
031b52ca-b933-4029-bb32-87a6ad15fafe	7572e662-0c60-4680-a567-64aa5b8a0dd9	allow-default-scopes	true
040fc547-7109-4312-9665-0e73a0563e31	339bab2c-5307-48cb-bb91-66a19ba0f9e8	secret	lZN4AzK-7F1O4TqC98T8QCIF4YIfBkTUiVEFXHMnV2jX4XI4agqCCYHOU_s7pvCkRf3YCYSlFjq6qPacCS9gCqZG-bzL7t7M3UlUIDdXRAlJjF-Q3D6kt6jPWSmHTWO74IDpxHXvIly6jxNIKQUVCTi1nqd83eJc8JKCkr8nZoI
ad5ce4dd-96a6-45a7-9a1a-f4985ef732f0	339bab2c-5307-48cb-bb91-66a19ba0f9e8	kid	5df3c6dc-4f42-42e1-bb91-24aecebae4f1
b50bbf7c-91a4-4762-9707-0f7df7ec8829	339bab2c-5307-48cb-bb91-66a19ba0f9e8	algorithm	HS512
b1b9942d-b5e2-441b-a92f-22f877f66826	339bab2c-5307-48cb-bb91-66a19ba0f9e8	priority	100
efde3c98-16c7-473b-abd1-0be9c9699858	0f916f72-646c-4256-9b11-1606c6f0c081	secret	aVVQ50gBH6J407yJG3_0oQ
f93c8967-f8ef-444d-9370-1aa3fd2a8fd2	0f916f72-646c-4256-9b11-1606c6f0c081	kid	77fc828c-cabf-404f-962e-935588eef6f4
dd2721b2-5481-463a-b842-875074ff8c0d	0f916f72-646c-4256-9b11-1606c6f0c081	priority	100
a9ba258b-18bb-4f84-b828-a43bd35d88e9	3913890c-5c32-4a4b-bf2d-4aec4bb59c5f	certificate	MIICmzCCAYMCBgGc7s8ZVzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwMzE1MDAwMjU1WhcNMzYwMzE1MDAwNDM1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCxQ6FF8a8wbvxAaaatn1H82IiwWIrMUhEjQnIDojKopSO7rcKsDZqsI5CIvIjOSWZzJXtmTgFazkrEj1AaSwSeI8a7gM2U7dEaA106LvErCEhf7PdUSqVrzqvugcY1fclqDQmiiuvS62x+yvmpJ6oopzUfk476X6gAWK6LTm1cYph3IVnIh8LHGWFGAf/ukKYHLiDFl5JRRo6vdl1ZWQWJwZkxfJjnGx78pd5G/eAfO/gj7BVbNJyfsezlRmw1Lnmm4UX/YeLT1EEljEVNk1aY5mJek+BhLE9QNtFmkFO+ePdzBW3xvGKz0cuwES0axJfAeyz8q7wc52t13LcNmgDrAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAWoQcsZZZmfgWnFiJ36zqd6YCa1TwCsnN3sW3/vT8v2EbpB002S1zY9l2nn1sxNobsyEPZOEcs09xGFMjtJF1hsTdU8mSFyuqqVGW7u23zbZEHqMQSIoCCRZGsMB6li9SaeMWgNDIX9DSSBeVqyW10PdPX4YAADB3VT3OqN/G9Djrzqr9aiN8stswn1Cw1EEcpN0SkH4MtGvyXLrVsFdA8SPJbwtrDvWmET/XpToM7P9fckyKfrT8z7wWDThmTJpjoLVIsS6hC/WnyaVPJVZ8XNxwrNJngkNTDDVdEURbKXHFE9NT3YKS1qbLSvBH9iwalaU7GxlBkwDk5kNSv5q9Y=
76f224d0-6baa-4765-8dc1-4b447dfb772d	3913890c-5c32-4a4b-bf2d-4aec4bb59c5f	privateKey	MIIEowIBAAKCAQEAsUOhRfGvMG78QGmmrZ9R/NiIsFiKzFIRI0JyA6IyqKUju63CrA2arCOQiLyIzklmcyV7Zk4BWs5KxI9QGksEniPGu4DNlO3RGgNdOi7xKwhIX+z3VEqla86r7oHGNX3Jag0Joorr0utsfsr5qSeqKKc1H5OO+l+oAFiui05tXGKYdyFZyIfCxxlhRgH/7pCmBy4gxZeSUUaOr3ZdWVkFicGZMXyY5xse/KXeRv3gHzv4I+wVWzScn7Hs5UZsNS55puFF/2Hi09RBJYxFTZNWmOZiXpPgYSxPUDbRZpBTvnj3cwVt8bxis9HLsBEtGsSXwHss/Ku8HOdrddy3DZoA6wIDAQABAoIBADbAHsXNukCJZxw2BadGuDoSX1WoY2ZsSqLLWQ/KPz9bkkfbiW8+3HEiove408BzZ1NVVmHo4f48DVfcs+8LEKgPgMhVJipDsfwI4figmxihfEk0lcfRLnq34N7P8np/GYDJ+hncMq54zI/0/VvDxoi77GqOVvD6Lpe8zFx2osyPm5Ng7fKFktDvK5NNuHzuDyXAXird5DUz5rP+fIc/nrGlTytJVl23fnaSFbTXsOlSXzLePz4bu4vdWe1aFo4bJ/GMmzC6gs6Lw0Lne8E83nWLPONEQ0zJmwEdysY6k9PU+og4C9HJJpHS6mzRxj/ot2BqhiZ+7EknpA4OL3/G44ECgYEA4qHH72y43lnM5APDPQP5TsNcLtxFQP8xq6zNmOAI0ACd/Cx+AMumhEbjhYUpO5FHKkiaF8sVefE6ebEEiXrr77pC6v3yCyswZaZ86C1YKxChQhknVALTioykFk+lH9oDlIy4nMyWYck+3qmG2EFaCTloA62OGEgGIFErKazDaMsCgYEAyDwjMZsf/jhoyWmv9FUfUfShghI/FKbkC5vGE5jAduEWC6XOlzVoqc9GGW9HYRUvzu29xD4ORM7h0E1fwkxcg9hGeZgq0jUKH43MBeDCv9nL1g1ont7UGsEVk+iwi5tMWt3EySEJ30nP6AvGD+1i4F1Q2JvEpV+eRkpt2JPgZGECgYAsjObzruisdPStAfxYOza///FYGN7YRxIpkD+eRLQWx3hHASwH1gC20gSZ07JmTkmyCzGXacmf/gajs2OT7wEAUBolfaQeA/BwmwjEz10cohlBGBa+EgwpmToMVL2+BCpeAkesMx+Au4HLXYHvcvFTDODgkDZ1mXry0WHtwFNtfwKBgQCq4r/6ZvRf5s5vDlaPRFJNhGSN+HqDaob27UOXl+axzhkdaa0tWPRw76dYr6KQVR+PD1DD+V3+FT2co1wVG0xdbSeAQIBTE9cG5OH5Jj+usfaHQLxH0c3c42pB5/U7wBbi+Z8nM54URQ89b0bicurOpnUH17B0nm0aegzTKCj6IQKBgFdqel3m7UppWbLolYR7gdmnF9JzgtN+SOJmUCheMqCFgIgEObK/+vUhuMdPJ9Ans5giP/9RpKDGt3MepE3nelRJ9r7pxLi7aX2PTLdBF5sqJGW8trivw73CLF/JYk/LFlv23ypKKaN91SZW1ofjjIVReMG+21g7OTj0j/HRBqeU
7586df4e-328f-4eef-87eb-c4de863d4e9a	3913890c-5c32-4a4b-bf2d-4aec4bb59c5f	priority	100
5f42762f-71f3-4406-8752-11e57c698b6b	3913890c-5c32-4a4b-bf2d-4aec4bb59c5f	algorithm	RSA-OAEP
33da79f4-eaab-4c3d-8fe1-ca62afa400f1	3913890c-5c32-4a4b-bf2d-4aec4bb59c5f	keyUse	ENC
ce323744-6b6e-4c68-bcb0-eb6d241a4b4b	3803210a-e171-4099-8208-222cc2726336	kc.user.profile.config	{"attributes":[{"name":"username","displayName":"${username}","validations":{"length":{"min":3,"max":255},"username-prohibited-characters":{},"up-username-not-idn-homograph":{}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"email","displayName":"${email}","validations":{"email":{},"length":{"max":255}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"firstName","displayName":"${firstName}","validations":{"length":{"max":255},"person-name-prohibited-characters":{}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"lastName","displayName":"${lastName}","validations":{"length":{"max":255},"person-name-prohibited-characters":{}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false}],"groups":[{"name":"user-metadata","displayHeader":"User metadata","displayDescription":"Attributes, which refer to user metadata"}]}
9ffcf6c0-2105-405e-9b75-5c5def901eb2	35e49078-52bc-4fd9-889d-334b7265642d	keyUse	SIG
5ba464aa-27dc-405e-8c77-8f3cc68635d4	35e49078-52bc-4fd9-889d-334b7265642d	certificate	MIICmzCCAYMCBgGc7s8X7TANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwMzE1MDAwMjU1WhcNMzYwMzE1MDAwNDM1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCnkmMhTQ+Q/OaMrNLRWfDNLe2CtD7enIPArtnSBFU1rdvIDHeBYAtTJNhlKpjeEkJVN5avsPySibOl6fe+Ifxxs+iURQ2mgoBgsPbifE9Y8qyGUgS3eByESLLFtMl9QQ+cP+H2i7KQ+AtTuosow1HPNjmuGhDBKXcrOJuTSGToZy9UBZi9dV7YixEEZMzxAIh66WGzEkMDZ7QSCl/jlavlbRX/jL+eujNIZMs6TzzA4orOM3YiZwaUUBC3dLR9PPSvnsGSYawCxxifY490dl9TBFc8DEh0xxF5jagkYbvkP1KoS1YjDbKVSeHCkfTcvSvo2y26cxGNO2ffSd/q0G3fAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAEtgwVsSSgXpHYT6M4U3w+pZUcWAlXxA6ES4e/izWSR2/wY2CCVl0FynlfUZvT53NQ7owPfWgbJD+6MBnLfwN84wUH0ECOn2LZK/p2aPy5rQ9wTQGC+lqXgrtiIgpKCJAHe3/Jkqka8fF586CiiAojYYE6YoB6UO1dj4D61G+OsM+kBY5WkXaRhggem28ILNDBOkw1mmlkmCz6RzJdz9Pd9nx5R+j/Mr5ttGmGLNoaSq/ZWCW1TOde9rRlZwrv8vkt1pXzo5b1/ZV8hGoNMDsYYRu+z3XVv+AuhPj/HbdE6yhie/30yiY+lTZSxS/oy5ItUGoODyoxnh5WXqtn0Qp80=
7fb7e586-aeb6-40a4-9f4e-45cd8701960f	35e49078-52bc-4fd9-889d-334b7265642d	priority	100
c1c3d6b2-2703-46cf-9afc-c44b5cfc0cb3	35e49078-52bc-4fd9-889d-334b7265642d	privateKey	MIIEogIBAAKCAQEAp5JjIU0PkPzmjKzS0VnwzS3tgrQ+3pyDwK7Z0gRVNa3byAx3gWALUyTYZSqY3hJCVTeWr7D8komzpen3viH8cbPolEUNpoKAYLD24nxPWPKshlIEt3gchEiyxbTJfUEPnD/h9ouykPgLU7qLKMNRzzY5rhoQwSl3Kzibk0hk6GcvVAWYvXVe2IsRBGTM8QCIeulhsxJDA2e0Egpf45Wr5W0V/4y/nrozSGTLOk88wOKKzjN2ImcGlFAQt3S0fTz0r57BkmGsAscYn2OPdHZfUwRXPAxIdMcReY2oJGG75D9SqEtWIw2ylUnhwpH03L0r6NstunMRjTtn30nf6tBt3wIDAQABAoIBABSJfFy4dQ/v7tGO3MeLnleHKXS7Ynkl9X/H7iovHcJWbHk4De1tN/YYrey4K8QLuNV42p7tsgbDmaDb6+EBiU7mHbsOO34MwG8ZQSjA03izRTGxG6LgtZ4AyugwIAGZ16/upGLy/A+IVtsMIcH9LimXG7qatzL1QgWqCmcimDtjNyG3CIAUbm5xZ+5WxGox2wvq8l+Au44h6z8/MnJNIPj0NzxyyWlI8s2wa/UooMQRSAO2GPf87wp53ZOwVybqBpaoKvtxo93Wb42D3AXRUT04dz6E2ZRkIOx82yHXeNBPQcR3q0qkvG4ouk3Wi7QMLKTFv1++JYiNyzu+9QmT4AECgYEA3vKpdClaG85qqv6y+ZtqzWUEr14KL9I2BavYbi38lJEAX2hlhXOqhBzWHGv3oFz/QoZDc7uaLAMC4+g6FQKRZV2TQaA/fIDVWdrMm9dfN28xWpzmRi7JkKvdSsGx12peYeaTPgrJkTVK02lIFUNicqWPL/wg3vurcJ7acoYDg18CgYEAwGoWdnSWNbBg9dbR3YC7TQFNzYl1XSwsyut4xlCjsinuvz0UrpB31z7VQoRAeU7qCWWTTW0910WLIi2jVEioEdk5WA3Hb0TuQjYztyFBQfHLMfHi8iuLnNTmLX2hyLCyd8cHJUexCVCIeb25QCdh11ICbL1hVAMtbD0M+uQBpYECgYApK1pLTw+KrvVXmizmluKEBzF0SMNMzV6YcYFH50oLDTOqapbEq/VC7ChFm1Jg1It2d2ChUHVJx0yTVWDUXGMI+tykc7kFfqznKNY7uOumSuwsNWj4cM9b3cDBez8h7kx7e56ZCFjsbZDhtUFQW98kGJp2W/Kd+o9P/qWMHF8ttQKBgBrufmhkFyY6osemIsfDHfRAS3iKVeANr9NTNBtl7BOi5OTlksCAPhXlmInv4upXzlA0ZHLA6Jf6BuhoxOSmKsgcxHb7rr93QXYJCiIGyJCHXG6IMcC9sZPpBLK3U+64NLKpK+ne5/uqxv9rO8Or/3jY5Lf9peLRcwkkXm27fjOBAoGAbODk8d0gOOH9EnhL9tMUIhoHa29WZPNasPuH4tgdmaJ+PWcUbrtLtcQI7hiKby2+Le+LOp/4UAouKmWNhg1Jq1TmAkCSfSLjIlwZfleP8c9DrL/Tbm2PKQ/Qq0sLBmAO3PWltxonK2u02yRB+i0PAqTeWqJAe87KPguj3Azyef4=
a398a212-d532-4419-8c51-b55d422e387b	8c90e3ff-a4ba-42a5-aa6f-84f7c504a849	priority	100
8e3dc197-f8d8-477c-b70f-ae77e502ca18	8c90e3ff-a4ba-42a5-aa6f-84f7c504a849	keyUse	SIG
0946eeb8-6894-4cac-a6a7-7603c557d4aa	8c90e3ff-a4ba-42a5-aa6f-84f7c504a849	privateKey	MIIEogIBAAKCAQEAs7R1G4HSCmTCBdXWTr+caEMjPAooIfBfLWrhjYsVXpRecEkJ4X3Iy6SHYEyFNVFH1We1QSmg4WA2lIiRQ12qA8IDCLjh6Df1nJiWcbFv1VyqF2lxFstBlJx41O0ybX66r0SDB+59kBVQmz61Hv/MyQ9SBLD2HFhiLMWvUcjq415wVLrDn8jDx7RhPFLmo0442hbZFCQbbyhmvb9ibPiurzg62NQibx56qCjIzEmlOMpCa81ZI3xoLWHr7vNYJYrxIX2sjgHMRKoX04QEuwPatzRoGGP1/TKo+sQZuCdgE4j9SWSc5Ii2L6fH2393arYFJcoFvrYiSoovzrVML8KxLQIDAQABAoIBACJC1a/mnpO2NYqUxAzT+b8kC6/q9M9Rq2e2kKWifnK/gUjRmAVqbJGsvtWkiSIK6tHcOaGgjOhjJkzHw8Au95bLUrZDP2i9YIGYUth+voZUaiZYB0RUAJ8TfPMFfP+EsZVwT7X/qWdCtRFAEZqFJPcxSU8VKPrq+96y2tPSJTwvR5sl8Q8h3vvl5QqTX5IDlH2AFNXFXccyyNomvgYqydbseAy83vjgRZLW6o4r5r/WLoNNHHd95cAnxSci9jJ27K8ZHnioszWg+YEhL4ETjdhgdw4q4OtTO/KpgHQV4rfBp5CtasUCJkszqnmGWebqvQevsRdPFi+M07/J4ljCUlECgYEA2RhJ7+ZCrgM+r7RalBrl6IA8olaKfdm8EkfqDrr7LAbpBgyguae54RadGY/cJwV5IbSLJQaxmBiE9DL6+GqWPNYfnXTJOTmYr6/QXevwXmjViEwvCiJikHzK/iAqwofV6uLeFyyjwapCJExkrZkszYS1pMvvc2CTxMNlc1OAB90CgYEA0+jSFQvFho6KlTYcCpGlDrBAWle0ww+m2sZPhHMj4/lXM9SY/2vhd/2VD2myuw/mDWPsfTa1Plw+uleRjidjquJxthR//sfsTegjMvYA1mFty+KaJLtn4+Ek4msgCgO8D04Wiv7k5yKDxNa90qNy+l6tNoBFmutbBCSWRM/Z4ZECgYAxjXC6+HT54TW6x1Dxg148/qBYcaZ06XEbPxz2tclFGGKyBcnd9qHf9dhwED0xDvfCMMKd9fQtglM+pjBQ6YtXYYyf1RtlG3d1iozmE0evVQCAdts51fVng4SWEuOPuY+jaJtG8OKD/wfP3zwPv+nRE1yevAnw7PdtrygF9eZAZQKBgFjUL7xCwvo0pkMF+5sykk4l89PrEAr0dK0glBShb1oRG0zOwZPQVSNHWUSsug9QCs9yI6AZXsBVSrYyHwHH4S+w3JnG3iCfDZ9av+aM2K0FClF9G8BqDpKnvh5raXLJPfvsb+a0EqARB8treQbjHT92kIVYH9Vg8zY5YARYXK0BAoGAVUnfapf07Dv3TF0w3McAfgR8MvIaCoJw7rijb8hpUhL3EqIvtPd3dXRgCrd8bbo8I/LDkprJiBr6x3IzUDVKtGYNo+PBEK3JUefEHzqf/XEVYYBkxUtAcDKyvjridn8VNQaBpk3noohrdUcHAddJmeb7Ghai2Y6JaXRcAv3vjCo=
8d4cea80-87f9-4c83-9a48-9ee6337c3ebf	8c90e3ff-a4ba-42a5-aa6f-84f7c504a849	certificate	MIICmTCCAYECBgGc7s/cqzANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAVpbmZyYTAeFw0yNjAzMTUwMDAzNDVaFw0zNjAzMTUwMDA1MjVaMBAxDjAMBgNVBAMMBWluZnJhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs7R1G4HSCmTCBdXWTr+caEMjPAooIfBfLWrhjYsVXpRecEkJ4X3Iy6SHYEyFNVFH1We1QSmg4WA2lIiRQ12qA8IDCLjh6Df1nJiWcbFv1VyqF2lxFstBlJx41O0ybX66r0SDB+59kBVQmz61Hv/MyQ9SBLD2HFhiLMWvUcjq415wVLrDn8jDx7RhPFLmo0442hbZFCQbbyhmvb9ibPiurzg62NQibx56qCjIzEmlOMpCa81ZI3xoLWHr7vNYJYrxIX2sjgHMRKoX04QEuwPatzRoGGP1/TKo+sQZuCdgE4j9SWSc5Ii2L6fH2393arYFJcoFvrYiSoovzrVML8KxLQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAESb2PvbxdLHEESKOGryh/L8UqEppJqJjY2K0mwvlumzmpFiHW03YJzqTjGWOzVK57zABg6opwuBH41owYSMYN1S/8BO9jk9tNQ8/KKUA9NbscwDC5FoltDeqXy6JXmnaQuB5X2cesA7qhn52ghkokSRyw4Ry767ghow6wjZ48L/xoMw8p//dO53rA8JMIjXpIaEBvXYIvTQHvzG0VvN+SugW2eZxOvlWMrB/QxcW1k2fTUGIsJe/CANHtYm+JKvoqBZ8gzTZVrzpTng77178ms9lrBHqfZJvsw00ocPp66upxbF2JP+YGjIryOJKvSlVHGdFNYXkKz5H5nLxq31Gf
a8aa7354-e094-4bba-bfef-c1ce315ce5fc	e048e473-f5e3-4a56-adb4-fe65c51adf06	kid	99eebeef-467e-47cf-9fd7-53ebb4517595
20348ac4-736b-48da-8afa-74617e5f68c2	e048e473-f5e3-4a56-adb4-fe65c51adf06	algorithm	HS512
b788210c-05dd-4c42-9c4d-ccc847a80c38	e048e473-f5e3-4a56-adb4-fe65c51adf06	secret	XvGYePyB_hSfOVY5RwEsvVm-PkR7Wf2jFRIv0RvJGLKN3tEVOdKXfWeucPsx9P0M8vw0xmuCYFEw4d78vGTiCZa8nfl_uC-1cgev169bstDeEAlqpSRS8OprZ5xTogw27JMy_ngWgFjkBR3VrsACjd9qHybhOQtBQUY2xsvSjRM
593316df-1b51-4d45-b755-33ea498330b8	e048e473-f5e3-4a56-adb4-fe65c51adf06	priority	100
d0e6d4a6-63c2-4286-8265-bdedf21ef8e6	0cd5bf29-503c-4858-b2da-e8e141dba8fb	kid	5d2794a6-7271-45d9-b1ed-b6073e360d2f
f45d0d6a-281f-48a6-9f86-c1758289f249	0cd5bf29-503c-4858-b2da-e8e141dba8fb	secret	LkFmVpMOGiXkQGNhSsBk4g
806c0930-0512-4c1b-b99d-546474200ae4	0cd5bf29-503c-4858-b2da-e8e141dba8fb	priority	100
c371aa18-5b8c-4fbf-bf23-5ee84af2c551	dd3db09c-0b51-4b17-b76d-0e89824ea6ca	privateKey	MIIEowIBAAKCAQEA0xwVSUllD78dm9Acmzo4yIhOpKP6CpK+9PiNGGeeOP/DPjMBZ5phLgOYPquDyDrWjVzISsi8BR5Twe5qtIOIfN2/VyPvK3YVptY6xOd/wqsIHS5Vs/QtmGcY8VtZOQE4mOZLroXGvKm1nLzsHkC8qn5WgvQCeNGsv3PhWlTQqLgivWvqOX5t8HEzANib0s5pxRtftmpxY79DWdLXRlrbscqbxwTuER7qhBvkdeIb9IQGb0Jv/AXKV8fGO3xuBTlM6ZmJmPuO+w4wRjXqeTa3REcDNm0tVIFCByU7sVNDgZW3x99++okj4FyGnKzMJ1moeyjTt1iInzFuptulXW/WcwIDAQABAoIBAAbib0L3p0/BsBdZB5+jYOQ4CNOZYHJqSSnGc7rgA7mIIqQEBJNm0l5VyEp5ER7Q+LRiPK1MRykcL8U40JlnWo335esOgFPCgv/JikJUEb1QsGYgwj0y4pEnn0CdRHnEWuOI/KPE/MMaTRxcWS0NPPJ3Wc/RnLHLWtd0viGNPGDEIBo3fqcAQ29JRKPWiJ5n7m3s94c3xuCjOEx9AUs22Ot57TubLHTQNWxYYn0z1IXqRYj18yfA26JTZkzTWeBT0syp3iurGlKdfXy2BgPvEKtseKB9s+8ERF5+XtOoVXtgLN2MWRp/hsBc6oY21ujEL/pgsclLqu0tkR1RYxXMT0ECgYEA7t3UhFBp9ss4M1EKafMi8B0PBUC7eR59ZmESijTELdRZxnvPAhwjcPahd4LuJ3fO9d9z6JgYSwbyG4lk86OUiv9IruAKKa1n1dZjU06kuFrz+AYpEEn632e0//RTCdReeVzm0hC1+MDqwdheDuQGQcYCPnRFsSHlEi2C9hngSH0CgYEA4kCR/JwIrLbBaSVdGoFTsgHwIcpQVM1yLfEdADwtSuMSB2sUOmM2P/RY4QnuXg3XlzbJwrVXKZOV57Opus6R4aBp8gP55FxEYOGB6xxAXJhv0m0Olbsv9Vi3Pl7ALlKvEd+7gkyF18S1YoDFnKfwieR3djZU5cMLQeMeHAMiva8CgYEAiX+eHpAffxXaAwgqY3S27tr7U33ArObVLoLAZlgbeXocN3n7Xm6OJC+EIMR4jLWVp8j58rDigwW7hghf2TOXhS+QSkHi97y+4cPoJwNFJG4Os/3v01WSmNkcwp2E00qxG1FT+SXvagK639zJv+6Yf3IYxpStrVoif4U9NqcMiQ0CgYBB2/Pi6XSo+eXg+oxYe87mISRKYb7ygH89GlOLzviMNP75g9T2jgyrnzAECcUGQddA4CTo9apyotBfCvBcPWc/m1dbqIakT6tj3CDaVHXzvjfGtBIrybpTG8jzcddVZKIrfMnzSt0nCs6V5tAfIs+lBAk2MuiRnS34tuj71HnXZwKBgDJn35hoqqe27lCgllldDHUo7yHvmQNPN9VbOdBC8N6W6dc2/rU0jslHxIhpwQfItNRr8JDraDYU6SfOrsNr3Ldlg3He7p08gJ5boKHGO95cFX/PRa2VBOZk8AjWOV7Tgz+R6PzoPAXwt9ue57GmXFqx98xnwQu+bYPVqsTebW/E
1a24335f-e960-45a9-9055-946c0d707310	dd3db09c-0b51-4b17-b76d-0e89824ea6ca	priority	100
a2e7b115-a892-4f9b-8094-c8459a8482c3	dd3db09c-0b51-4b17-b76d-0e89824ea6ca	certificate	MIICmTCCAYECBgGc7s/dnzANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAVpbmZyYTAeFw0yNjAzMTUwMDAzNDZaFw0zNjAzMTUwMDA1MjZaMBAxDjAMBgNVBAMMBWluZnJhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0xwVSUllD78dm9Acmzo4yIhOpKP6CpK+9PiNGGeeOP/DPjMBZ5phLgOYPquDyDrWjVzISsi8BR5Twe5qtIOIfN2/VyPvK3YVptY6xOd/wqsIHS5Vs/QtmGcY8VtZOQE4mOZLroXGvKm1nLzsHkC8qn5WgvQCeNGsv3PhWlTQqLgivWvqOX5t8HEzANib0s5pxRtftmpxY79DWdLXRlrbscqbxwTuER7qhBvkdeIb9IQGb0Jv/AXKV8fGO3xuBTlM6ZmJmPuO+w4wRjXqeTa3REcDNm0tVIFCByU7sVNDgZW3x99++okj4FyGnKzMJ1moeyjTt1iInzFuptulXW/WcwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQB8tpV3IGu07R+hkW4nyqVBjAAyJ0xvNaN8qxMCtfjY1PoGEUzmSD4iOoDw9Xw0xUX+HUEkFrlWPiBKKjJI3cx3BmXfVRZ4n9TJa4i0ChxRppsp6iUn2nSg51SjAPy8t92/HA84kWKObYOso79vMR+gAoaD8xF7P2cxcdgUGvNMToZRmvcmhtU64exm34sNhwLoQ3cV1tEDhredSWDsmQ0LvyW7WF7ZD/e88a0jtWFs6iirRjF7T3pniiIsa4C3GaOGxdE3kTpSJ8IyoOQ+/SfslRWBOiU+unBJWLKHHvIYi9z8LOHFPs0AiWocnIdqfGmOxBwgzhDY4ysxiU5AgUSk
cbeb3181-0527-495b-b956-dafdc68188c2	dd3db09c-0b51-4b17-b76d-0e89824ea6ca	algorithm	RSA-OAEP
69a0c20c-ddf1-4eb8-8dbc-31c37041e468	dd3db09c-0b51-4b17-b76d-0e89824ea6ca	keyUse	ENC
5f8f57cf-260c-437f-a25e-fff7e09e5dd7	5ed59bde-754d-4d15-9fb4-f9b6307577df	allow-default-scopes	true
9581c084-b3af-4d67-9664-4843f70f9ffa	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	saml-user-attribute-mapper
46e07c26-01b8-400c-8506-a567cb89afae	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	oidc-address-mapper
c395e4a2-6ba2-4086-9d0b-278e014745cf	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
34abad54-d46b-421f-9287-72d6610e739a	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	saml-role-list-mapper
4ebec1e7-2021-4f95-b8c9-71dc2fc25ead	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
7e184957-8645-4947-9255-5f26935a51cc	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
d380e9f8-4714-4a63-8d29-9a171e11bfc0	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	saml-user-property-mapper
ee808413-7c29-4b60-8642-cbfd186057f8	5d75d246-07dd-4f84-b725-994e31c56ab7	allowed-protocol-mapper-types	oidc-full-name-mapper
e6e7c602-7235-4704-a62a-d0d41b1a238a	c4426d6e-1579-4010-9201-ea1ad7b161b0	allow-default-scopes	true
3296b1b1-045d-487a-9dce-295883b5c014	566908e2-87dd-45fe-b2ea-63f39bceb3e3	host-sending-registration-request-must-match	true
01b46277-c638-4b5c-8caa-72fc3d8da91f	566908e2-87dd-45fe-b2ea-63f39bceb3e3	client-uris-must-match	true
e78e0d30-edd0-4fd8-9419-43367f9731b6	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	oidc-address-mapper
57f5340e-ab11-4ae4-9410-2f698905a52e	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
6d7e7d5e-49a8-4242-8c0a-5d68634de24b	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	saml-user-property-mapper
d36765ac-b6eb-4518-b1df-000dadacbf46	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	saml-user-attribute-mapper
726561f6-e6b7-4812-bb45-62e4f325c619	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
53132afa-cbd0-4086-9a75-3de6792e20d4	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
e061c74d-76d9-489c-a0f8-33597ec446c5	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	oidc-full-name-mapper
6b66dfa5-7d4f-4dba-8187-afd72365fa9e	ca6561f6-080d-493a-bd0c-9adb6422d150	allowed-protocol-mapper-types	saml-role-list-mapper
c7542aa6-4e45-4cea-b599-9bc4b78c2157	184d0459-2bf7-48f3-87e3-179a04499516	max-clients	200
\.


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.composite_role (composite, child_role) FROM stdin;
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	8bc22fd9-a79f-4bc6-92da-157e230dc835
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	d5fae2ba-cfa3-4046-99b0-b23a6ca7ce21
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	e30a0c3d-0d89-4c31-8230-2815d4f9788b
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	4317acbe-061d-4d0f-815f-2e587f1b1140
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	bb86328b-8dbf-47a0-867d-8be5af352c4c
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	2b1b6c98-5219-4b85-9d30-f37658f95116
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	94c1ad34-c1d3-4f95-a185-fc36b1d41cbf
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	f3611b1f-4b52-4af2-84e6-fd16fe03734f
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	8abe2f7c-9509-458d-bb4b-0ec6e4c03033
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	26471fa5-5e35-43ec-a6dd-dc5df590620e
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	3a777ff9-6ada-4398-8653-11c127d970d8
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	820b7a66-143a-462b-9304-1a2c7b16ab2d
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	630f76eb-2d7f-4e7c-bf0f-8889a54c8cf4
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	22226002-d868-4d6d-be7c-0dc13dd366dc
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	9a9f7580-fb09-4e3f-9ab0-0438fee5c9d0
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	ecadd75a-a996-48c7-ab28-f2bf2af2389a
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	f174d60a-e602-4a59-868e-1f80431c5600
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	7cb0c648-d35e-452b-bbfc-fa32b129fcba
4317acbe-061d-4d0f-815f-2e587f1b1140	7cb0c648-d35e-452b-bbfc-fa32b129fcba
4317acbe-061d-4d0f-815f-2e587f1b1140	9a9f7580-fb09-4e3f-9ab0-0438fee5c9d0
8c1fd4c9-90c3-43ee-a01d-ebe8f4aa8db3	0ac93bef-e3f9-4585-bb05-a918f514e930
bb86328b-8dbf-47a0-867d-8be5af352c4c	ecadd75a-a996-48c7-ab28-f2bf2af2389a
8c1fd4c9-90c3-43ee-a01d-ebe8f4aa8db3	b5f63ef9-7b58-4db9-a807-127095d0c686
b5f63ef9-7b58-4db9-a807-127095d0c686	5bd860d4-4c9b-40fa-aab0-154b851a0665
0d8590b3-d5fe-4cf0-adb7-a9a4ebc8b51b	5104e05c-7710-4346-8710-ec71e06dfa0a
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	1fee725e-152a-470d-8383-633eeb15d96a
8c1fd4c9-90c3-43ee-a01d-ebe8f4aa8db3	c56ba56d-c121-4746-a670-5f07f53fa44d
8c1fd4c9-90c3-43ee-a01d-ebe8f4aa8db3	c9e21f5e-f54a-4c76-a6f1-7239fd9c8fa4
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	cab6327e-eb48-4c71-89f9-bfc9c6276eba
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	3293534d-5b5d-4f44-84ad-f41dd87c0bef
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	8f1a518b-fb13-4bf1-ba95-27a8844a8361
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	aca91e54-b21e-476d-9b4f-51382414a551
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	42f50e32-f95b-45f4-acb3-8c58d1f4fbd6
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	668770b8-8e15-4f47-86af-ecbe49b25a9e
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	da108ae2-a814-41df-957f-8e3dbdc7ea83
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	8656278c-d3f7-4ff5-a1a4-71a40cd2c990
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	6e34adb0-877d-4ed6-bc59-118c2e075935
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	c1108d9b-8f86-4b30-addf-640ee28421b8
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	ab2c6f03-e8d5-4d7d-af0a-9b6b4791f06e
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	49c45a56-fbaa-46fa-97b9-4c5b2285a00c
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	6afbe2d5-1141-482b-be1e-3bf341312b54
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	1d42cfc8-a5f7-4714-b233-229dbefe201e
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	23cf4a81-128b-4bda-b35c-2753a1128ad2
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	cc9e2683-6f47-4564-aaf7-1f5de6faf598
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	19afbee7-5bc8-4954-ac4a-9e5892cf23b6
8f1a518b-fb13-4bf1-ba95-27a8844a8361	19afbee7-5bc8-4954-ac4a-9e5892cf23b6
8f1a518b-fb13-4bf1-ba95-27a8844a8361	1d42cfc8-a5f7-4714-b233-229dbefe201e
aca91e54-b21e-476d-9b4f-51382414a551	23cf4a81-128b-4bda-b35c-2753a1128ad2
092376cd-bf92-4385-a8fc-45f6ecd91c4d	7efdd65e-82d6-4613-9e74-10593fafff1a
092376cd-bf92-4385-a8fc-45f6ecd91c4d	9895f098-a9d4-44c9-8c20-8653f1493cf5
092376cd-bf92-4385-a8fc-45f6ecd91c4d	1c81762d-0d55-4496-b332-21fe457c7cf5
092376cd-bf92-4385-a8fc-45f6ecd91c4d	3f245334-00ef-42e1-9af9-a6bc995acaa9
092376cd-bf92-4385-a8fc-45f6ecd91c4d	83b5b2b8-54d7-414c-8001-5cafdbd51ed0
092376cd-bf92-4385-a8fc-45f6ecd91c4d	51c63f32-a7bd-4312-bd86-df9c622230da
092376cd-bf92-4385-a8fc-45f6ecd91c4d	cecb5d25-82a2-4ea5-a29d-eff4489c69a6
092376cd-bf92-4385-a8fc-45f6ecd91c4d	4cde338c-7abb-4687-80b0-b8ed63f3a78f
092376cd-bf92-4385-a8fc-45f6ecd91c4d	6c51a3d0-92a1-4c90-b48c-1a088ba7796d
092376cd-bf92-4385-a8fc-45f6ecd91c4d	ef46a61f-dd61-4cd9-b0f6-9566bc618958
092376cd-bf92-4385-a8fc-45f6ecd91c4d	bcfdd208-d28f-42df-895a-001c37cbe34d
092376cd-bf92-4385-a8fc-45f6ecd91c4d	b5b52846-9394-47be-bbd3-396b6a83a499
092376cd-bf92-4385-a8fc-45f6ecd91c4d	adfd3e9b-53dd-46de-8e1b-da6dd8fd5685
092376cd-bf92-4385-a8fc-45f6ecd91c4d	564f4dd5-911b-458c-bf95-79cb7c0b4354
092376cd-bf92-4385-a8fc-45f6ecd91c4d	fe618d47-6d25-4549-b265-e37eac909bf6
092376cd-bf92-4385-a8fc-45f6ecd91c4d	33ea8518-6352-4af0-8f19-88c602899cab
092376cd-bf92-4385-a8fc-45f6ecd91c4d	ca23d79f-c388-4923-b640-8be5488ba2a7
1c81762d-0d55-4496-b332-21fe457c7cf5	ca23d79f-c388-4923-b640-8be5488ba2a7
1c81762d-0d55-4496-b332-21fe457c7cf5	564f4dd5-911b-458c-bf95-79cb7c0b4354
2fffe0c0-04b2-40a0-a67e-a436b46a4f0d	a38c3232-7b1f-4f77-a969-4d3ed633734d
3f245334-00ef-42e1-9af9-a6bc995acaa9	fe618d47-6d25-4549-b265-e37eac909bf6
2fffe0c0-04b2-40a0-a67e-a436b46a4f0d	93cda667-9ab1-4d9c-9b1b-e071b707a894
93cda667-9ab1-4d9c-9b1b-e071b707a894	1cb57ff8-e669-4764-9047-749281c42856
15de7f36-0b0b-4057-a227-eff8ed9570b4	2ec82745-2849-47e2-876e-ff1528942b3c
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	b74cc318-4e09-42b3-b5f2-2ed9fa90d4e3
092376cd-bf92-4385-a8fc-45f6ecd91c4d	2b4ec238-dfa1-403e-ab2f-332af348d09f
2fffe0c0-04b2-40a0-a67e-a436b46a4f0d	09bffe4e-aee6-492c-a62b-720a6b72515e
2fffe0c0-04b2-40a0-a67e-a436b46a4f0d	00856234-e7bc-4478-ab6d-0a46d56f27da
\.


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority) FROM stdin;
6fad2c03-957f-4649-bb96-fddcbcf9dda6	\N	password	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54	1773533076464	\N	{"value":"TO6u+B2hJYuS6kGo2YzLGAdHu+ICNsFbfzzZNT1DYPLiG3QYWS45GYszxovjfs9G62dBaf+nvBUo7QEr+lpBaA==","salt":"3SJaQm2bA7bTqHJ2s4TUOQ==","additionalParameters":{}}	{"hashIterations":210000,"algorithm":"pbkdf2-sha512","additionalParameters":{}}	10
621b83fc-3254-46dd-8b54-125d3522f033	\N	password	86e371ad-d120-4ade-89f0-711dc31abaa6	1773536688113	My password	{"value":"G6E4IcU0Y1BMxx6wFVqWWqYThwCFKc+RiOmlc+RUxn7xsKs//YfKSIqhWMfQWfpCRjkoMqdPbMbxNPCt4Cbhjw==","salt":"72muAdu+/Tqkq+fqfXWyEw==","additionalParameters":{}}	{"hashIterations":210000,"algorithm":"pbkdf2-sha512","additionalParameters":{}}	10
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/jpa-changelog-1.0.0.Final.xml	2026-03-15 00:04:31.811236	1	EXECUTED	9:6f1016664e21e16d26517a4418f5e3df	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.25.1	\N	\N	3533071243
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/db2-jpa-changelog-1.0.0.Final.xml	2026-03-15 00:04:31.831771	2	MARK_RAN	9:828775b1596a07d1200ba1d49e5e3941	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.25.1	\N	\N	3533071243
1.1.0.Beta1	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Beta1.xml	2026-03-15 00:04:31.885528	3	EXECUTED	9:5f090e44a7d595883c1fb61f4b41fd38	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...		\N	4.25.1	\N	\N	3533071243
1.1.0.Final	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Final.xml	2026-03-15 00:04:31.894155	4	EXECUTED	9:c07e577387a3d2c04d1adc9aaad8730e	renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY		\N	4.25.1	\N	\N	3533071243
1.2.0.Beta1	psilva@redhat.com	META-INF/jpa-changelog-1.2.0.Beta1.xml	2026-03-15 00:04:32.009964	5	EXECUTED	9:b68ce996c655922dbcd2fe6b6ae72686	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.25.1	\N	\N	3533071243
1.2.0.Beta1	psilva@redhat.com	META-INF/db2-jpa-changelog-1.2.0.Beta1.xml	2026-03-15 00:04:32.01913	6	MARK_RAN	9:543b5c9989f024fe35c6f6c5a97de88e	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.25.1	\N	\N	3533071243
1.2.0.RC1	bburke@redhat.com	META-INF/jpa-changelog-1.2.0.CR1.xml	2026-03-15 00:04:32.127113	7	EXECUTED	9:765afebbe21cf5bbca048e632df38336	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.25.1	\N	\N	3533071243
1.2.0.RC1	bburke@redhat.com	META-INF/db2-jpa-changelog-1.2.0.CR1.xml	2026-03-15 00:04:32.134521	8	MARK_RAN	9:db4a145ba11a6fdaefb397f6dbf829a1	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.25.1	\N	\N	3533071243
1.2.0.Final	keycloak	META-INF/jpa-changelog-1.2.0.Final.xml	2026-03-15 00:04:32.14443	9	EXECUTED	9:9d05c7be10cdb873f8bcb41bc3a8ab23	update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT		\N	4.25.1	\N	\N	3533071243
1.3.0	bburke@redhat.com	META-INF/jpa-changelog-1.3.0.xml	2026-03-15 00:04:32.249721	10	EXECUTED	9:18593702353128d53111f9b1ff0b82b8	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...		\N	4.25.1	\N	\N	3533071243
1.4.0	bburke@redhat.com	META-INF/jpa-changelog-1.4.0.xml	2026-03-15 00:04:32.319336	11	EXECUTED	9:6122efe5f090e41a85c0f1c9e52cbb62	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.25.1	\N	\N	3533071243
1.4.0	bburke@redhat.com	META-INF/db2-jpa-changelog-1.4.0.xml	2026-03-15 00:04:32.326277	12	MARK_RAN	9:e1ff28bf7568451453f844c5d54bb0b5	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.25.1	\N	\N	3533071243
1.5.0	bburke@redhat.com	META-INF/jpa-changelog-1.5.0.xml	2026-03-15 00:04:32.355983	13	EXECUTED	9:7af32cd8957fbc069f796b61217483fd	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.25.1	\N	\N	3533071243
1.6.1_from15	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-03-15 00:04:32.384823	14	EXECUTED	9:6005e15e84714cd83226bf7879f54190	addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...		\N	4.25.1	\N	\N	3533071243
1.6.1_from16-pre	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-03-15 00:04:32.387945	15	MARK_RAN	9:bf656f5a2b055d07f314431cae76f06c	delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION		\N	4.25.1	\N	\N	3533071243
1.6.1_from16	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-03-15 00:04:32.392487	16	MARK_RAN	9:f8dadc9284440469dcf71e25ca6ab99b	dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...		\N	4.25.1	\N	\N	3533071243
1.6.1	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-03-15 00:04:32.397869	17	EXECUTED	9:d41d8cd98f00b204e9800998ecf8427e	empty		\N	4.25.1	\N	\N	3533071243
1.7.0	bburke@redhat.com	META-INF/jpa-changelog-1.7.0.xml	2026-03-15 00:04:32.456509	18	EXECUTED	9:3368ff0be4c2855ee2dd9ca813b38d8e	createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...		\N	4.25.1	\N	\N	3533071243
1.8.0	mposolda@redhat.com	META-INF/jpa-changelog-1.8.0.xml	2026-03-15 00:04:32.503863	19	EXECUTED	9:8ac2fb5dd030b24c0570a763ed75ed20	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.25.1	\N	\N	3533071243
1.8.0-2	keycloak	META-INF/jpa-changelog-1.8.0.xml	2026-03-15 00:04:32.512206	20	EXECUTED	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.25.1	\N	\N	3533071243
24.0.0-9758-2	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-03-15 00:04:34.00625	119	EXECUTED	9:bf0fdee10afdf597a987adbf291db7b2	customChange		\N	4.25.1	\N	\N	3533071243
1.8.0	mposolda@redhat.com	META-INF/db2-jpa-changelog-1.8.0.xml	2026-03-15 00:04:32.517869	21	MARK_RAN	9:831e82914316dc8a57dc09d755f23c51	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.25.1	\N	\N	3533071243
1.8.0-2	keycloak	META-INF/db2-jpa-changelog-1.8.0.xml	2026-03-15 00:04:32.523395	22	MARK_RAN	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.25.1	\N	\N	3533071243
1.9.0	mposolda@redhat.com	META-INF/jpa-changelog-1.9.0.xml	2026-03-15 00:04:32.554588	23	EXECUTED	9:bc3d0f9e823a69dc21e23e94c7a94bb1	update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...		\N	4.25.1	\N	\N	3533071243
1.9.1	keycloak	META-INF/jpa-changelog-1.9.1.xml	2026-03-15 00:04:32.563861	24	EXECUTED	9:c9999da42f543575ab790e76439a2679	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.25.1	\N	\N	3533071243
1.9.1	keycloak	META-INF/db2-jpa-changelog-1.9.1.xml	2026-03-15 00:04:32.56742	25	MARK_RAN	9:0d6c65c6f58732d81569e77b10ba301d	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.25.1	\N	\N	3533071243
1.9.2	keycloak	META-INF/jpa-changelog-1.9.2.xml	2026-03-15 00:04:32.604775	26	EXECUTED	9:fc576660fc016ae53d2d4778d84d86d0	createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...		\N	4.25.1	\N	\N	3533071243
authz-2.0.0	psilva@redhat.com	META-INF/jpa-changelog-authz-2.0.0.xml	2026-03-15 00:04:32.68924	27	EXECUTED	9:43ed6b0da89ff77206289e87eaa9c024	createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...		\N	4.25.1	\N	\N	3533071243
authz-2.5.1	psilva@redhat.com	META-INF/jpa-changelog-authz-2.5.1.xml	2026-03-15 00:04:32.695253	28	EXECUTED	9:44bae577f551b3738740281eceb4ea70	update tableName=RESOURCE_SERVER_POLICY		\N	4.25.1	\N	\N	3533071243
2.1.0-KEYCLOAK-5461	bburke@redhat.com	META-INF/jpa-changelog-2.1.0.xml	2026-03-15 00:04:32.770536	29	EXECUTED	9:bd88e1f833df0420b01e114533aee5e8	createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...		\N	4.25.1	\N	\N	3533071243
2.2.0	bburke@redhat.com	META-INF/jpa-changelog-2.2.0.xml	2026-03-15 00:04:32.788531	30	EXECUTED	9:a7022af5267f019d020edfe316ef4371	addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...		\N	4.25.1	\N	\N	3533071243
2.3.0	bburke@redhat.com	META-INF/jpa-changelog-2.3.0.xml	2026-03-15 00:04:32.814379	31	EXECUTED	9:fc155c394040654d6a79227e56f5e25a	createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...		\N	4.25.1	\N	\N	3533071243
2.4.0	bburke@redhat.com	META-INF/jpa-changelog-2.4.0.xml	2026-03-15 00:04:32.822916	32	EXECUTED	9:eac4ffb2a14795e5dc7b426063e54d88	customChange		\N	4.25.1	\N	\N	3533071243
2.5.0	bburke@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-03-15 00:04:32.833876	33	EXECUTED	9:54937c05672568c4c64fc9524c1e9462	customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION		\N	4.25.1	\N	\N	3533071243
2.5.0-unicode-oracle	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-03-15 00:04:32.837576	34	MARK_RAN	9:3a32bace77c84d7678d035a7f5a8084e	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.25.1	\N	\N	3533071243
2.5.0-unicode-other-dbs	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-03-15 00:04:32.871028	35	EXECUTED	9:33d72168746f81f98ae3a1e8e0ca3554	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.25.1	\N	\N	3533071243
2.5.0-duplicate-email-support	slawomir@dabek.name	META-INF/jpa-changelog-2.5.0.xml	2026-03-15 00:04:32.882479	36	EXECUTED	9:61b6d3d7a4c0e0024b0c839da283da0c	addColumn tableName=REALM		\N	4.25.1	\N	\N	3533071243
2.5.0-unique-group-names	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-03-15 00:04:32.890205	37	EXECUTED	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.25.1	\N	\N	3533071243
2.5.1	bburke@redhat.com	META-INF/jpa-changelog-2.5.1.xml	2026-03-15 00:04:32.896545	38	EXECUTED	9:a2b870802540cb3faa72098db5388af3	addColumn tableName=FED_USER_CONSENT		\N	4.25.1	\N	\N	3533071243
3.0.0	bburke@redhat.com	META-INF/jpa-changelog-3.0.0.xml	2026-03-15 00:04:32.902365	39	EXECUTED	9:132a67499ba24bcc54fb5cbdcfe7e4c0	addColumn tableName=IDENTITY_PROVIDER		\N	4.25.1	\N	\N	3533071243
3.2.0-fix	keycloak	META-INF/jpa-changelog-3.2.0.xml	2026-03-15 00:04:32.904903	40	MARK_RAN	9:938f894c032f5430f2b0fafb1a243462	addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS		\N	4.25.1	\N	\N	3533071243
3.2.0-fix-with-keycloak-5416	keycloak	META-INF/jpa-changelog-3.2.0.xml	2026-03-15 00:04:32.908564	41	MARK_RAN	9:845c332ff1874dc5d35974b0babf3006	dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS		\N	4.25.1	\N	\N	3533071243
3.2.0-fix-offline-sessions	hmlnarik	META-INF/jpa-changelog-3.2.0.xml	2026-03-15 00:04:32.917334	42	EXECUTED	9:fc86359c079781adc577c5a217e4d04c	customChange		\N	4.25.1	\N	\N	3533071243
3.2.0-fixed	keycloak	META-INF/jpa-changelog-3.2.0.xml	2026-03-15 00:04:33.05759	43	EXECUTED	9:59a64800e3c0d09b825f8a3b444fa8f4	addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...		\N	4.25.1	\N	\N	3533071243
3.3.0	keycloak	META-INF/jpa-changelog-3.3.0.xml	2026-03-15 00:04:33.065596	44	EXECUTED	9:d48d6da5c6ccf667807f633fe489ce88	addColumn tableName=USER_ENTITY		\N	4.25.1	\N	\N	3533071243
authz-3.4.0.CR1-resource-server-pk-change-part1	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-03-15 00:04:33.074745	45	EXECUTED	9:dde36f7973e80d71fceee683bc5d2951	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE		\N	4.25.1	\N	\N	3533071243
authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-03-15 00:04:33.083431	46	EXECUTED	9:b855e9b0a406b34fa323235a0cf4f640	customChange		\N	4.25.1	\N	\N	3533071243
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-03-15 00:04:33.086752	47	MARK_RAN	9:51abbacd7b416c50c4421a8cabf7927e	dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE		\N	4.25.1	\N	\N	3533071243
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-03-15 00:04:33.135372	48	EXECUTED	9:bdc99e567b3398bac83263d375aad143	addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...		\N	4.25.1	\N	\N	3533071243
authn-3.4.0.CR1-refresh-token-max-reuse	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-03-15 00:04:33.142086	49	EXECUTED	9:d198654156881c46bfba39abd7769e69	addColumn tableName=REALM		\N	4.25.1	\N	\N	3533071243
3.4.0	keycloak	META-INF/jpa-changelog-3.4.0.xml	2026-03-15 00:04:33.195299	50	EXECUTED	9:cfdd8736332ccdd72c5256ccb42335db	addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...		\N	4.25.1	\N	\N	3533071243
3.4.0-KEYCLOAK-5230	hmlnarik@redhat.com	META-INF/jpa-changelog-3.4.0.xml	2026-03-15 00:04:33.235815	51	EXECUTED	9:7c84de3d9bd84d7f077607c1a4dcb714	createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...		\N	4.25.1	\N	\N	3533071243
3.4.1	psilva@redhat.com	META-INF/jpa-changelog-3.4.1.xml	2026-03-15 00:04:33.242411	52	EXECUTED	9:5a6bb36cbefb6a9d6928452c0852af2d	modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
3.4.2	keycloak	META-INF/jpa-changelog-3.4.2.xml	2026-03-15 00:04:33.247591	53	EXECUTED	9:8f23e334dbc59f82e0a328373ca6ced0	update tableName=REALM		\N	4.25.1	\N	\N	3533071243
3.4.2-KEYCLOAK-5172	mkanis@redhat.com	META-INF/jpa-changelog-3.4.2.xml	2026-03-15 00:04:33.252285	54	EXECUTED	9:9156214268f09d970cdf0e1564d866af	update tableName=CLIENT		\N	4.25.1	\N	\N	3533071243
4.0.0-KEYCLOAK-6335	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-03-15 00:04:33.261398	55	EXECUTED	9:db806613b1ed154826c02610b7dbdf74	createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS		\N	4.25.1	\N	\N	3533071243
4.0.0-CLEANUP-UNUSED-TABLE	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-03-15 00:04:33.269208	56	EXECUTED	9:229a041fb72d5beac76bb94a5fa709de	dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING		\N	4.25.1	\N	\N	3533071243
4.0.0-KEYCLOAK-6228	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-03-15 00:04:33.2964	57	EXECUTED	9:079899dade9c1e683f26b2aa9ca6ff04	dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...		\N	4.25.1	\N	\N	3533071243
4.0.0-KEYCLOAK-5579-fixed	mposolda@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-03-15 00:04:33.414393	58	EXECUTED	9:139b79bcbbfe903bb1c2d2a4dbf001d9	dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...		\N	4.25.1	\N	\N	3533071243
authz-4.0.0.CR1	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.CR1.xml	2026-03-15 00:04:33.444685	59	EXECUTED	9:b55738ad889860c625ba2bf483495a04	createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...		\N	4.25.1	\N	\N	3533071243
authz-4.0.0.Beta3	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.Beta3.xml	2026-03-15 00:04:33.454437	60	EXECUTED	9:e0057eac39aa8fc8e09ac6cfa4ae15fe	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY		\N	4.25.1	\N	\N	3533071243
authz-4.2.0.Final	mhajas@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2026-03-15 00:04:33.468976	61	EXECUTED	9:42a33806f3a0443fe0e7feeec821326c	createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...		\N	4.25.1	\N	\N	3533071243
authz-4.2.0.Final-KEYCLOAK-9944	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2026-03-15 00:04:33.476711	62	EXECUTED	9:9968206fca46eecc1f51db9c024bfe56	addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS		\N	4.25.1	\N	\N	3533071243
4.2.0-KEYCLOAK-6313	wadahiro@gmail.com	META-INF/jpa-changelog-4.2.0.xml	2026-03-15 00:04:33.483378	63	EXECUTED	9:92143a6daea0a3f3b8f598c97ce55c3d	addColumn tableName=REQUIRED_ACTION_PROVIDER		\N	4.25.1	\N	\N	3533071243
4.3.0-KEYCLOAK-7984	wadahiro@gmail.com	META-INF/jpa-changelog-4.3.0.xml	2026-03-15 00:04:33.488661	64	EXECUTED	9:82bab26a27195d889fb0429003b18f40	update tableName=REQUIRED_ACTION_PROVIDER		\N	4.25.1	\N	\N	3533071243
4.6.0-KEYCLOAK-7950	psilva@redhat.com	META-INF/jpa-changelog-4.6.0.xml	2026-03-15 00:04:33.493668	65	EXECUTED	9:e590c88ddc0b38b0ae4249bbfcb5abc3	update tableName=RESOURCE_SERVER_RESOURCE		\N	4.25.1	\N	\N	3533071243
4.6.0-KEYCLOAK-8377	keycloak	META-INF/jpa-changelog-4.6.0.xml	2026-03-15 00:04:33.509805	66	EXECUTED	9:5c1f475536118dbdc38d5d7977950cc0	createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...		\N	4.25.1	\N	\N	3533071243
4.6.0-KEYCLOAK-8555	gideonray@gmail.com	META-INF/jpa-changelog-4.6.0.xml	2026-03-15 00:04:33.518685	67	EXECUTED	9:e7c9f5f9c4d67ccbbcc215440c718a17	createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT		\N	4.25.1	\N	\N	3533071243
4.7.0-KEYCLOAK-1267	sguilhen@redhat.com	META-INF/jpa-changelog-4.7.0.xml	2026-03-15 00:04:33.526721	68	EXECUTED	9:88e0bfdda924690d6f4e430c53447dd5	addColumn tableName=REALM		\N	4.25.1	\N	\N	3533071243
4.7.0-KEYCLOAK-7275	keycloak	META-INF/jpa-changelog-4.7.0.xml	2026-03-15 00:04:33.544096	69	EXECUTED	9:f53177f137e1c46b6a88c59ec1cb5218	renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...		\N	4.25.1	\N	\N	3533071243
4.8.0-KEYCLOAK-8835	sguilhen@redhat.com	META-INF/jpa-changelog-4.8.0.xml	2026-03-15 00:04:33.552792	70	EXECUTED	9:a74d33da4dc42a37ec27121580d1459f	addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM		\N	4.25.1	\N	\N	3533071243
authz-7.0.0-KEYCLOAK-10443	psilva@redhat.com	META-INF/jpa-changelog-authz-7.0.0.xml	2026-03-15 00:04:33.559919	71	EXECUTED	9:fd4ade7b90c3b67fae0bfcfcb42dfb5f	addColumn tableName=RESOURCE_SERVER		\N	4.25.1	\N	\N	3533071243
8.0.0-adding-credential-columns	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-03-15 00:04:33.571016	72	EXECUTED	9:aa072ad090bbba210d8f18781b8cebf4	addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL		\N	4.25.1	\N	\N	3533071243
8.0.0-updating-credential-data-not-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-03-15 00:04:33.58111	73	EXECUTED	9:1ae6be29bab7c2aa376f6983b932be37	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.25.1	\N	\N	3533071243
8.0.0-updating-credential-data-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-03-15 00:04:33.584732	74	MARK_RAN	9:14706f286953fc9a25286dbd8fb30d97	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.25.1	\N	\N	3533071243
8.0.0-credential-cleanup-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-03-15 00:04:33.608533	75	EXECUTED	9:2b9cc12779be32c5b40e2e67711a218b	dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...		\N	4.25.1	\N	\N	3533071243
8.0.0-resource-tag-support	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-03-15 00:04:33.619228	76	EXECUTED	9:91fa186ce7a5af127a2d7a91ee083cc5	addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	4.25.1	\N	\N	3533071243
9.0.0-always-display-client	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-03-15 00:04:33.625622	77	EXECUTED	9:6335e5c94e83a2639ccd68dd24e2e5ad	addColumn tableName=CLIENT		\N	4.25.1	\N	\N	3533071243
9.0.0-drop-constraints-for-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-03-15 00:04:33.628289	78	MARK_RAN	9:6bdb5658951e028bfe16fa0a8228b530	dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...		\N	4.25.1	\N	\N	3533071243
9.0.0-increase-column-size-federated-fk	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-03-15 00:04:33.649278	79	EXECUTED	9:d5bc15a64117ccad481ce8792d4c608f	modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...		\N	4.25.1	\N	\N	3533071243
9.0.0-recreate-constraints-after-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-03-15 00:04:33.652887	80	MARK_RAN	9:077cba51999515f4d3e7ad5619ab592c	addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...		\N	4.25.1	\N	\N	3533071243
9.0.1-add-index-to-client.client_id	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-03-15 00:04:33.661627	81	EXECUTED	9:be969f08a163bf47c6b9e9ead8ac2afb	createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT		\N	4.25.1	\N	\N	3533071243
9.0.1-KEYCLOAK-12579-drop-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-03-15 00:04:33.664328	82	MARK_RAN	9:6d3bb4408ba5a72f39bd8a0b301ec6e3	dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.25.1	\N	\N	3533071243
9.0.1-KEYCLOAK-12579-add-not-null-constraint	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-03-15 00:04:33.67197	83	EXECUTED	9:966bda61e46bebf3cc39518fbed52fa7	addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP		\N	4.25.1	\N	\N	3533071243
9.0.1-KEYCLOAK-12579-recreate-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-03-15 00:04:33.675363	84	MARK_RAN	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.25.1	\N	\N	3533071243
9.0.1-add-index-to-events	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-03-15 00:04:33.684726	85	EXECUTED	9:7d93d602352a30c0c317e6a609b56599	createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY		\N	4.25.1	\N	\N	3533071243
map-remove-ri	keycloak	META-INF/jpa-changelog-11.0.0.xml	2026-03-15 00:04:33.692496	86	EXECUTED	9:71c5969e6cdd8d7b6f47cebc86d37627	dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9		\N	4.25.1	\N	\N	3533071243
map-remove-ri	keycloak	META-INF/jpa-changelog-12.0.0.xml	2026-03-15 00:04:33.700957	87	EXECUTED	9:a9ba7d47f065f041b7da856a81762021	dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...		\N	4.25.1	\N	\N	3533071243
12.1.0-add-realm-localization-table	keycloak	META-INF/jpa-changelog-12.0.0.xml	2026-03-15 00:04:33.714043	88	EXECUTED	9:fffabce2bc01e1a8f5110d5278500065	createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS		\N	4.25.1	\N	\N	3533071243
default-roles	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.726018	89	EXECUTED	9:fa8a5b5445e3857f4b010bafb5009957	addColumn tableName=REALM; customChange		\N	4.25.1	\N	\N	3533071243
default-roles-cleanup	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.734939	90	EXECUTED	9:67ac3241df9a8582d591c5ed87125f39	dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES		\N	4.25.1	\N	\N	3533071243
13.0.0-KEYCLOAK-16844	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.744036	91	EXECUTED	9:ad1194d66c937e3ffc82386c050ba089	createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	4.25.1	\N	\N	3533071243
map-remove-ri-13.0.0	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.754558	92	EXECUTED	9:d9be619d94af5a2f5d07b9f003543b91	dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...		\N	4.25.1	\N	\N	3533071243
13.0.0-KEYCLOAK-17992-drop-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.757588	93	MARK_RAN	9:544d201116a0fcc5a5da0925fbbc3bde	dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT		\N	4.25.1	\N	\N	3533071243
13.0.0-increase-column-size-federated	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.76924	94	EXECUTED	9:43c0c1055b6761b4b3e89de76d612ccf	modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT		\N	4.25.1	\N	\N	3533071243
13.0.0-KEYCLOAK-17992-recreate-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.77289	95	MARK_RAN	9:8bd711fd0330f4fe980494ca43ab1139	addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...		\N	4.25.1	\N	\N	3533071243
json-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-03-15 00:04:33.78356	96	EXECUTED	9:e07d2bc0970c348bb06fb63b1f82ddbf	addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE		\N	4.25.1	\N	\N	3533071243
14.0.0-KEYCLOAK-11019	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-03-15 00:04:33.798659	97	EXECUTED	9:24fb8611e97f29989bea412aa38d12b7	createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	4.25.1	\N	\N	3533071243
14.0.0-KEYCLOAK-18286	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-03-15 00:04:33.80168	98	MARK_RAN	9:259f89014ce2506ee84740cbf7163aa7	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
14.0.0-KEYCLOAK-18286-revert	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-03-15 00:04:33.815123	99	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
14.0.0-KEYCLOAK-18286-supported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-03-15 00:04:33.826275	100	EXECUTED	9:60ca84a0f8c94ec8c3504a5a3bc88ee8	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
14.0.0-KEYCLOAK-18286-unsupported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-03-15 00:04:33.82961	101	MARK_RAN	9:d3d977031d431db16e2c181ce49d73e9	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
KEYCLOAK-17267-add-index-to-user-attributes	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-03-15 00:04:33.843495	102	EXECUTED	9:0b305d8d1277f3a89a0a53a659ad274c	createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE		\N	4.25.1	\N	\N	3533071243
KEYCLOAK-18146-add-saml-art-binding-identifier	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-03-15 00:04:33.852418	103	EXECUTED	9:2c374ad2cdfe20e2905a84c8fac48460	customChange		\N	4.25.1	\N	\N	3533071243
15.0.0-KEYCLOAK-18467	keycloak	META-INF/jpa-changelog-15.0.0.xml	2026-03-15 00:04:33.862409	104	EXECUTED	9:47a760639ac597360a8219f5b768b4de	addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...		\N	4.25.1	\N	\N	3533071243
17.0.0-9562	keycloak	META-INF/jpa-changelog-17.0.0.xml	2026-03-15 00:04:33.871387	105	EXECUTED	9:a6272f0576727dd8cad2522335f5d99e	createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY		\N	4.25.1	\N	\N	3533071243
18.0.0-10625-IDX_ADMIN_EVENT_TIME	keycloak	META-INF/jpa-changelog-18.0.0.xml	2026-03-15 00:04:33.879937	106	EXECUTED	9:015479dbd691d9cc8669282f4828c41d	createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY		\N	4.25.1	\N	\N	3533071243
19.0.0-10135	keycloak	META-INF/jpa-changelog-19.0.0.xml	2026-03-15 00:04:33.889507	107	EXECUTED	9:9518e495fdd22f78ad6425cc30630221	customChange		\N	4.25.1	\N	\N	3533071243
20.0.0-12964-supported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-03-15 00:04:33.89763	108	EXECUTED	9:e5f243877199fd96bcc842f27a1656ac	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.25.1	\N	\N	3533071243
20.0.0-12964-unsupported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-03-15 00:04:33.90093	109	MARK_RAN	9:1a6fcaa85e20bdeae0a9ce49b41946a5	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.25.1	\N	\N	3533071243
client-attributes-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-03-15 00:04:33.910904	110	EXECUTED	9:3f332e13e90739ed0c35b0b25b7822ca	addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
21.0.2-17277	keycloak	META-INF/jpa-changelog-21.0.2.xml	2026-03-15 00:04:33.918466	111	EXECUTED	9:7ee1f7a3fb8f5588f171fb9a6ab623c0	customChange		\N	4.25.1	\N	\N	3533071243
21.1.0-19404	keycloak	META-INF/jpa-changelog-21.1.0.xml	2026-03-15 00:04:33.943763	112	EXECUTED	9:3d7e830b52f33676b9d64f7f2b2ea634	modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER		\N	4.25.1	\N	\N	3533071243
21.1.0-19404-2	keycloak	META-INF/jpa-changelog-21.1.0.xml	2026-03-15 00:04:33.947674	113	MARK_RAN	9:627d032e3ef2c06c0e1f73d2ae25c26c	addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...		\N	4.25.1	\N	\N	3533071243
22.0.0-17484-updated	keycloak	META-INF/jpa-changelog-22.0.0.xml	2026-03-15 00:04:33.955918	114	EXECUTED	9:90af0bfd30cafc17b9f4d6eccd92b8b3	customChange		\N	4.25.1	\N	\N	3533071243
22.0.5-24031	keycloak	META-INF/jpa-changelog-22.0.0.xml	2026-03-15 00:04:33.958831	115	MARK_RAN	9:a60d2d7b315ec2d3eba9e2f145f9df28	customChange		\N	4.25.1	\N	\N	3533071243
23.0.0-12062	keycloak	META-INF/jpa-changelog-23.0.0.xml	2026-03-15 00:04:33.96861	116	EXECUTED	9:2168fbe728fec46ae9baf15bf80927b8	addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG		\N	4.25.1	\N	\N	3533071243
23.0.0-17258	keycloak	META-INF/jpa-changelog-23.0.0.xml	2026-03-15 00:04:33.975498	117	EXECUTED	9:36506d679a83bbfda85a27ea1864dca8	addColumn tableName=EVENT_ENTITY		\N	4.25.1	\N	\N	3533071243
24.0.0-9758	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-03-15 00:04:33.997987	118	EXECUTED	9:502c557a5189f600f0f445a9b49ebbce	addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...		\N	4.25.1	\N	\N	3533071243
24.0.0-26618-drop-index-if-present	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-03-15 00:04:34.012858	120	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
24.0.0-26618-reindex	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-03-15 00:04:34.021912	121	EXECUTED	9:08707c0f0db1cef6b352db03a60edc7f	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
24.0.2-27228	keycloak	META-INF/jpa-changelog-24.0.2.xml	2026-03-15 00:04:34.029617	122	EXECUTED	9:eaee11f6b8aa25d2cc6a84fb86fc6238	customChange		\N	4.25.1	\N	\N	3533071243
24.0.2-27967-drop-index-if-present	keycloak	META-INF/jpa-changelog-24.0.2.xml	2026-03-15 00:04:34.032655	123	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
24.0.2-27967-reindex	keycloak	META-INF/jpa-changelog-24.0.2.xml	2026-03-15 00:04:34.036942	124	MARK_RAN	9:d3d977031d431db16e2c181ce49d73e9	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.25.1	\N	\N	3533071243
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
1000	f	\N	\N
1001	f	\N	\N
\.


--
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.default_client_scope (realm_id, scope_id, default_scope) FROM stdin;
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	b4e8b63c-9583-4539-9f54-9b14960cedbf	f
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	6d4b3d32-1aee-4a86-83cc-731edab1ba5b	t
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	c4ad38f4-66d1-4493-b720-efbda3631008	t
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	e62af729-e080-4944-9a24-6c9ce4421f55	t
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	b76b17b1-7829-456e-b885-9be7b490e9ec	f
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b	f
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	cb390b44-68fa-457d-a606-f5d917223193	t
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	c60147f8-d097-43eb-91ff-78de7a97c9ee	t
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	6c008837-3497-45e9-9764-04cd9df96198	f
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	eff8cdf8-2ffd-4eea-bc6b-33462c789db8	t
de12fda2-20f4-4d12-9465-963b62049436	1ec94178-a969-4a39-aee6-1d42a0f9c42b	f
de12fda2-20f4-4d12-9465-963b62049436	6cccfe42-cb82-43db-bfb8-7d53bd1fb7f7	t
de12fda2-20f4-4d12-9465-963b62049436	f3b7d017-716d-42a8-b455-cbe553f12ef8	t
de12fda2-20f4-4d12-9465-963b62049436	d0c7277f-8e8a-40bd-9d0a-5bb49d930384	t
de12fda2-20f4-4d12-9465-963b62049436	7b1a3f54-fd5b-4648-986d-7103f88e9ef7	f
de12fda2-20f4-4d12-9465-963b62049436	7e4a2db8-a15d-46d6-a77d-33625844fbd2	f
de12fda2-20f4-4d12-9465-963b62049436	4525c9bb-e7d2-400a-85f0-a39402da0adb	t
de12fda2-20f4-4d12-9465-963b62049436	66fb6575-fad4-44b7-b495-c0395d3f3cf0	t
de12fda2-20f4-4d12-9465-963b62049436	22ae09db-1f0e-4453-8513-b37e88ef513e	f
de12fda2-20f4-4d12-9465-963b62049436	59305467-fc0f-45ba-b8c4-4ea5bcc7f912	t
\.


--
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.event_entity (id, client_id, details_json, error, ip_address, realm_id, session_id, event_time, type, user_id, details_json_long_value) FROM stdin;
\.


--
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_attribute (id, name, user_id, realm_id, storage_provider_id, value, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
\.


--
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent (id, client_id, user_id, realm_id, storage_provider_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent_cl_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_credential (id, salt, type, created_date, user_id, realm_id, storage_provider_id, user_label, secret_data, credential_data, priority) FROM stdin;
\.


--
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_group_membership (group_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_required_action (required_action, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_role_mapping (role_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_identity (identity_provider, realm_id, federated_user_id, federated_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_user (id, storage_provider_id, realm_id) FROM stdin;
\.


--
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_attribute (id, name, value, group_id) FROM stdin;
\.


--
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_role_mapping (role_id, group_id) FROM stdin;
\.


--
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider (internal_id, enabled, provider_alias, provider_id, store_token, authenticate_by_default, realm_id, add_token_role, trust_email, first_broker_login_flow_id, post_broker_login_flow_id, provider_display_name, link_only) FROM stdin;
\.


--
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_config (identity_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_mapper (id, name, idp_alias, idp_mapper_name, realm_id) FROM stdin;
\.


--
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.idp_mapper_config (idp_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_group (id, name, parent_group, realm_id) FROM stdin;
\.


--
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_role (id, client_realm_constraint, client_role, description, name, realm_id, client, realm) FROM stdin;
8c1fd4c9-90c3-43ee-a01d-ebe8f4aa8db3	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f	${role_default-roles}	default-roles-master	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N	\N
8bc22fd9-a79f-4bc6-92da-157e230dc835	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f	${role_create-realm}	create-realm	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N	\N
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f	${role_admin}	admin	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N	\N
d5fae2ba-cfa3-4046-99b0-b23a6ca7ce21	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_create-client}	create-client	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
e30a0c3d-0d89-4c31-8230-2815d4f9788b	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_view-realm}	view-realm	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
4317acbe-061d-4d0f-815f-2e587f1b1140	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_view-users}	view-users	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
bb86328b-8dbf-47a0-867d-8be5af352c4c	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_view-clients}	view-clients	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
2b1b6c98-5219-4b85-9d30-f37658f95116	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_view-events}	view-events	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
94c1ad34-c1d3-4f95-a185-fc36b1d41cbf	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_view-identity-providers}	view-identity-providers	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
f3611b1f-4b52-4af2-84e6-fd16fe03734f	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_view-authorization}	view-authorization	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
8abe2f7c-9509-458d-bb4b-0ec6e4c03033	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_manage-realm}	manage-realm	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
26471fa5-5e35-43ec-a6dd-dc5df590620e	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_manage-users}	manage-users	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
3a777ff9-6ada-4398-8653-11c127d970d8	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_manage-clients}	manage-clients	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
820b7a66-143a-462b-9304-1a2c7b16ab2d	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_manage-events}	manage-events	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
630f76eb-2d7f-4e7c-bf0f-8889a54c8cf4	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_manage-identity-providers}	manage-identity-providers	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
22226002-d868-4d6d-be7c-0dc13dd366dc	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_manage-authorization}	manage-authorization	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
9a9f7580-fb09-4e3f-9ab0-0438fee5c9d0	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_query-users}	query-users	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
ecadd75a-a996-48c7-ab28-f2bf2af2389a	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_query-clients}	query-clients	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
f174d60a-e602-4a59-868e-1f80431c5600	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_query-realms}	query-realms	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
7cb0c648-d35e-452b-bbfc-fa32b129fcba	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_query-groups}	query-groups	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
0ac93bef-e3f9-4585-bb05-a918f514e930	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_view-profile}	view-profile	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
b5f63ef9-7b58-4db9-a807-127095d0c686	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_manage-account}	manage-account	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
5bd860d4-4c9b-40fa-aab0-154b851a0665	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_manage-account-links}	manage-account-links	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
69cc5551-d47c-46f5-b512-5ef87fa96396	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_view-applications}	view-applications	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
5104e05c-7710-4346-8710-ec71e06dfa0a	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_view-consent}	view-consent	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
0d8590b3-d5fe-4cf0-adb7-a9a4ebc8b51b	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_manage-consent}	manage-consent	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
3b98d9ac-6aa9-45d4-a127-240dc5e2d23b	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_view-groups}	view-groups	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
43ebee80-e555-4788-b814-6d8bc53faee5	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	t	${role_delete-account}	delete-account	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	a522ee9b-54be-4182-8dcd-c1f5b1e90bda	\N
d1605b91-5757-43ab-aff1-f1f34cd4fd7c	4d0e9a29-7e44-42e0-b996-06e717c10a95	t	${role_read-token}	read-token	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	4d0e9a29-7e44-42e0-b996-06e717c10a95	\N
1fee725e-152a-470d-8383-633eeb15d96a	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	t	${role_impersonation}	impersonation	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	\N
c56ba56d-c121-4746-a670-5f07f53fa44d	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f	${role_offline-access}	offline_access	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N	\N
c9e21f5e-f54a-4c76-a6f1-7239fd9c8fa4	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f	${role_uma_authorization}	uma_authorization	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	\N	\N
2fffe0c0-04b2-40a0-a67e-a436b46a4f0d	de12fda2-20f4-4d12-9465-963b62049436	f	${role_default-roles}	default-roles-infra	de12fda2-20f4-4d12-9465-963b62049436	\N	\N
cab6327e-eb48-4c71-89f9-bfc9c6276eba	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_create-client}	create-client	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
3293534d-5b5d-4f44-84ad-f41dd87c0bef	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_view-realm}	view-realm	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
8f1a518b-fb13-4bf1-ba95-27a8844a8361	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_view-users}	view-users	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
aca91e54-b21e-476d-9b4f-51382414a551	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_view-clients}	view-clients	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
42f50e32-f95b-45f4-acb3-8c58d1f4fbd6	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_view-events}	view-events	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
668770b8-8e15-4f47-86af-ecbe49b25a9e	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_view-identity-providers}	view-identity-providers	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
da108ae2-a814-41df-957f-8e3dbdc7ea83	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_view-authorization}	view-authorization	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
8656278c-d3f7-4ff5-a1a4-71a40cd2c990	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_manage-realm}	manage-realm	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
6e34adb0-877d-4ed6-bc59-118c2e075935	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_manage-users}	manage-users	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
c1108d9b-8f86-4b30-addf-640ee28421b8	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_manage-clients}	manage-clients	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
ab2c6f03-e8d5-4d7d-af0a-9b6b4791f06e	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_manage-events}	manage-events	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
49c45a56-fbaa-46fa-97b9-4c5b2285a00c	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_manage-identity-providers}	manage-identity-providers	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
6afbe2d5-1141-482b-be1e-3bf341312b54	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_manage-authorization}	manage-authorization	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
1d42cfc8-a5f7-4714-b233-229dbefe201e	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_query-users}	query-users	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
23cf4a81-128b-4bda-b35c-2753a1128ad2	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_query-clients}	query-clients	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
cc9e2683-6f47-4564-aaf7-1f5de6faf598	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_query-realms}	query-realms	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
19afbee7-5bc8-4954-ac4a-9e5892cf23b6	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_query-groups}	query-groups	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
092376cd-bf92-4385-a8fc-45f6ecd91c4d	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_realm-admin}	realm-admin	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
7efdd65e-82d6-4613-9e74-10593fafff1a	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_create-client}	create-client	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
9895f098-a9d4-44c9-8c20-8653f1493cf5	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_view-realm}	view-realm	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
1c81762d-0d55-4496-b332-21fe457c7cf5	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_view-users}	view-users	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
3f245334-00ef-42e1-9af9-a6bc995acaa9	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_view-clients}	view-clients	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
83b5b2b8-54d7-414c-8001-5cafdbd51ed0	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_view-events}	view-events	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
51c63f32-a7bd-4312-bd86-df9c622230da	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_view-identity-providers}	view-identity-providers	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
cecb5d25-82a2-4ea5-a29d-eff4489c69a6	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_view-authorization}	view-authorization	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
4cde338c-7abb-4687-80b0-b8ed63f3a78f	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_manage-realm}	manage-realm	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
6c51a3d0-92a1-4c90-b48c-1a088ba7796d	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_manage-users}	manage-users	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
ef46a61f-dd61-4cd9-b0f6-9566bc618958	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_manage-clients}	manage-clients	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
bcfdd208-d28f-42df-895a-001c37cbe34d	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_manage-events}	manage-events	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
b5b52846-9394-47be-bbd3-396b6a83a499	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_manage-identity-providers}	manage-identity-providers	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
adfd3e9b-53dd-46de-8e1b-da6dd8fd5685	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_manage-authorization}	manage-authorization	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
564f4dd5-911b-458c-bf95-79cb7c0b4354	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_query-users}	query-users	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
fe618d47-6d25-4549-b265-e37eac909bf6	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_query-clients}	query-clients	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
33ea8518-6352-4af0-8f19-88c602899cab	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_query-realms}	query-realms	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
ca23d79f-c388-4923-b640-8be5488ba2a7	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_query-groups}	query-groups	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
a38c3232-7b1f-4f77-a969-4d3ed633734d	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_view-profile}	view-profile	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
93cda667-9ab1-4d9c-9b1b-e071b707a894	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_manage-account}	manage-account	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
1cb57ff8-e669-4764-9047-749281c42856	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_manage-account-links}	manage-account-links	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
e3543385-3e9a-46e8-9e44-6cb9a6700d4a	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_view-applications}	view-applications	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
2ec82745-2849-47e2-876e-ff1528942b3c	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_view-consent}	view-consent	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
15de7f36-0b0b-4057-a227-eff8ed9570b4	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_manage-consent}	manage-consent	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
81babc46-608f-4f54-a847-3d9bf3f2bccc	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_view-groups}	view-groups	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
02a6ef85-a78c-48f3-8289-41fce6214491	23e16926-946b-450b-99f2-b6c8851e8b9a	t	${role_delete-account}	delete-account	de12fda2-20f4-4d12-9465-963b62049436	23e16926-946b-450b-99f2-b6c8851e8b9a	\N
b74cc318-4e09-42b3-b5f2-2ed9fa90d4e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	t	${role_impersonation}	impersonation	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	ff410b6d-6331-4fdd-9e62-9f2341d92885	\N
2b4ec238-dfa1-403e-ab2f-332af348d09f	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	t	${role_impersonation}	impersonation	de12fda2-20f4-4d12-9465-963b62049436	eaeac2ab-032f-4a13-8ada-2df1ebe5de92	\N
9aa8b66f-e3bc-4fe5-a83d-da8ed30af48c	730c4097-9ae0-407c-809a-2c2d8f831486	t	${role_read-token}	read-token	de12fda2-20f4-4d12-9465-963b62049436	730c4097-9ae0-407c-809a-2c2d8f831486	\N
09bffe4e-aee6-492c-a62b-720a6b72515e	de12fda2-20f4-4d12-9465-963b62049436	f	${role_offline-access}	offline_access	de12fda2-20f4-4d12-9465-963b62049436	\N	\N
00856234-e7bc-4478-ab6d-0a46d56f27da	de12fda2-20f4-4d12-9465-963b62049436	f	${role_uma_authorization}	uma_authorization	de12fda2-20f4-4d12-9465-963b62049436	\N	\N
01dc0e37-c610-43ad-8a09-318530d41060	9a1f7220-2322-4c4f-97d9-b3a049c093d1	t		consoleAdmin	de12fda2-20f4-4d12-9465-963b62049436	9a1f7220-2322-4c4f-97d9-b3a049c093d1	\N
\.


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.migration_model (id, version, update_time) FROM stdin;
qy5c9	24.0.5	1773533074
\.


--
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_client_session (user_session_id, client_id, offline_flag, "timestamp", data, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_user_session (user_session_id, user_id, realm_id, created_on, offline_flag, data, last_session_refresh) FROM stdin;
\.


--
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.policy_config (policy_id, name, value) FROM stdin;
\.


--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
23e360b0-94f5-48ee-9b26-826d45f00d64	audience resolve	openid-connect	oidc-audience-resolve-mapper	c2334f0f-b958-492a-a19e-1caee6b0c80c	\N
e22008b1-50ac-4e62-bf55-d32843ec9fd5	locale	openid-connect	oidc-usermodel-attribute-mapper	616302de-d891-419a-b143-7fd14bd78988	\N
211d7347-fbd1-454e-a469-03ddae793ab3	role list	saml	saml-role-list-mapper	\N	6d4b3d32-1aee-4a86-83cc-731edab1ba5b
5157eda6-f9dd-4958-a80f-d8b8a5aea67f	full name	openid-connect	oidc-full-name-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
5373c68e-21c6-4e68-8bbe-73df137de0f5	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
9466c3ec-de1e-4b14-8e92-c99b412acc2c	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
ced2b820-07f9-434d-93e9-216859b1c5d8	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
c212dd25-50f5-4811-b4e2-441b3cbbeab4	username	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
f5f4a83b-0a89-4b61-a1ee-64661eba786d	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	website	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
b8a10ab8-be3d-4b63-b42e-e467f83286d9	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
34f63172-2fdc-4a88-bccf-7167c69b232c	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
1095e639-54ef-4ec9-9575-7daa50d6b9eb	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
477b7f57-2a26-42af-a6d1-1d8540451798	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
72a38b3a-d111-4f28-acc4-ed38516a252c	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	c4ad38f4-66d1-4493-b720-efbda3631008
2b5a6880-f412-4dce-80be-ddfc0f534d1b	email	openid-connect	oidc-usermodel-attribute-mapper	\N	e62af729-e080-4944-9a24-6c9ce4421f55
5f23b310-9364-4346-a1fe-eae745713f75	email verified	openid-connect	oidc-usermodel-property-mapper	\N	e62af729-e080-4944-9a24-6c9ce4421f55
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	address	openid-connect	oidc-address-mapper	\N	b76b17b1-7829-456e-b885-9be7b490e9ec
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b
f065880e-c296-487a-8774-57e8c7ad65cd	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	f697ef99-1ce3-4a1a-b63f-46aab3c55b3b
5e843c51-820e-443d-9d58-768a19e1a9e0	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	cb390b44-68fa-457d-a606-f5d917223193
2a4ea439-fe78-432a-a820-767b99805830	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	cb390b44-68fa-457d-a606-f5d917223193
bb8e8cda-c553-4668-9fff-255cbdfe6f7e	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	cb390b44-68fa-457d-a606-f5d917223193
c7ac4283-82ee-4769-b056-0cbdbf97195e	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	c60147f8-d097-43eb-91ff-78de7a97c9ee
53389fc3-77a2-4749-8334-eeca9421d111	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	6c008837-3497-45e9-9764-04cd9df96198
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	6c008837-3497-45e9-9764-04cd9df96198
a54d07a7-773d-4eaa-85b9-bcce1e7428e3	acr loa level	openid-connect	oidc-acr-mapper	\N	eff8cdf8-2ffd-4eea-bc6b-33462c789db8
0835cdfe-fdad-413b-99b2-1bbd31d482b5	audience resolve	openid-connect	oidc-audience-resolve-mapper	00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	\N
ea0c7504-cac0-47bf-a821-86e176c50179	role list	saml	saml-role-list-mapper	\N	6cccfe42-cb82-43db-bfb8-7d53bd1fb7f7
4d4e8919-54d9-48e7-b4b1-c2d3a7b6014c	full name	openid-connect	oidc-full-name-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
29642e17-8997-400e-ae6a-64836d7205ff	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
d099573c-38f4-43f1-b884-04df613cc071	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
3501cae2-1615-4582-b4a5-79d3a3cdf41a	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
7657eca0-a0be-4722-920c-63c9192ffd95	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
4a179738-a537-4b81-8d90-207edaa40a88	username	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
44056eb3-b6b2-4d8e-b514-44aa0db7351a	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
f9892c27-7eee-4843-bafd-f9dc11285a60	website	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	f3b7d017-716d-42a8-b455-cbe553f12ef8
716dd2c8-6ce1-4010-9255-7e9099be99c9	email	openid-connect	oidc-usermodel-attribute-mapper	\N	d0c7277f-8e8a-40bd-9d0a-5bb49d930384
b4225584-bad6-473a-8a02-8fc1ea22de80	email verified	openid-connect	oidc-usermodel-property-mapper	\N	d0c7277f-8e8a-40bd-9d0a-5bb49d930384
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	address	openid-connect	oidc-address-mapper	\N	7b1a3f54-fd5b-4648-986d-7103f88e9ef7
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	7e4a2db8-a15d-46d6-a77d-33625844fbd2
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	7e4a2db8-a15d-46d6-a77d-33625844fbd2
d36c7ff1-cfb7-4c4f-bb2f-c9d496478894	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	4525c9bb-e7d2-400a-85f0-a39402da0adb
a840b66d-d833-4d33-9ca9-b314bb9d0402	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	4525c9bb-e7d2-400a-85f0-a39402da0adb
69373405-b9cf-4bdc-9dcf-68d7b6030642	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	4525c9bb-e7d2-400a-85f0-a39402da0adb
24690d27-040c-43ea-a420-cd3cea8a63a2	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	66fb6575-fad4-44b7-b495-c0395d3f3cf0
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	22ae09db-1f0e-4453-8513-b37e88ef513e
1b54b2a0-e791-43b5-9638-303aca65ce1e	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	22ae09db-1f0e-4453-8513-b37e88ef513e
6b40e687-066f-4a60-9957-7f44d75d65b8	acr loa level	openid-connect	oidc-acr-mapper	\N	59305467-fc0f-45ba-b8c4-4ea5bcc7f912
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	locale	openid-connect	oidc-usermodel-attribute-mapper	402292aa-3c17-4583-a05c-465e509cff53	\N
215bee9c-9b94-447a-94f1-0953609fdbee	client roles	openid-connect	oidc-usermodel-client-role-mapper	9a1f7220-2322-4c4f-97d9-b3a049c093d1	\N
ac34d0c0-80f6-4deb-8bb7-7b586637ac7e	minio	openid-connect	oidc-audience-mapper	9a1f7220-2322-4c4f-97d9-b3a049c093d1	\N
\.


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
e22008b1-50ac-4e62-bf55-d32843ec9fd5	true	introspection.token.claim
e22008b1-50ac-4e62-bf55-d32843ec9fd5	true	userinfo.token.claim
e22008b1-50ac-4e62-bf55-d32843ec9fd5	locale	user.attribute
e22008b1-50ac-4e62-bf55-d32843ec9fd5	true	id.token.claim
e22008b1-50ac-4e62-bf55-d32843ec9fd5	true	access.token.claim
e22008b1-50ac-4e62-bf55-d32843ec9fd5	locale	claim.name
e22008b1-50ac-4e62-bf55-d32843ec9fd5	String	jsonType.label
211d7347-fbd1-454e-a469-03ddae793ab3	false	single
211d7347-fbd1-454e-a469-03ddae793ab3	Basic	attribute.nameformat
211d7347-fbd1-454e-a469-03ddae793ab3	Role	attribute.name
1095e639-54ef-4ec9-9575-7daa50d6b9eb	true	introspection.token.claim
1095e639-54ef-4ec9-9575-7daa50d6b9eb	true	userinfo.token.claim
1095e639-54ef-4ec9-9575-7daa50d6b9eb	zoneinfo	user.attribute
1095e639-54ef-4ec9-9575-7daa50d6b9eb	true	id.token.claim
1095e639-54ef-4ec9-9575-7daa50d6b9eb	true	access.token.claim
1095e639-54ef-4ec9-9575-7daa50d6b9eb	zoneinfo	claim.name
1095e639-54ef-4ec9-9575-7daa50d6b9eb	String	jsonType.label
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	true	introspection.token.claim
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	true	userinfo.token.claim
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	picture	user.attribute
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	true	id.token.claim
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	true	access.token.claim
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	picture	claim.name
3222a9bf-4e47-4b53-8b7a-cf7efb2b2c7a	String	jsonType.label
34f63172-2fdc-4a88-bccf-7167c69b232c	true	introspection.token.claim
34f63172-2fdc-4a88-bccf-7167c69b232c	true	userinfo.token.claim
34f63172-2fdc-4a88-bccf-7167c69b232c	birthdate	user.attribute
34f63172-2fdc-4a88-bccf-7167c69b232c	true	id.token.claim
34f63172-2fdc-4a88-bccf-7167c69b232c	true	access.token.claim
34f63172-2fdc-4a88-bccf-7167c69b232c	birthdate	claim.name
34f63172-2fdc-4a88-bccf-7167c69b232c	String	jsonType.label
477b7f57-2a26-42af-a6d1-1d8540451798	true	introspection.token.claim
477b7f57-2a26-42af-a6d1-1d8540451798	true	userinfo.token.claim
477b7f57-2a26-42af-a6d1-1d8540451798	locale	user.attribute
477b7f57-2a26-42af-a6d1-1d8540451798	true	id.token.claim
477b7f57-2a26-42af-a6d1-1d8540451798	true	access.token.claim
477b7f57-2a26-42af-a6d1-1d8540451798	locale	claim.name
477b7f57-2a26-42af-a6d1-1d8540451798	String	jsonType.label
5157eda6-f9dd-4958-a80f-d8b8a5aea67f	true	introspection.token.claim
5157eda6-f9dd-4958-a80f-d8b8a5aea67f	true	userinfo.token.claim
5157eda6-f9dd-4958-a80f-d8b8a5aea67f	true	id.token.claim
5157eda6-f9dd-4958-a80f-d8b8a5aea67f	true	access.token.claim
5373c68e-21c6-4e68-8bbe-73df137de0f5	true	introspection.token.claim
5373c68e-21c6-4e68-8bbe-73df137de0f5	true	userinfo.token.claim
5373c68e-21c6-4e68-8bbe-73df137de0f5	firstName	user.attribute
5373c68e-21c6-4e68-8bbe-73df137de0f5	true	id.token.claim
5373c68e-21c6-4e68-8bbe-73df137de0f5	true	access.token.claim
5373c68e-21c6-4e68-8bbe-73df137de0f5	given_name	claim.name
5373c68e-21c6-4e68-8bbe-73df137de0f5	String	jsonType.label
72a38b3a-d111-4f28-acc4-ed38516a252c	true	introspection.token.claim
72a38b3a-d111-4f28-acc4-ed38516a252c	true	userinfo.token.claim
72a38b3a-d111-4f28-acc4-ed38516a252c	updatedAt	user.attribute
72a38b3a-d111-4f28-acc4-ed38516a252c	true	id.token.claim
72a38b3a-d111-4f28-acc4-ed38516a252c	true	access.token.claim
72a38b3a-d111-4f28-acc4-ed38516a252c	updated_at	claim.name
72a38b3a-d111-4f28-acc4-ed38516a252c	long	jsonType.label
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	true	introspection.token.claim
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	true	userinfo.token.claim
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	website	user.attribute
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	true	id.token.claim
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	true	access.token.claim
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	website	claim.name
90e70aa0-b79e-4872-b04a-7c1acdc39a9f	String	jsonType.label
9466c3ec-de1e-4b14-8e92-c99b412acc2c	true	introspection.token.claim
9466c3ec-de1e-4b14-8e92-c99b412acc2c	true	userinfo.token.claim
9466c3ec-de1e-4b14-8e92-c99b412acc2c	middleName	user.attribute
9466c3ec-de1e-4b14-8e92-c99b412acc2c	true	id.token.claim
9466c3ec-de1e-4b14-8e92-c99b412acc2c	true	access.token.claim
9466c3ec-de1e-4b14-8e92-c99b412acc2c	middle_name	claim.name
9466c3ec-de1e-4b14-8e92-c99b412acc2c	String	jsonType.label
b8a10ab8-be3d-4b63-b42e-e467f83286d9	true	introspection.token.claim
b8a10ab8-be3d-4b63-b42e-e467f83286d9	true	userinfo.token.claim
b8a10ab8-be3d-4b63-b42e-e467f83286d9	gender	user.attribute
b8a10ab8-be3d-4b63-b42e-e467f83286d9	true	id.token.claim
b8a10ab8-be3d-4b63-b42e-e467f83286d9	true	access.token.claim
b8a10ab8-be3d-4b63-b42e-e467f83286d9	gender	claim.name
b8a10ab8-be3d-4b63-b42e-e467f83286d9	String	jsonType.label
c212dd25-50f5-4811-b4e2-441b3cbbeab4	true	introspection.token.claim
c212dd25-50f5-4811-b4e2-441b3cbbeab4	true	userinfo.token.claim
c212dd25-50f5-4811-b4e2-441b3cbbeab4	username	user.attribute
c212dd25-50f5-4811-b4e2-441b3cbbeab4	true	id.token.claim
c212dd25-50f5-4811-b4e2-441b3cbbeab4	true	access.token.claim
c212dd25-50f5-4811-b4e2-441b3cbbeab4	preferred_username	claim.name
c212dd25-50f5-4811-b4e2-441b3cbbeab4	String	jsonType.label
ced2b820-07f9-434d-93e9-216859b1c5d8	true	introspection.token.claim
ced2b820-07f9-434d-93e9-216859b1c5d8	true	userinfo.token.claim
ced2b820-07f9-434d-93e9-216859b1c5d8	nickname	user.attribute
ced2b820-07f9-434d-93e9-216859b1c5d8	true	id.token.claim
ced2b820-07f9-434d-93e9-216859b1c5d8	true	access.token.claim
ced2b820-07f9-434d-93e9-216859b1c5d8	nickname	claim.name
ced2b820-07f9-434d-93e9-216859b1c5d8	String	jsonType.label
f5f4a83b-0a89-4b61-a1ee-64661eba786d	true	introspection.token.claim
f5f4a83b-0a89-4b61-a1ee-64661eba786d	true	userinfo.token.claim
f5f4a83b-0a89-4b61-a1ee-64661eba786d	profile	user.attribute
f5f4a83b-0a89-4b61-a1ee-64661eba786d	true	id.token.claim
f5f4a83b-0a89-4b61-a1ee-64661eba786d	true	access.token.claim
f5f4a83b-0a89-4b61-a1ee-64661eba786d	profile	claim.name
f5f4a83b-0a89-4b61-a1ee-64661eba786d	String	jsonType.label
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	true	introspection.token.claim
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	true	userinfo.token.claim
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	lastName	user.attribute
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	true	id.token.claim
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	true	access.token.claim
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	family_name	claim.name
fe62f86f-ea40-4001-a75f-9fe9a676fe4c	String	jsonType.label
2b5a6880-f412-4dce-80be-ddfc0f534d1b	true	introspection.token.claim
2b5a6880-f412-4dce-80be-ddfc0f534d1b	true	userinfo.token.claim
2b5a6880-f412-4dce-80be-ddfc0f534d1b	email	user.attribute
2b5a6880-f412-4dce-80be-ddfc0f534d1b	true	id.token.claim
2b5a6880-f412-4dce-80be-ddfc0f534d1b	true	access.token.claim
2b5a6880-f412-4dce-80be-ddfc0f534d1b	email	claim.name
2b5a6880-f412-4dce-80be-ddfc0f534d1b	String	jsonType.label
5f23b310-9364-4346-a1fe-eae745713f75	true	introspection.token.claim
5f23b310-9364-4346-a1fe-eae745713f75	true	userinfo.token.claim
5f23b310-9364-4346-a1fe-eae745713f75	emailVerified	user.attribute
5f23b310-9364-4346-a1fe-eae745713f75	true	id.token.claim
5f23b310-9364-4346-a1fe-eae745713f75	true	access.token.claim
5f23b310-9364-4346-a1fe-eae745713f75	email_verified	claim.name
5f23b310-9364-4346-a1fe-eae745713f75	boolean	jsonType.label
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	formatted	user.attribute.formatted
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	country	user.attribute.country
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	true	introspection.token.claim
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	postal_code	user.attribute.postal_code
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	true	userinfo.token.claim
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	street	user.attribute.street
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	true	id.token.claim
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	region	user.attribute.region
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	true	access.token.claim
f3e9c74a-2cb3-4628-a2e4-c4e43beaf445	locality	user.attribute.locality
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	true	introspection.token.claim
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	true	userinfo.token.claim
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	phoneNumber	user.attribute
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	true	id.token.claim
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	true	access.token.claim
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	phone_number	claim.name
c27c86fa-2113-4ef0-a3ca-5e99e62e8718	String	jsonType.label
f065880e-c296-487a-8774-57e8c7ad65cd	true	introspection.token.claim
f065880e-c296-487a-8774-57e8c7ad65cd	true	userinfo.token.claim
f065880e-c296-487a-8774-57e8c7ad65cd	phoneNumberVerified	user.attribute
f065880e-c296-487a-8774-57e8c7ad65cd	true	id.token.claim
f065880e-c296-487a-8774-57e8c7ad65cd	true	access.token.claim
f065880e-c296-487a-8774-57e8c7ad65cd	phone_number_verified	claim.name
f065880e-c296-487a-8774-57e8c7ad65cd	boolean	jsonType.label
2a4ea439-fe78-432a-a820-767b99805830	true	introspection.token.claim
2a4ea439-fe78-432a-a820-767b99805830	true	multivalued
2a4ea439-fe78-432a-a820-767b99805830	foo	user.attribute
2a4ea439-fe78-432a-a820-767b99805830	true	access.token.claim
2a4ea439-fe78-432a-a820-767b99805830	resource_access.${client_id}.roles	claim.name
2a4ea439-fe78-432a-a820-767b99805830	String	jsonType.label
5e843c51-820e-443d-9d58-768a19e1a9e0	true	introspection.token.claim
5e843c51-820e-443d-9d58-768a19e1a9e0	true	multivalued
5e843c51-820e-443d-9d58-768a19e1a9e0	foo	user.attribute
5e843c51-820e-443d-9d58-768a19e1a9e0	true	access.token.claim
5e843c51-820e-443d-9d58-768a19e1a9e0	realm_access.roles	claim.name
5e843c51-820e-443d-9d58-768a19e1a9e0	String	jsonType.label
bb8e8cda-c553-4668-9fff-255cbdfe6f7e	true	introspection.token.claim
bb8e8cda-c553-4668-9fff-255cbdfe6f7e	true	access.token.claim
c7ac4283-82ee-4769-b056-0cbdbf97195e	true	introspection.token.claim
c7ac4283-82ee-4769-b056-0cbdbf97195e	true	access.token.claim
53389fc3-77a2-4749-8334-eeca9421d111	true	introspection.token.claim
53389fc3-77a2-4749-8334-eeca9421d111	true	userinfo.token.claim
53389fc3-77a2-4749-8334-eeca9421d111	username	user.attribute
53389fc3-77a2-4749-8334-eeca9421d111	true	id.token.claim
53389fc3-77a2-4749-8334-eeca9421d111	true	access.token.claim
53389fc3-77a2-4749-8334-eeca9421d111	upn	claim.name
53389fc3-77a2-4749-8334-eeca9421d111	String	jsonType.label
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	true	introspection.token.claim
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	true	multivalued
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	foo	user.attribute
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	true	id.token.claim
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	true	access.token.claim
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	groups	claim.name
c7e6d01c-6c8f-4ec7-98c8-7f9d81327d81	String	jsonType.label
a54d07a7-773d-4eaa-85b9-bcce1e7428e3	true	introspection.token.claim
a54d07a7-773d-4eaa-85b9-bcce1e7428e3	true	id.token.claim
a54d07a7-773d-4eaa-85b9-bcce1e7428e3	true	access.token.claim
ea0c7504-cac0-47bf-a821-86e176c50179	false	single
ea0c7504-cac0-47bf-a821-86e176c50179	Basic	attribute.nameformat
ea0c7504-cac0-47bf-a821-86e176c50179	Role	attribute.name
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	true	introspection.token.claim
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	true	userinfo.token.claim
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	profile	user.attribute
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	true	id.token.claim
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	true	access.token.claim
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	profile	claim.name
0cdc5e33-b4e3-4a48-a303-b86ab35314a8	String	jsonType.label
29642e17-8997-400e-ae6a-64836d7205ff	true	introspection.token.claim
29642e17-8997-400e-ae6a-64836d7205ff	true	userinfo.token.claim
29642e17-8997-400e-ae6a-64836d7205ff	lastName	user.attribute
29642e17-8997-400e-ae6a-64836d7205ff	true	id.token.claim
29642e17-8997-400e-ae6a-64836d7205ff	true	access.token.claim
29642e17-8997-400e-ae6a-64836d7205ff	family_name	claim.name
29642e17-8997-400e-ae6a-64836d7205ff	String	jsonType.label
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	true	introspection.token.claim
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	true	userinfo.token.claim
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	birthdate	user.attribute
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	true	id.token.claim
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	true	access.token.claim
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	birthdate	claim.name
29a12c99-e41b-4d9d-a6af-ff4efa78e9e3	String	jsonType.label
3501cae2-1615-4582-b4a5-79d3a3cdf41a	true	introspection.token.claim
3501cae2-1615-4582-b4a5-79d3a3cdf41a	true	userinfo.token.claim
3501cae2-1615-4582-b4a5-79d3a3cdf41a	middleName	user.attribute
3501cae2-1615-4582-b4a5-79d3a3cdf41a	true	id.token.claim
3501cae2-1615-4582-b4a5-79d3a3cdf41a	true	access.token.claim
3501cae2-1615-4582-b4a5-79d3a3cdf41a	middle_name	claim.name
3501cae2-1615-4582-b4a5-79d3a3cdf41a	String	jsonType.label
44056eb3-b6b2-4d8e-b514-44aa0db7351a	true	introspection.token.claim
44056eb3-b6b2-4d8e-b514-44aa0db7351a	true	userinfo.token.claim
44056eb3-b6b2-4d8e-b514-44aa0db7351a	picture	user.attribute
44056eb3-b6b2-4d8e-b514-44aa0db7351a	true	id.token.claim
44056eb3-b6b2-4d8e-b514-44aa0db7351a	true	access.token.claim
44056eb3-b6b2-4d8e-b514-44aa0db7351a	picture	claim.name
44056eb3-b6b2-4d8e-b514-44aa0db7351a	String	jsonType.label
4a179738-a537-4b81-8d90-207edaa40a88	true	introspection.token.claim
4a179738-a537-4b81-8d90-207edaa40a88	true	userinfo.token.claim
4a179738-a537-4b81-8d90-207edaa40a88	username	user.attribute
4a179738-a537-4b81-8d90-207edaa40a88	true	id.token.claim
4a179738-a537-4b81-8d90-207edaa40a88	true	access.token.claim
4a179738-a537-4b81-8d90-207edaa40a88	preferred_username	claim.name
4a179738-a537-4b81-8d90-207edaa40a88	String	jsonType.label
4d4e8919-54d9-48e7-b4b1-c2d3a7b6014c	true	introspection.token.claim
4d4e8919-54d9-48e7-b4b1-c2d3a7b6014c	true	userinfo.token.claim
4d4e8919-54d9-48e7-b4b1-c2d3a7b6014c	true	id.token.claim
4d4e8919-54d9-48e7-b4b1-c2d3a7b6014c	true	access.token.claim
7657eca0-a0be-4722-920c-63c9192ffd95	true	introspection.token.claim
7657eca0-a0be-4722-920c-63c9192ffd95	true	userinfo.token.claim
7657eca0-a0be-4722-920c-63c9192ffd95	nickname	user.attribute
7657eca0-a0be-4722-920c-63c9192ffd95	true	id.token.claim
7657eca0-a0be-4722-920c-63c9192ffd95	true	access.token.claim
7657eca0-a0be-4722-920c-63c9192ffd95	nickname	claim.name
7657eca0-a0be-4722-920c-63c9192ffd95	String	jsonType.label
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	true	introspection.token.claim
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	true	userinfo.token.claim
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	locale	user.attribute
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	true	id.token.claim
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	true	access.token.claim
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	locale	claim.name
9fec27a8-ed3e-4d53-b3e8-b5e28976c8b4	String	jsonType.label
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	true	introspection.token.claim
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	true	userinfo.token.claim
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	zoneinfo	user.attribute
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	true	id.token.claim
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	true	access.token.claim
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	zoneinfo	claim.name
ae46e117-6aa1-49f5-bc5a-598cd1c78b60	String	jsonType.label
d099573c-38f4-43f1-b884-04df613cc071	true	introspection.token.claim
d099573c-38f4-43f1-b884-04df613cc071	true	userinfo.token.claim
d099573c-38f4-43f1-b884-04df613cc071	firstName	user.attribute
d099573c-38f4-43f1-b884-04df613cc071	true	id.token.claim
d099573c-38f4-43f1-b884-04df613cc071	true	access.token.claim
d099573c-38f4-43f1-b884-04df613cc071	given_name	claim.name
d099573c-38f4-43f1-b884-04df613cc071	String	jsonType.label
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	true	introspection.token.claim
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	true	userinfo.token.claim
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	gender	user.attribute
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	true	id.token.claim
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	true	access.token.claim
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	gender	claim.name
e38aaa68-3fd4-4aeb-b610-8653bef49ec9	String	jsonType.label
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	true	introspection.token.claim
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	true	userinfo.token.claim
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	updatedAt	user.attribute
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	true	id.token.claim
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	true	access.token.claim
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	updated_at	claim.name
efc2c6d1-b0d4-4c47-8791-4d83b71220b6	long	jsonType.label
f9892c27-7eee-4843-bafd-f9dc11285a60	true	introspection.token.claim
f9892c27-7eee-4843-bafd-f9dc11285a60	true	userinfo.token.claim
f9892c27-7eee-4843-bafd-f9dc11285a60	website	user.attribute
f9892c27-7eee-4843-bafd-f9dc11285a60	true	id.token.claim
f9892c27-7eee-4843-bafd-f9dc11285a60	true	access.token.claim
f9892c27-7eee-4843-bafd-f9dc11285a60	website	claim.name
f9892c27-7eee-4843-bafd-f9dc11285a60	String	jsonType.label
716dd2c8-6ce1-4010-9255-7e9099be99c9	true	introspection.token.claim
716dd2c8-6ce1-4010-9255-7e9099be99c9	true	userinfo.token.claim
716dd2c8-6ce1-4010-9255-7e9099be99c9	email	user.attribute
716dd2c8-6ce1-4010-9255-7e9099be99c9	true	id.token.claim
716dd2c8-6ce1-4010-9255-7e9099be99c9	true	access.token.claim
716dd2c8-6ce1-4010-9255-7e9099be99c9	email	claim.name
716dd2c8-6ce1-4010-9255-7e9099be99c9	String	jsonType.label
b4225584-bad6-473a-8a02-8fc1ea22de80	true	introspection.token.claim
b4225584-bad6-473a-8a02-8fc1ea22de80	true	userinfo.token.claim
b4225584-bad6-473a-8a02-8fc1ea22de80	emailVerified	user.attribute
b4225584-bad6-473a-8a02-8fc1ea22de80	true	id.token.claim
b4225584-bad6-473a-8a02-8fc1ea22de80	true	access.token.claim
b4225584-bad6-473a-8a02-8fc1ea22de80	email_verified	claim.name
b4225584-bad6-473a-8a02-8fc1ea22de80	boolean	jsonType.label
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	formatted	user.attribute.formatted
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	country	user.attribute.country
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	true	introspection.token.claim
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	postal_code	user.attribute.postal_code
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	true	userinfo.token.claim
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	street	user.attribute.street
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	true	id.token.claim
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	region	user.attribute.region
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	true	access.token.claim
30c74ee0-dcf5-4ba2-b2c7-2091f9f2ef42	locality	user.attribute.locality
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	true	introspection.token.claim
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	true	userinfo.token.claim
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	phoneNumberVerified	user.attribute
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	true	id.token.claim
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	true	access.token.claim
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	phone_number_verified	claim.name
9eb47003-1ae0-4eab-ab4b-dcf2d47b05b2	boolean	jsonType.label
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	true	introspection.token.claim
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	true	userinfo.token.claim
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	phoneNumber	user.attribute
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	true	id.token.claim
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	true	access.token.claim
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	phone_number	claim.name
bd5af730-46c3-4a92-bcc5-5617bf5aeb70	String	jsonType.label
69373405-b9cf-4bdc-9dcf-68d7b6030642	true	introspection.token.claim
69373405-b9cf-4bdc-9dcf-68d7b6030642	true	access.token.claim
a840b66d-d833-4d33-9ca9-b314bb9d0402	true	introspection.token.claim
a840b66d-d833-4d33-9ca9-b314bb9d0402	true	multivalued
a840b66d-d833-4d33-9ca9-b314bb9d0402	foo	user.attribute
a840b66d-d833-4d33-9ca9-b314bb9d0402	true	access.token.claim
a840b66d-d833-4d33-9ca9-b314bb9d0402	resource_access.${client_id}.roles	claim.name
a840b66d-d833-4d33-9ca9-b314bb9d0402	String	jsonType.label
d36c7ff1-cfb7-4c4f-bb2f-c9d496478894	true	introspection.token.claim
d36c7ff1-cfb7-4c4f-bb2f-c9d496478894	true	multivalued
d36c7ff1-cfb7-4c4f-bb2f-c9d496478894	foo	user.attribute
d36c7ff1-cfb7-4c4f-bb2f-c9d496478894	true	access.token.claim
d36c7ff1-cfb7-4c4f-bb2f-c9d496478894	realm_access.roles	claim.name
d36c7ff1-cfb7-4c4f-bb2f-c9d496478894	String	jsonType.label
24690d27-040c-43ea-a420-cd3cea8a63a2	true	introspection.token.claim
24690d27-040c-43ea-a420-cd3cea8a63a2	true	access.token.claim
1b54b2a0-e791-43b5-9638-303aca65ce1e	true	introspection.token.claim
1b54b2a0-e791-43b5-9638-303aca65ce1e	true	multivalued
1b54b2a0-e791-43b5-9638-303aca65ce1e	foo	user.attribute
1b54b2a0-e791-43b5-9638-303aca65ce1e	true	id.token.claim
1b54b2a0-e791-43b5-9638-303aca65ce1e	true	access.token.claim
1b54b2a0-e791-43b5-9638-303aca65ce1e	groups	claim.name
1b54b2a0-e791-43b5-9638-303aca65ce1e	String	jsonType.label
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	true	introspection.token.claim
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	true	userinfo.token.claim
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	username	user.attribute
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	true	id.token.claim
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	true	access.token.claim
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	upn	claim.name
50e532f9-f6a3-4c52-ba7b-c60b0a3f4d4e	String	jsonType.label
6b40e687-066f-4a60-9957-7f44d75d65b8	true	introspection.token.claim
6b40e687-066f-4a60-9957-7f44d75d65b8	true	id.token.claim
6b40e687-066f-4a60-9957-7f44d75d65b8	true	access.token.claim
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	true	introspection.token.claim
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	true	userinfo.token.claim
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	locale	user.attribute
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	true	id.token.claim
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	true	access.token.claim
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	locale	claim.name
94ac4b41-5f51-4a58-88f3-30b3e0772ac1	String	jsonType.label
215bee9c-9b94-447a-94f1-0953609fdbee	true	introspection.token.claim
215bee9c-9b94-447a-94f1-0953609fdbee	true	multivalued
215bee9c-9b94-447a-94f1-0953609fdbee	foo	user.attribute
215bee9c-9b94-447a-94f1-0953609fdbee	true	access.token.claim
215bee9c-9b94-447a-94f1-0953609fdbee	String	jsonType.label
ac34d0c0-80f6-4deb-8bb7-7b586637ac7e	minio	included.client.audience
ac34d0c0-80f6-4deb-8bb7-7b586637ac7e	true	introspection.token.claim
ac34d0c0-80f6-4deb-8bb7-7b586637ac7e	true	id.token.claim
ac34d0c0-80f6-4deb-8bb7-7b586637ac7e	false	lightweight.claim
ac34d0c0-80f6-4deb-8bb7-7b586637ac7e	true	access.token.claim
215bee9c-9b94-447a-94f1-0953609fdbee	false	userinfo.token.claim
215bee9c-9b94-447a-94f1-0953609fdbee	true	id.token.claim
215bee9c-9b94-447a-94f1-0953609fdbee	false	lightweight.claim
215bee9c-9b94-447a-94f1-0953609fdbee	minio	usermodel.clientRoleMapping.clientId
215bee9c-9b94-447a-94f1-0953609fdbee	policy	claim.name
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me, default_role) FROM stdin;
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	60	300	60	\N	\N	\N	t	f	0	\N	master	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	97b2fcd8-35f0-4a08-b2e2-c95ccd266bb4	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	e8169ef4-e9b7-4817-afb5-c87ed1aef1b6	387f5edc-5521-4249-81e8-23ab6e913b6f	22e2c9ae-177f-4c26-a7ac-77d752959662	0421d5d5-3b86-4128-bed1-5d2758c93614	a2400932-ff2e-4aa3-94d3-d4cff8b4d68c	2592000	f	900	t	f	080eaeb0-281c-4ea4-8143-f2a75545e2a4	0	f	0	0	8c1fd4c9-90c3-43ee-a01d-ebe8f4aa8db3
de12fda2-20f4-4d12-9465-963b62049436	60	300	300	\N	\N	\N	t	f	0	\N	infra	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	ff410b6d-6331-4fdd-9e62-9f2341d92885	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	2f650ed6-9dca-4fda-ac95-687639d4ac3a	e530bc40-b37b-4540-a71a-6eb3cdc63b75	7f2c7d6d-f739-499b-9f24-a00543278e51	47c702b9-7b45-4e13-9ff6-04ba043e1dff	c984575a-95b5-418e-93e5-df2c811a6dbc	2592000	f	900	t	f	946ebd05-b7b1-4da9-bb18-18dbad9bb5b5	0	f	0	0	2fffe0c0-04b2-40a0-a67e-a436b46a4f0d
\.


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_attribute (name, realm_id, value) FROM stdin;
_browser_header.contentSecurityPolicyReportOnly	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	
_browser_header.xContentTypeOptions	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	nosniff
_browser_header.referrerPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	no-referrer
_browser_header.xRobotsTag	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	none
_browser_header.xFrameOptions	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	SAMEORIGIN
_browser_header.contentSecurityPolicy	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	1; mode=block
_browser_header.strictTransportSecurity	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	max-age=31536000; includeSubDomains
bruteForceProtected	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	false
permanentLockout	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	false
maxTemporaryLockouts	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	0
maxFailureWaitSeconds	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	900
minimumQuickLoginWaitSeconds	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	60
waitIncrementSeconds	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	60
quickLoginCheckMilliSeconds	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	1000
maxDeltaTimeSeconds	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	43200
failureFactor	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	30
realmReusableOtpCode	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	false
firstBrokerLoginFlowId	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	6a9d3430-fc39-439d-9a3e-651e08a911f6
displayName	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	Keycloak
displayNameHtml	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	<div class="kc-logo-text"><span>Keycloak</span></div>
defaultSignatureAlgorithm	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	RS256
offlineSessionMaxLifespanEnabled	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	false
offlineSessionMaxLifespan	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	5184000
_browser_header.contentSecurityPolicyReportOnly	de12fda2-20f4-4d12-9465-963b62049436	
_browser_header.xContentTypeOptions	de12fda2-20f4-4d12-9465-963b62049436	nosniff
_browser_header.referrerPolicy	de12fda2-20f4-4d12-9465-963b62049436	no-referrer
_browser_header.xRobotsTag	de12fda2-20f4-4d12-9465-963b62049436	none
_browser_header.xFrameOptions	de12fda2-20f4-4d12-9465-963b62049436	SAMEORIGIN
_browser_header.contentSecurityPolicy	de12fda2-20f4-4d12-9465-963b62049436	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	de12fda2-20f4-4d12-9465-963b62049436	1; mode=block
_browser_header.strictTransportSecurity	de12fda2-20f4-4d12-9465-963b62049436	max-age=31536000; includeSubDomains
bruteForceProtected	de12fda2-20f4-4d12-9465-963b62049436	false
permanentLockout	de12fda2-20f4-4d12-9465-963b62049436	false
maxTemporaryLockouts	de12fda2-20f4-4d12-9465-963b62049436	0
maxFailureWaitSeconds	de12fda2-20f4-4d12-9465-963b62049436	900
minimumQuickLoginWaitSeconds	de12fda2-20f4-4d12-9465-963b62049436	60
waitIncrementSeconds	de12fda2-20f4-4d12-9465-963b62049436	60
quickLoginCheckMilliSeconds	de12fda2-20f4-4d12-9465-963b62049436	1000
maxDeltaTimeSeconds	de12fda2-20f4-4d12-9465-963b62049436	43200
failureFactor	de12fda2-20f4-4d12-9465-963b62049436	30
realmReusableOtpCode	de12fda2-20f4-4d12-9465-963b62049436	false
defaultSignatureAlgorithm	de12fda2-20f4-4d12-9465-963b62049436	RS256
offlineSessionMaxLifespanEnabled	de12fda2-20f4-4d12-9465-963b62049436	false
offlineSessionMaxLifespan	de12fda2-20f4-4d12-9465-963b62049436	5184000
actionTokenGeneratedByAdminLifespan	de12fda2-20f4-4d12-9465-963b62049436	43200
actionTokenGeneratedByUserLifespan	de12fda2-20f4-4d12-9465-963b62049436	300
oauth2DeviceCodeLifespan	de12fda2-20f4-4d12-9465-963b62049436	600
oauth2DevicePollingInterval	de12fda2-20f4-4d12-9465-963b62049436	5
webAuthnPolicyRpEntityName	de12fda2-20f4-4d12-9465-963b62049436	keycloak
webAuthnPolicySignatureAlgorithms	de12fda2-20f4-4d12-9465-963b62049436	ES256
webAuthnPolicyRpId	de12fda2-20f4-4d12-9465-963b62049436	
webAuthnPolicyAttestationConveyancePreference	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyAuthenticatorAttachment	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyRequireResidentKey	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyUserVerificationRequirement	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyCreateTimeout	de12fda2-20f4-4d12-9465-963b62049436	0
webAuthnPolicyAvoidSameAuthenticatorRegister	de12fda2-20f4-4d12-9465-963b62049436	false
webAuthnPolicyRpEntityNamePasswordless	de12fda2-20f4-4d12-9465-963b62049436	keycloak
webAuthnPolicySignatureAlgorithmsPasswordless	de12fda2-20f4-4d12-9465-963b62049436	ES256
webAuthnPolicyRpIdPasswordless	de12fda2-20f4-4d12-9465-963b62049436	
webAuthnPolicyAttestationConveyancePreferencePasswordless	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyAuthenticatorAttachmentPasswordless	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyRequireResidentKeyPasswordless	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyUserVerificationRequirementPasswordless	de12fda2-20f4-4d12-9465-963b62049436	not specified
webAuthnPolicyCreateTimeoutPasswordless	de12fda2-20f4-4d12-9465-963b62049436	0
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	de12fda2-20f4-4d12-9465-963b62049436	false
cibaBackchannelTokenDeliveryMode	de12fda2-20f4-4d12-9465-963b62049436	poll
cibaExpiresIn	de12fda2-20f4-4d12-9465-963b62049436	120
cibaInterval	de12fda2-20f4-4d12-9465-963b62049436	5
cibaAuthRequestedUserHint	de12fda2-20f4-4d12-9465-963b62049436	login_hint
parRequestUriLifespan	de12fda2-20f4-4d12-9465-963b62049436	60
firstBrokerLoginFlowId	de12fda2-20f4-4d12-9465-963b62049436	f52b4757-2f53-47ac-976d-762bf71be4a6
\.


--
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
\.


--
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_enabled_event_types (realm_id, value) FROM stdin;
\.


--
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_events_listeners (realm_id, value) FROM stdin;
0d1a9a29-65d3-423c-8d0d-bbce102b38e3	jboss-logging
de12fda2-20f4-4d12-9465-963b62049436	jboss-logging
\.


--
-- Data for Name: realm_localizations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_localizations (realm_id, locale, texts) FROM stdin;
\.


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
password	password	t	t	0d1a9a29-65d3-423c-8d0d-bbce102b38e3
password	password	t	t	de12fda2-20f4-4d12-9465-963b62049436
\.


--
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_smtp_config (realm_id, value, name) FROM stdin;
\.


--
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_supported_locales (realm_id, value) FROM stdin;
\.


--
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.redirect_uris (client_id, value) FROM stdin;
a522ee9b-54be-4182-8dcd-c1f5b1e90bda	/realms/master/account/*
c2334f0f-b958-492a-a19e-1caee6b0c80c	/realms/master/account/*
616302de-d891-419a-b143-7fd14bd78988	/admin/master/console/*
23e16926-946b-450b-99f2-b6c8851e8b9a	/realms/infra/account/*
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	/realms/infra/account/*
402292aa-3c17-4583-a05c-465e509cff53	/admin/infra/console/*
9a1f7220-2322-4c4f-97d9-b3a049c093d1	http://localhost:8080/auth/callback
\.


--
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_config (required_action_id, value, name) FROM stdin;
\.


--
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_provider (id, alias, name, realm_id, enabled, default_action, provider_id, priority) FROM stdin;
e444ae2b-26f9-48b9-b0df-42150cb459fa	VERIFY_EMAIL	Verify Email	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	VERIFY_EMAIL	50
fa248e81-6c55-4b73-add7-7f9dceafc4d2	UPDATE_PROFILE	Update Profile	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	UPDATE_PROFILE	40
e133dd92-c538-4e2b-876f-35bd51194c95	CONFIGURE_TOTP	Configure OTP	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	CONFIGURE_TOTP	10
ac3154b6-7b82-41dd-a818-cfab5d3fd8a0	UPDATE_PASSWORD	Update Password	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	UPDATE_PASSWORD	30
8f8db520-a578-49f0-a191-d020473ecad1	TERMS_AND_CONDITIONS	Terms and Conditions	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f	f	TERMS_AND_CONDITIONS	20
422a0a38-1757-485a-ad9d-0a1eb79cbe03	delete_account	Delete Account	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	f	f	delete_account	60
8f025bd9-354b-4547-bd0e-286243afbff1	delete_credential	Delete Credential	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	delete_credential	100
31bd81e9-d434-4a58-aee9-7f78a7de1c24	update_user_locale	Update User Locale	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	update_user_locale	1000
0bb2c09e-729c-4c8e-b3de-0326bf361db5	webauthn-register	Webauthn Register	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	webauthn-register	70
59b5afcb-a5c9-4382-a2a4-8f6eda9976c1	webauthn-register-passwordless	Webauthn Register Passwordless	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	webauthn-register-passwordless	80
8a1803af-bd7e-40fa-aff7-9c94b105e1a7	VERIFY_PROFILE	Verify Profile	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	t	f	VERIFY_PROFILE	90
901862a1-e9e8-447b-a556-5579a30d8079	VERIFY_EMAIL	Verify Email	de12fda2-20f4-4d12-9465-963b62049436	t	f	VERIFY_EMAIL	50
f07a4fef-98a5-4a85-99da-235eef81f12b	UPDATE_PROFILE	Update Profile	de12fda2-20f4-4d12-9465-963b62049436	t	f	UPDATE_PROFILE	40
c6212fb0-0ab2-4904-ab02-dbded47da6ac	CONFIGURE_TOTP	Configure OTP	de12fda2-20f4-4d12-9465-963b62049436	t	f	CONFIGURE_TOTP	10
44e1cdec-58e3-47af-9e8f-be9cd9f66d1d	UPDATE_PASSWORD	Update Password	de12fda2-20f4-4d12-9465-963b62049436	t	f	UPDATE_PASSWORD	30
184e0364-9bd5-4019-ac2a-de3135312a24	TERMS_AND_CONDITIONS	Terms and Conditions	de12fda2-20f4-4d12-9465-963b62049436	f	f	TERMS_AND_CONDITIONS	20
2b7ab822-985e-42dc-ae05-bac128852f31	delete_account	Delete Account	de12fda2-20f4-4d12-9465-963b62049436	f	f	delete_account	60
2a63580f-964d-46d0-a8c6-838b7cc47d0b	delete_credential	Delete Credential	de12fda2-20f4-4d12-9465-963b62049436	t	f	delete_credential	100
bf3716ca-2658-448b-ba87-cea6f54f6b0a	update_user_locale	Update User Locale	de12fda2-20f4-4d12-9465-963b62049436	t	f	update_user_locale	1000
53130aaa-3728-4307-ae69-df1aebdc202d	webauthn-register	Webauthn Register	de12fda2-20f4-4d12-9465-963b62049436	t	f	webauthn-register	70
f3fefd9d-fc93-493b-8e16-9ad00aff56ba	webauthn-register-passwordless	Webauthn Register Passwordless	de12fda2-20f4-4d12-9465-963b62049436	t	f	webauthn-register-passwordless	80
ae80cbce-5bad-414b-9bc8-b83a425355ac	VERIFY_PROFILE	Verify Profile	de12fda2-20f4-4d12-9465-963b62049436	t	f	VERIFY_PROFILE	90
\.


--
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_attribute (id, name, value, resource_id) FROM stdin;
\.


--
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_policy (resource_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_scope (resource_id, scope_id) FROM stdin;
\.


--
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server (id, allow_rs_remote_mgmt, policy_enforce_mode, decision_strategy) FROM stdin;
\.


--
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_perm_ticket (id, owner, requester, created_timestamp, granted_timestamp, resource_id, scope_id, resource_server_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_policy (id, name, description, type, decision_strategy, logic, resource_server_id, owner) FROM stdin;
\.


--
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_resource (id, name, type, icon_uri, owner, resource_server_id, owner_managed_access, display_name) FROM stdin;
\.


--
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_scope (id, name, icon_uri, resource_server_id, display_name) FROM stdin;
\.


--
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_uris (resource_id, value) FROM stdin;
\.


--
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.role_attribute (id, role_id, name, value) FROM stdin;
\.


--
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_mapping (client_id, role_id) FROM stdin;
c2334f0f-b958-492a-a19e-1caee6b0c80c	3b98d9ac-6aa9-45d4-a127-240dc5e2d23b
c2334f0f-b958-492a-a19e-1caee6b0c80c	b5f63ef9-7b58-4db9-a807-127095d0c686
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	81babc46-608f-4f54-a847-3d9bf3f2bccc
00f7a18b-3e11-4cbb-b7ff-fe6a93dd8f1c	93cda667-9ab1-4d9c-9b1b-e071b707a894
\.


--
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_policy (scope_id, policy_id) FROM stdin;
\.


--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_attribute (name, value, user_id, id, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
\.


--
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent (id, client_id, user_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent_client_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_entity (id, email, email_constraint, email_verified, enabled, federation_link, first_name, last_name, realm_id, username, created_timestamp, service_account_client_link, not_before) FROM stdin;
cd0083d6-4b60-4ad9-8f32-ee16dc1bae54	\N	8e13d8f8-0210-4154-9a2a-6cbd2616a403	f	t	\N	\N	\N	0d1a9a29-65d3-423c-8d0d-bbce102b38e3	admin	1773533076191	\N	0
86e371ad-d120-4ade-89f0-711dc31abaa6	user1@valores.com	user1@valores.com	t	t	\N	Usuario	Valores	de12fda2-20f4-4d12-9465-963b62049436	user1	1773536560689	\N	0
\.


--
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_config (user_federation_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper (id, name, federation_provider_id, federation_mapper_type, realm_id) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper_config (user_federation_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_provider (id, changed_sync_period, display_name, full_sync_period, last_sync, priority, provider_name, realm_id) FROM stdin;
\.


--
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_group_membership (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_required_action (user_id, required_action) FROM stdin;
\.


--
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_role_mapping (role_id, user_id) FROM stdin;
8c1fd4c9-90c3-43ee-a01d-ebe8f4aa8db3	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
eaf0c628-fcd0-45bb-8985-4d7dcc1ec47b	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
cab6327e-eb48-4c71-89f9-bfc9c6276eba	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
3293534d-5b5d-4f44-84ad-f41dd87c0bef	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
8f1a518b-fb13-4bf1-ba95-27a8844a8361	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
aca91e54-b21e-476d-9b4f-51382414a551	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
42f50e32-f95b-45f4-acb3-8c58d1f4fbd6	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
668770b8-8e15-4f47-86af-ecbe49b25a9e	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
da108ae2-a814-41df-957f-8e3dbdc7ea83	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
8656278c-d3f7-4ff5-a1a4-71a40cd2c990	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
6e34adb0-877d-4ed6-bc59-118c2e075935	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
c1108d9b-8f86-4b30-addf-640ee28421b8	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
ab2c6f03-e8d5-4d7d-af0a-9b6b4791f06e	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
49c45a56-fbaa-46fa-97b9-4c5b2285a00c	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
6afbe2d5-1141-482b-be1e-3bf341312b54	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
1d42cfc8-a5f7-4714-b233-229dbefe201e	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
23cf4a81-128b-4bda-b35c-2753a1128ad2	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
cc9e2683-6f47-4564-aaf7-1f5de6faf598	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
19afbee7-5bc8-4954-ac4a-9e5892cf23b6	cd0083d6-4b60-4ad9-8f32-ee16dc1bae54
2fffe0c0-04b2-40a0-a67e-a436b46a4f0d	86e371ad-d120-4ade-89f0-711dc31abaa6
01dc0e37-c610-43ad-8a09-318530d41060	86e371ad-d120-4ade-89f0-711dc31abaa6
\.


--
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_session (id, auth_method, ip_address, last_session_refresh, login_username, realm_id, remember_me, started, user_id, user_session_state, broker_session_id, broker_user_id) FROM stdin;
\.


--
-- Data for Name: user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_session_note (user_session, name, value) FROM stdin;
\.


--
-- Data for Name: username_login_failure; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.username_login_failure (realm_id, username, failed_login_not_before, last_failure, last_ip_failure, num_failures) FROM stdin;
\.


--
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.web_origins (client_id, value) FROM stdin;
616302de-d891-419a-b143-7fd14bd78988	+
402292aa-3c17-4583-a05c-465e509cff53	+
9a1f7220-2322-4c4f-97d9-b3a049c093d1	http://localhost:8080
\.


--
-- Name: username_login_failure CONSTRAINT_17-2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.username_login_failure
    ADD CONSTRAINT "CONSTRAINT_17-2" PRIMARY KEY (realm_id, username);


--
-- Name: keycloak_role UK_J3RWUVD56ONTGSUHOGM184WW2-2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2" UNIQUE (name, client_realm_constraint);


--
-- Name: client_auth_flow_bindings c_cli_flow_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_auth_flow_bindings
    ADD CONSTRAINT c_cli_flow_bind PRIMARY KEY (client_id, binding_name);


--
-- Name: client_scope_client c_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT c_cli_scope_bind PRIMARY KEY (client_id, scope_id);


--
-- Name: client_initial_access cnstr_client_init_acc_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT cnstr_client_init_acc_pk PRIMARY KEY (id);


--
-- Name: realm_default_groups con_group_id_def_groups; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT con_group_id_def_groups UNIQUE (group_id);


--
-- Name: broker_link constr_broker_link_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.broker_link
    ADD CONSTRAINT constr_broker_link_pk PRIMARY KEY (identity_provider, user_id);


--
-- Name: client_user_session_note constr_cl_usr_ses_note; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT constr_cl_usr_ses_note PRIMARY KEY (client_session, name);


--
-- Name: component_config constr_component_config_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT constr_component_config_pk PRIMARY KEY (id);


--
-- Name: component constr_component_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT constr_component_pk PRIMARY KEY (id);


--
-- Name: fed_user_required_action constr_fed_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_required_action
    ADD CONSTRAINT constr_fed_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: fed_user_attribute constr_fed_user_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_attribute
    ADD CONSTRAINT constr_fed_user_attr_pk PRIMARY KEY (id);


--
-- Name: fed_user_consent constr_fed_user_consent_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_consent
    ADD CONSTRAINT constr_fed_user_consent_pk PRIMARY KEY (id);


--
-- Name: fed_user_credential constr_fed_user_cred_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_credential
    ADD CONSTRAINT constr_fed_user_cred_pk PRIMARY KEY (id);


--
-- Name: fed_user_group_membership constr_fed_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_group_membership
    ADD CONSTRAINT constr_fed_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: fed_user_role_mapping constr_fed_user_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_role_mapping
    ADD CONSTRAINT constr_fed_user_role PRIMARY KEY (role_id, user_id);


--
-- Name: federated_user constr_federated_user; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_user
    ADD CONSTRAINT constr_federated_user PRIMARY KEY (id);


--
-- Name: realm_default_groups constr_realm_default_groups; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT constr_realm_default_groups PRIMARY KEY (realm_id, group_id);


--
-- Name: realm_enabled_event_types constr_realm_enabl_event_types; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT constr_realm_enabl_event_types PRIMARY KEY (realm_id, value);


--
-- Name: realm_events_listeners constr_realm_events_listeners; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT constr_realm_events_listeners PRIMARY KEY (realm_id, value);


--
-- Name: realm_supported_locales constr_realm_supported_locales; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT constr_realm_supported_locales PRIMARY KEY (realm_id, value);


--
-- Name: identity_provider constraint_2b; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT constraint_2b PRIMARY KEY (internal_id);


--
-- Name: client_attributes constraint_3c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT constraint_3c PRIMARY KEY (client_id, name);


--
-- Name: event_entity constraint_4; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.event_entity
    ADD CONSTRAINT constraint_4 PRIMARY KEY (id);


--
-- Name: federated_identity constraint_40; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT constraint_40 PRIMARY KEY (identity_provider, user_id);


--
-- Name: realm constraint_4a; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT constraint_4a PRIMARY KEY (id);


--
-- Name: client_session_role constraint_5; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT constraint_5 PRIMARY KEY (client_session, role_id);


--
-- Name: user_session constraint_57; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_session
    ADD CONSTRAINT constraint_57 PRIMARY KEY (id);


--
-- Name: user_federation_provider constraint_5c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT constraint_5c PRIMARY KEY (id);


--
-- Name: client_session_note constraint_5e; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT constraint_5e PRIMARY KEY (client_session, name);


--
-- Name: client constraint_7; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT constraint_7 PRIMARY KEY (id);


--
-- Name: client_session constraint_8; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT constraint_8 PRIMARY KEY (id);


--
-- Name: scope_mapping constraint_81; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT constraint_81 PRIMARY KEY (client_id, role_id);


--
-- Name: client_node_registrations constraint_84; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT constraint_84 PRIMARY KEY (client_id, name);


--
-- Name: realm_attribute constraint_9; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT constraint_9 PRIMARY KEY (name, realm_id);


--
-- Name: realm_required_credential constraint_92; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT constraint_92 PRIMARY KEY (realm_id, type);


--
-- Name: keycloak_role constraint_a; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT constraint_a PRIMARY KEY (id);


--
-- Name: admin_event_entity constraint_admin_event_entity; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.admin_event_entity
    ADD CONSTRAINT constraint_admin_event_entity PRIMARY KEY (id);


--
-- Name: authenticator_config_entry constraint_auth_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config_entry
    ADD CONSTRAINT constraint_auth_cfg_pk PRIMARY KEY (authenticator_id, name);


--
-- Name: authentication_execution constraint_auth_exec_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT constraint_auth_exec_pk PRIMARY KEY (id);


--
-- Name: authentication_flow constraint_auth_flow_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT constraint_auth_flow_pk PRIMARY KEY (id);


--
-- Name: authenticator_config constraint_auth_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT constraint_auth_pk PRIMARY KEY (id);


--
-- Name: client_session_auth_status constraint_auth_status_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT constraint_auth_status_pk PRIMARY KEY (client_session, authenticator);


--
-- Name: user_role_mapping constraint_c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT constraint_c PRIMARY KEY (role_id, user_id);


--
-- Name: composite_role constraint_composite_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT constraint_composite_role PRIMARY KEY (composite, child_role);


--
-- Name: client_session_prot_mapper constraint_cs_pmp_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT constraint_cs_pmp_pk PRIMARY KEY (client_session, protocol_mapper_id);


--
-- Name: identity_provider_config constraint_d; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT constraint_d PRIMARY KEY (identity_provider_id, name);


--
-- Name: policy_config constraint_dpc; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT constraint_dpc PRIMARY KEY (policy_id, name);


--
-- Name: realm_smtp_config constraint_e; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT constraint_e PRIMARY KEY (realm_id, name);


--
-- Name: credential constraint_f; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT constraint_f PRIMARY KEY (id);


--
-- Name: user_federation_config constraint_f9; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT constraint_f9 PRIMARY KEY (user_federation_provider_id, name);


--
-- Name: resource_server_perm_ticket constraint_fapmt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT constraint_fapmt PRIMARY KEY (id);


--
-- Name: resource_server_resource constraint_farsr; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT constraint_farsr PRIMARY KEY (id);


--
-- Name: resource_server_policy constraint_farsrp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT constraint_farsrp PRIMARY KEY (id);


--
-- Name: associated_policy constraint_farsrpap; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT constraint_farsrpap PRIMARY KEY (policy_id, associated_policy_id);


--
-- Name: resource_policy constraint_farsrpp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT constraint_farsrpp PRIMARY KEY (resource_id, policy_id);


--
-- Name: resource_server_scope constraint_farsrs; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT constraint_farsrs PRIMARY KEY (id);


--
-- Name: resource_scope constraint_farsrsp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT constraint_farsrsp PRIMARY KEY (resource_id, scope_id);


--
-- Name: scope_policy constraint_farsrsps; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT constraint_farsrsps PRIMARY KEY (scope_id, policy_id);


--
-- Name: user_entity constraint_fb; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT constraint_fb PRIMARY KEY (id);


--
-- Name: user_federation_mapper_config constraint_fedmapper_cfg_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT constraint_fedmapper_cfg_pm PRIMARY KEY (user_federation_mapper_id, name);


--
-- Name: user_federation_mapper constraint_fedmapperpm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT constraint_fedmapperpm PRIMARY KEY (id);


--
-- Name: fed_user_consent_cl_scope constraint_fgrntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_consent_cl_scope
    ADD CONSTRAINT constraint_fgrntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent_client_scope constraint_grntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT constraint_grntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent constraint_grntcsnt_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT constraint_grntcsnt_pm PRIMARY KEY (id);


--
-- Name: keycloak_group constraint_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT constraint_group PRIMARY KEY (id);


--
-- Name: group_attribute constraint_group_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT constraint_group_attribute_pk PRIMARY KEY (id);


--
-- Name: group_role_mapping constraint_group_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT constraint_group_role PRIMARY KEY (role_id, group_id);


--
-- Name: identity_provider_mapper constraint_idpm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT constraint_idpm PRIMARY KEY (id);


--
-- Name: idp_mapper_config constraint_idpmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT constraint_idpmconfig PRIMARY KEY (idp_mapper_id, name);


--
-- Name: migration_model constraint_migmod; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT constraint_migmod PRIMARY KEY (id);


--
-- Name: offline_client_session constraint_offl_cl_ses_pk3; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.offline_client_session
    ADD CONSTRAINT constraint_offl_cl_ses_pk3 PRIMARY KEY (user_session_id, client_id, client_storage_provider, external_client_id, offline_flag);


--
-- Name: offline_user_session constraint_offl_us_ses_pk2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.offline_user_session
    ADD CONSTRAINT constraint_offl_us_ses_pk2 PRIMARY KEY (user_session_id, offline_flag);


--
-- Name: protocol_mapper constraint_pcm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT constraint_pcm PRIMARY KEY (id);


--
-- Name: protocol_mapper_config constraint_pmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT constraint_pmconfig PRIMARY KEY (protocol_mapper_id, name);


--
-- Name: redirect_uris constraint_redirect_uris; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT constraint_redirect_uris PRIMARY KEY (client_id, value);


--
-- Name: required_action_config constraint_req_act_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_config
    ADD CONSTRAINT constraint_req_act_cfg_pk PRIMARY KEY (required_action_id, name);


--
-- Name: required_action_provider constraint_req_act_prv_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT constraint_req_act_prv_pk PRIMARY KEY (id);


--
-- Name: user_required_action constraint_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT constraint_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: resource_uris constraint_resour_uris_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT constraint_resour_uris_pk PRIMARY KEY (resource_id, value);


--
-- Name: role_attribute constraint_role_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT constraint_role_attribute_pk PRIMARY KEY (id);


--
-- Name: user_attribute constraint_user_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT constraint_user_attribute_pk PRIMARY KEY (id);


--
-- Name: user_group_membership constraint_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT constraint_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: user_session_note constraint_usn_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT constraint_usn_pk PRIMARY KEY (user_session, name);


--
-- Name: web_origins constraint_web_origins; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT constraint_web_origins PRIMARY KEY (client_id, value);


--
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- Name: client_scope_attributes pk_cl_tmpl_attr; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT pk_cl_tmpl_attr PRIMARY KEY (scope_id, name);


--
-- Name: client_scope pk_cli_template; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT pk_cli_template PRIMARY KEY (id);


--
-- Name: resource_server pk_resource_server; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server
    ADD CONSTRAINT pk_resource_server PRIMARY KEY (id);


--
-- Name: client_scope_role_mapping pk_template_scope; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT pk_template_scope PRIMARY KEY (scope_id, role_id);


--
-- Name: default_client_scope r_def_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT r_def_cli_scope_bind PRIMARY KEY (realm_id, scope_id);


--
-- Name: realm_localizations realm_localizations_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_localizations
    ADD CONSTRAINT realm_localizations_pkey PRIMARY KEY (realm_id, locale);


--
-- Name: resource_attribute res_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT res_attr_pk PRIMARY KEY (id);


--
-- Name: keycloak_group sibling_names; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT sibling_names UNIQUE (realm_id, parent_group, name);


--
-- Name: identity_provider uk_2daelwnibji49avxsrtuf6xj33; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33 UNIQUE (provider_alias, realm_id);


--
-- Name: client uk_b71cjlbenv945rb6gcon438at; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT uk_b71cjlbenv945rb6gcon438at UNIQUE (realm_id, client_id);


--
-- Name: client_scope uk_cli_scope; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT uk_cli_scope UNIQUE (realm_id, name);


--
-- Name: user_entity uk_dykn684sl8up1crfei6eckhd7; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_dykn684sl8up1crfei6eckhd7 UNIQUE (realm_id, email_constraint);


--
-- Name: resource_server_resource uk_frsr6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6 UNIQUE (name, owner, resource_server_id);


--
-- Name: resource_server_perm_ticket uk_frsr6t700s9v50bu18ws5pmt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt UNIQUE (owner, requester, resource_server_id, resource_id, scope_id);


--
-- Name: resource_server_policy uk_frsrpt700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: resource_server_scope uk_frsrst700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT uk_frsrst700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: user_consent uk_jkuwuvd56ontgsuhogm8uewrt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_jkuwuvd56ontgsuhogm8uewrt UNIQUE (client_id, client_storage_provider, external_client_id, user_id);


--
-- Name: realm uk_orvsdmla56612eaefiq6wl5oi; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi UNIQUE (name);


--
-- Name: user_entity uk_ru8tt6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6 UNIQUE (realm_id, username);


--
-- Name: fed_user_attr_long_values; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX fed_user_attr_long_values ON public.fed_user_attribute USING btree (long_value_hash, name);


--
-- Name: fed_user_attr_long_values_lower_case; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX fed_user_attr_long_values_lower_case ON public.fed_user_attribute USING btree (long_value_hash_lower_case, name);


--
-- Name: idx_admin_event_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_admin_event_time ON public.admin_event_entity USING btree (realm_id, admin_event_time);


--
-- Name: idx_assoc_pol_assoc_pol_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_assoc_pol_assoc_pol_id ON public.associated_policy USING btree (associated_policy_id);


--
-- Name: idx_auth_config_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_config_realm ON public.authenticator_config USING btree (realm_id);


--
-- Name: idx_auth_exec_flow; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_exec_flow ON public.authentication_execution USING btree (flow_id);


--
-- Name: idx_auth_exec_realm_flow; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_exec_realm_flow ON public.authentication_execution USING btree (realm_id, flow_id);


--
-- Name: idx_auth_flow_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_flow_realm ON public.authentication_flow USING btree (realm_id);


--
-- Name: idx_cl_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_cl_clscope ON public.client_scope_client USING btree (scope_id);


--
-- Name: idx_client_att_by_name_value; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_att_by_name_value ON public.client_attributes USING btree (name, substr(value, 1, 255));


--
-- Name: idx_client_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_id ON public.client USING btree (client_id);


--
-- Name: idx_client_init_acc_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_init_acc_realm ON public.client_initial_access USING btree (realm_id);


--
-- Name: idx_client_session_session; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_session_session ON public.client_session USING btree (session_id);


--
-- Name: idx_clscope_attrs; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_attrs ON public.client_scope_attributes USING btree (scope_id);


--
-- Name: idx_clscope_cl; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_cl ON public.client_scope_client USING btree (client_id);


--
-- Name: idx_clscope_protmap; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_protmap ON public.protocol_mapper USING btree (client_scope_id);


--
-- Name: idx_clscope_role; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_role ON public.client_scope_role_mapping USING btree (scope_id);


--
-- Name: idx_compo_config_compo; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_compo_config_compo ON public.component_config USING btree (component_id);


--
-- Name: idx_component_provider_type; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_component_provider_type ON public.component USING btree (provider_type);


--
-- Name: idx_component_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_component_realm ON public.component USING btree (realm_id);


--
-- Name: idx_composite; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_composite ON public.composite_role USING btree (composite);


--
-- Name: idx_composite_child; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_composite_child ON public.composite_role USING btree (child_role);


--
-- Name: idx_defcls_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_defcls_realm ON public.default_client_scope USING btree (realm_id);


--
-- Name: idx_defcls_scope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_defcls_scope ON public.default_client_scope USING btree (scope_id);


--
-- Name: idx_event_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_event_time ON public.event_entity USING btree (realm_id, event_time);


--
-- Name: idx_fedidentity_feduser; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fedidentity_feduser ON public.federated_identity USING btree (federated_user_id);


--
-- Name: idx_fedidentity_user; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fedidentity_user ON public.federated_identity USING btree (user_id);


--
-- Name: idx_fu_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_attribute ON public.fed_user_attribute USING btree (user_id, realm_id, name);


--
-- Name: idx_fu_cnsnt_ext; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_cnsnt_ext ON public.fed_user_consent USING btree (user_id, client_storage_provider, external_client_id);


--
-- Name: idx_fu_consent; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_consent ON public.fed_user_consent USING btree (user_id, client_id);


--
-- Name: idx_fu_consent_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_consent_ru ON public.fed_user_consent USING btree (realm_id, user_id);


--
-- Name: idx_fu_credential; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_credential ON public.fed_user_credential USING btree (user_id, type);


--
-- Name: idx_fu_credential_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_credential_ru ON public.fed_user_credential USING btree (realm_id, user_id);


--
-- Name: idx_fu_group_membership; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_group_membership ON public.fed_user_group_membership USING btree (user_id, group_id);


--
-- Name: idx_fu_group_membership_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_group_membership_ru ON public.fed_user_group_membership USING btree (realm_id, user_id);


--
-- Name: idx_fu_required_action; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_required_action ON public.fed_user_required_action USING btree (user_id, required_action);


--
-- Name: idx_fu_required_action_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_required_action_ru ON public.fed_user_required_action USING btree (realm_id, user_id);


--
-- Name: idx_fu_role_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_role_mapping ON public.fed_user_role_mapping USING btree (user_id, role_id);


--
-- Name: idx_fu_role_mapping_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_role_mapping_ru ON public.fed_user_role_mapping USING btree (realm_id, user_id);


--
-- Name: idx_group_att_by_name_value; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_att_by_name_value ON public.group_attribute USING btree (name, ((value)::character varying(250)));


--
-- Name: idx_group_attr_group; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_attr_group ON public.group_attribute USING btree (group_id);


--
-- Name: idx_group_role_mapp_group; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_role_mapp_group ON public.group_role_mapping USING btree (group_id);


--
-- Name: idx_id_prov_mapp_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_id_prov_mapp_realm ON public.identity_provider_mapper USING btree (realm_id);


--
-- Name: idx_ident_prov_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_ident_prov_realm ON public.identity_provider USING btree (realm_id);


--
-- Name: idx_keycloak_role_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_keycloak_role_client ON public.keycloak_role USING btree (client);


--
-- Name: idx_keycloak_role_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_keycloak_role_realm ON public.keycloak_role USING btree (realm);


--
-- Name: idx_offline_css_preload; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_css_preload ON public.offline_client_session USING btree (client_id, offline_flag);


--
-- Name: idx_offline_uss_by_user; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_by_user ON public.offline_user_session USING btree (user_id, realm_id, offline_flag);


--
-- Name: idx_offline_uss_by_usersess; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_by_usersess ON public.offline_user_session USING btree (realm_id, offline_flag, user_session_id);


--
-- Name: idx_offline_uss_createdon; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_createdon ON public.offline_user_session USING btree (created_on);


--
-- Name: idx_offline_uss_preload; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_preload ON public.offline_user_session USING btree (offline_flag, created_on, user_session_id);


--
-- Name: idx_protocol_mapper_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_protocol_mapper_client ON public.protocol_mapper USING btree (client_id);


--
-- Name: idx_realm_attr_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_attr_realm ON public.realm_attribute USING btree (realm_id);


--
-- Name: idx_realm_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_clscope ON public.client_scope USING btree (realm_id);


--
-- Name: idx_realm_def_grp_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_def_grp_realm ON public.realm_default_groups USING btree (realm_id);


--
-- Name: idx_realm_evt_list_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_evt_list_realm ON public.realm_events_listeners USING btree (realm_id);


--
-- Name: idx_realm_evt_types_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_evt_types_realm ON public.realm_enabled_event_types USING btree (realm_id);


--
-- Name: idx_realm_master_adm_cli; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_master_adm_cli ON public.realm USING btree (master_admin_client);


--
-- Name: idx_realm_supp_local_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_supp_local_realm ON public.realm_supported_locales USING btree (realm_id);


--
-- Name: idx_redir_uri_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_redir_uri_client ON public.redirect_uris USING btree (client_id);


--
-- Name: idx_req_act_prov_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_req_act_prov_realm ON public.required_action_provider USING btree (realm_id);


--
-- Name: idx_res_policy_policy; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_policy_policy ON public.resource_policy USING btree (policy_id);


--
-- Name: idx_res_scope_scope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_scope_scope ON public.resource_scope USING btree (scope_id);


--
-- Name: idx_res_serv_pol_res_serv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_serv_pol_res_serv ON public.resource_server_policy USING btree (resource_server_id);


--
-- Name: idx_res_srv_res_res_srv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_srv_res_res_srv ON public.resource_server_resource USING btree (resource_server_id);


--
-- Name: idx_res_srv_scope_res_srv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_srv_scope_res_srv ON public.resource_server_scope USING btree (resource_server_id);


--
-- Name: idx_role_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_role_attribute ON public.role_attribute USING btree (role_id);


--
-- Name: idx_role_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_role_clscope ON public.client_scope_role_mapping USING btree (role_id);


--
-- Name: idx_scope_mapping_role; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_scope_mapping_role ON public.scope_mapping USING btree (role_id);


--
-- Name: idx_scope_policy_policy; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_scope_policy_policy ON public.scope_policy USING btree (policy_id);


--
-- Name: idx_update_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_update_time ON public.migration_model USING btree (update_time);


--
-- Name: idx_us_sess_id_on_cl_sess; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_us_sess_id_on_cl_sess ON public.offline_client_session USING btree (user_session_id);


--
-- Name: idx_usconsent_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usconsent_clscope ON public.user_consent_client_scope USING btree (user_consent_id);


--
-- Name: idx_user_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_attribute ON public.user_attribute USING btree (user_id);


--
-- Name: idx_user_attribute_name; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_attribute_name ON public.user_attribute USING btree (name, value);


--
-- Name: idx_user_consent; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_consent ON public.user_consent USING btree (user_id);


--
-- Name: idx_user_credential; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_credential ON public.credential USING btree (user_id);


--
-- Name: idx_user_email; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_email ON public.user_entity USING btree (email);


--
-- Name: idx_user_group_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_group_mapping ON public.user_group_membership USING btree (user_id);


--
-- Name: idx_user_reqactions; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_reqactions ON public.user_required_action USING btree (user_id);


--
-- Name: idx_user_role_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_role_mapping ON public.user_role_mapping USING btree (user_id);


--
-- Name: idx_user_service_account; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_service_account ON public.user_entity USING btree (realm_id, service_account_client_link);


--
-- Name: idx_usr_fed_map_fed_prv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_map_fed_prv ON public.user_federation_mapper USING btree (federation_provider_id);


--
-- Name: idx_usr_fed_map_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_map_realm ON public.user_federation_mapper USING btree (realm_id);


--
-- Name: idx_usr_fed_prv_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_prv_realm ON public.user_federation_provider USING btree (realm_id);


--
-- Name: idx_web_orig_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_web_orig_client ON public.web_origins USING btree (client_id);


--
-- Name: user_attr_long_values; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX user_attr_long_values ON public.user_attribute USING btree (long_value_hash, name);


--
-- Name: user_attr_long_values_lower_case; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX user_attr_long_values_lower_case ON public.user_attribute USING btree (long_value_hash_lower_case, name);


--
-- Name: client_session_auth_status auth_status_constraint; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT auth_status_constraint FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: identity_provider fk2b4ebc52ae5c3b34; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT fk2b4ebc52ae5c3b34 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_attributes fk3c47c64beacca966; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT fk3c47c64beacca966 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: federated_identity fk404288b92ef007a6; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT fk404288b92ef007a6 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_node_registrations fk4129723ba992f594; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT fk4129723ba992f594 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_session_note fk5edfb00ff51c2736; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT fk5edfb00ff51c2736 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: user_session_note fk5edfb00ff51d3472; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT fk5edfb00ff51d3472 FOREIGN KEY (user_session) REFERENCES public.user_session(id);


--
-- Name: client_session_role fk_11b7sgqw18i532811v7o2dv76; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT fk_11b7sgqw18i532811v7o2dv76 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: redirect_uris fk_1burs8pb4ouj97h5wuppahv9f; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: user_federation_provider fk_1fj32f6ptolw2qy60cd8n01e8; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session_prot_mapper fk_33a8sgqw18i532811v7o2dk89; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT fk_33a8sgqw18i532811v7o2dk89 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: realm_required_credential fk_5hg65lybevavkqfki3kponh9v; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT fk_5hg65lybevavkqfki3kponh9v FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_attribute fk_5hrm2vlf9ql5fu022kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: user_attribute fk_5hrm2vlf9ql5fu043kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: user_required_action fk_6qj3w1jw9cvafhe19bwsiuvmd; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: keycloak_role fk_6vyqfe4cn4wlq8r6kt5vdsj5c; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c FOREIGN KEY (realm) REFERENCES public.realm(id);


--
-- Name: realm_smtp_config fk_70ej8xdxgxd0b9hh6180irr0o; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_attribute fk_8shxd6l3e9atqukacxgpffptw; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: composite_role fk_a63wvekftu8jo1pnj81e7mce2; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2 FOREIGN KEY (composite) REFERENCES public.keycloak_role(id);


--
-- Name: authentication_execution fk_auth_exec_flow; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_flow FOREIGN KEY (flow_id) REFERENCES public.authentication_flow(id);


--
-- Name: authentication_execution fk_auth_exec_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authentication_flow fk_auth_flow_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT fk_auth_flow_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authenticator_config fk_auth_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT fk_auth_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session fk_b4ao2vcvat6ukau74wbwtfqo1; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT fk_b4ao2vcvat6ukau74wbwtfqo1 FOREIGN KEY (session_id) REFERENCES public.user_session(id);


--
-- Name: user_role_mapping fk_c4fqv34p1mbylloxang7b1q3l; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_scope_attributes fk_cl_scope_attr_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_user_session_note fk_cl_usr_ses_note; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT fk_cl_usr_ses_note FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: protocol_mapper fk_cli_scope_mapper; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_cli_scope_mapper FOREIGN KEY (client_scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_initial_access fk_client_init_acc_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT fk_client_init_acc_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: component_config fk_component_config; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT fk_component_config FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- Name: component fk_component_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT fk_component_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_groups fk_def_groups_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_mapper_config fk_fedmapper_cfg; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT fk_fedmapper_cfg FOREIGN KEY (user_federation_mapper_id) REFERENCES public.user_federation_mapper(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_fedprv; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_fedprv FOREIGN KEY (federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: associated_policy fk_frsr5s213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy FOREIGN KEY (associated_policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrasp13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog82sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82sspmt FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_resource fk_frsrho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog83sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog83sspmt FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog84sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog84sspmt FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: associated_policy fk_frsrpas14xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrpass3xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_perm_ticket fk_frsrpo2128cx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_policy fk_frsrpo213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_scope fk_frsrpos13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpos53xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpp213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_scope fk_frsrps213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_scope fk_frsrso213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: composite_role fk_gr7thllb9lu8q4vqa4524jjy8; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8 FOREIGN KEY (child_role) REFERENCES public.keycloak_role(id);


--
-- Name: user_consent_client_scope fk_grntcsnt_clsc_usc; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT fk_grntcsnt_clsc_usc FOREIGN KEY (user_consent_id) REFERENCES public.user_consent(id);


--
-- Name: user_consent fk_grntcsnt_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT fk_grntcsnt_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: group_attribute fk_group_attribute_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT fk_group_attribute_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: group_role_mapping fk_group_role_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: realm_enabled_event_types fk_h846o4h0w8epx5nwedrf5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_events_listeners fk_h846o4h0w8epx5nxev9f5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: identity_provider_mapper fk_idpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT fk_idpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: idp_mapper_config fk_idpmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT fk_idpmconfig FOREIGN KEY (idp_mapper_id) REFERENCES public.identity_provider_mapper(id);


--
-- Name: web_origins fk_lojpho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: scope_mapping fk_ouse064plmlr732lxjcn1q5f1; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: protocol_mapper fk_pcm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_pcm_realm FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: credential fk_pfyr0glasqyl0dei3kl69r6v0; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: protocol_mapper_config fk_pmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT fk_pmconfig FOREIGN KEY (protocol_mapper_id) REFERENCES public.protocol_mapper(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: required_action_provider fk_req_act_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT fk_req_act_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_uris fk_resource_server_uris; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT fk_resource_server_uris FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: role_attribute fk_role_attribute_id; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT fk_role_attribute_id FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_supported_locales fk_supported_locales_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT fk_supported_locales_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_config fk_t13hpu1j94r2ebpekr39x5eu5; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5 FOREIGN KEY (user_federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_group_membership fk_user_group_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: policy_config fkdc34197cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT fkdc34197cf864c4e43 FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: identity_provider_config fkdc4897cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT fkdc4897cf864c4e43 FOREIGN KEY (identity_provider_id) REFERENCES public.identity_provider(internal_id);


--
-- PostgreSQL database dump complete
--

\unrestrict mnmGedcwEROjU3bCW0zJ7XcEWSEy62ryYdtw5y5MK13fmaGouDnJEv505GczdZ1

