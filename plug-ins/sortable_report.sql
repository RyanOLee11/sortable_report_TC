prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0-17'
,p_default_workspace_id=>53329992623084339046
,p_default_application_id=>262759
,p_default_id_offset=>0
,p_default_owner=>'WKSP_RYANOLEE11'
);
end;
/
 
prompt APPLICATION 262759 - Ryan Component Templates
--
-- Application Export:
--   Application:     262759
--   Name:            Ryan Component Templates
--   Date and Time:   17:28 Friday October 20, 2023
--   Exported By:     RLEE009@PLATTSBURGH.EDU
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     TEMPLATE_COMPONENT: 54259881825605430079
--   Manifest End
--   Version:         23.2.0-17
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_sortable_report
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(54259881825605430079)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$SORTABLE_REPORT'
,p_display_name=>'Sortable Report'
,p_supported_component_types=>'REPORT'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#js/touchPunch#MIN#.js',
'#APP_FILES#js/sortableList#MIN#.js'))
,p_css_file_urls=>'#APP_FILES#css/orderedList#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'  #NAME#',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ol class="sortableList #CARD_TYPE#">#APEX$ROWS#</ol>'
,p_report_row_template=>'<li style="--accent-color: #PRIMARY_COLOR#" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/RyanOLee11/sortable_report_TC'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(54264559130743651806)
,p_plugin_id=>wwv_flow_imp.id(54259881825605430079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'MY_SECOND_PLACEHOLDER'
,p_prompt=>'My Second Placeholder'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(54264559611979651806)
,p_plugin_id=>wwv_flow_imp.id(54259881825605430079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'NAME'
,p_prompt=>'Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(54271626174479215419)
,p_plugin_id=>wwv_flow_imp.id(54259881825605430079)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'PRIMARY_COLOR'
,p_prompt=>'Primary Color'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(54271876904219010810)
,p_plugin_id=>wwv_flow_imp.id(54259881825605430079)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'CARD_TYPE'
,p_prompt=>'Card Type'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_default_value=>'circle'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_examples=>'square'
,p_help_text=>'can either be circle or square'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(55618703126260244972)
,p_plugin_id=>wwv_flow_imp.id(54259881825605430079)
,p_name=>'test'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="rw-Button rw-Button--borderless rw-Button--icon" {if IS_DISABLED/}disabled{endif/} type="button" data-menu="#MENU_ID#">',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-icon oj-ux-ico-overflow-h" aria-hidden="true"></span>',
'    <span class="rw-Button-text">#LABEL#</span>',
'  </span>',
'</button> #MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(55618633324563222426)
,p_plugin_id=>wwv_flow_imp.id(54259881825605430079)
,p_name=>'Acion'
,p_static_id=>'ACION'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
--commit;
end;
/
set verify on feedback on define on
prompt  ...done
