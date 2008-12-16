#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = SugarsoapPortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   is_user_admin(session)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
session = nil
puts obj.is_user_admin(session)

# SYNOPSIS
#   login(user_auth, application_name)
#
# ARGS
#   user_auth       User_auth - {http://www.sugarcrm.com/sugarcrm}user_auth
#   application_name C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Set_entry_result - {http://www.sugarcrm.com/sugarcrm}set_entry_result
#
user_auth = application_name = nil
puts obj.login(user_auth, application_name)

# SYNOPSIS
#   is_loopback
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#

puts obj.is_loopback

# SYNOPSIS
#   seamless_login(session)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
session = nil
puts obj.seamless_login(session)

# SYNOPSIS
#   get_entry_list(session, module_name, query, order_by, offset, select_fields, max_results, deleted)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   query           C_String - {http://www.w3.org/2001/XMLSchema}string
#   order_by        C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   select_fields   Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#   max_results     Int - {http://www.w3.org/2001/XMLSchema}int
#   deleted         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Get_entry_list_result - {http://www.sugarcrm.com/sugarcrm}get_entry_list_result
#
session = module_name = query = order_by = offset = select_fields = max_results = deleted = nil
puts obj.get_entry_list(session, module_name, query, order_by, offset, select_fields, max_results, deleted)

# SYNOPSIS
#   get_entry(session, module_name, id, select_fields)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#   select_fields   Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#
# RETURNS
#   v_return        Get_entry_result - {http://www.sugarcrm.com/sugarcrm}get_entry_result
#
session = module_name = id = select_fields = nil
puts obj.get_entry(session, module_name, id, select_fields)

# SYNOPSIS
#   get_entries(session, module_name, ids, select_fields)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   ids             Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#   select_fields   Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#
# RETURNS
#   v_return        Get_entry_result - {http://www.sugarcrm.com/sugarcrm}get_entry_result
#
session = module_name = ids = select_fields = nil
puts obj.get_entries(session, module_name, ids, select_fields)

# SYNOPSIS
#   set_entry(session, module_name, name_value_list)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   name_value_list Name_value_list - {http://www.sugarcrm.com/sugarcrm}name_value_list
#
# RETURNS
#   v_return        Set_entry_result - {http://www.sugarcrm.com/sugarcrm}set_entry_result
#
session = module_name = name_value_list = nil
puts obj.set_entry(session, module_name, name_value_list)

# SYNOPSIS
#   set_entries(session, module_name, name_value_lists)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   name_value_lists Name_value_lists - {http://www.sugarcrm.com/sugarcrm}name_value_lists
#
# RETURNS
#   v_return        Set_entries_result - {http://www.sugarcrm.com/sugarcrm}set_entries_result
#
session = module_name = name_value_lists = nil
puts obj.set_entries(session, module_name, name_value_lists)

# SYNOPSIS
#   set_note_attachment(session, note)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   note            Note_attachment - {http://www.sugarcrm.com/sugarcrm}note_attachment
#
# RETURNS
#   v_return        Set_entry_result - {http://www.sugarcrm.com/sugarcrm}set_entry_result
#
session = note = nil
puts obj.set_note_attachment(session, note)

# SYNOPSIS
#   get_note_attachment(session, id)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Return_note_attachment - {http://www.sugarcrm.com/sugarcrm}return_note_attachment
#
session = id = nil
puts obj.get_note_attachment(session, id)

# SYNOPSIS
#   relate_note_to_module(session, note_id, module_name, module_id)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   note_id         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_id       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Error_value - {http://www.sugarcrm.com/sugarcrm}error_value
#
session = note_id = module_name = module_id = nil
puts obj.relate_note_to_module(session, note_id, module_name, module_id)

# SYNOPSIS
#   get_related_notes(session, module_name, module_id, select_fields)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_id       C_String - {http://www.w3.org/2001/XMLSchema}string
#   select_fields   Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#
# RETURNS
#   v_return        Get_entry_result - {http://www.sugarcrm.com/sugarcrm}get_entry_result
#
session = module_name = module_id = select_fields = nil
puts obj.get_related_notes(session, module_name, module_id, select_fields)

# SYNOPSIS
#   logout(session)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Error_value - {http://www.sugarcrm.com/sugarcrm}error_value
#
session = nil
puts obj.logout(session)

# SYNOPSIS
#   get_module_fields(session, module_name)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Module_fields - {http://www.sugarcrm.com/sugarcrm}module_fields
#
session = module_name = nil
puts obj.get_module_fields(session, module_name)

# SYNOPSIS
#   get_available_modules(session)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Module_list - {http://www.sugarcrm.com/sugarcrm}module_list
#
session = nil
puts obj.get_available_modules(session)

# SYNOPSIS
#   update_portal_user(session, portal_name, name_value_list)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   portal_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   name_value_list Name_value_list - {http://www.sugarcrm.com/sugarcrm}name_value_list
#
# RETURNS
#   v_return        Error_value - {http://www.sugarcrm.com/sugarcrm}error_value
#
session = portal_name = name_value_list = nil
puts obj.update_portal_user(session, portal_name, name_value_list)

# SYNOPSIS
#   test(string)
#
# ARGS
#   string          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
string = nil
puts obj.test(string)

# SYNOPSIS
#   get_user_id(session)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
session = nil
puts obj.get_user_id(session)

# SYNOPSIS
#   get_user_team_id(session)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
session = nil
puts obj.get_user_team_id(session)

# SYNOPSIS
#   get_server_time
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.get_server_time

# SYNOPSIS
#   get_gmt_time
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.get_gmt_time

# SYNOPSIS
#   get_sugar_flavor
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.get_sugar_flavor

# SYNOPSIS
#   get_server_version
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.get_server_version

# SYNOPSIS
#   get_relationships(session, module_name, module_id, related_module, related_module_query, deleted)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_id       C_String - {http://www.w3.org/2001/XMLSchema}string
#   related_module  C_String - {http://www.w3.org/2001/XMLSchema}string
#   related_module_query C_String - {http://www.w3.org/2001/XMLSchema}string
#   deleted         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Get_relationships_result - {http://www.sugarcrm.com/sugarcrm}get_relationships_result
#
session = module_name = module_id = related_module = related_module_query = deleted = nil
puts obj.get_relationships(session, module_name, module_id, related_module, related_module_query, deleted)

# SYNOPSIS
#   set_relationship(session, set_relationship_value)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   set_relationship_value Set_relationship_value - {http://www.sugarcrm.com/sugarcrm}set_relationship_value
#
# RETURNS
#   v_return        Error_value - {http://www.sugarcrm.com/sugarcrm}error_value
#
session = set_relationship_value = nil
puts obj.set_relationship(session, set_relationship_value)

# SYNOPSIS
#   set_relationships(session, set_relationship_list)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   set_relationship_list Set_relationship_list - {http://www.sugarcrm.com/sugarcrm}set_relationship_list
#
# RETURNS
#   v_return        Set_relationship_list_result - {http://www.sugarcrm.com/sugarcrm}set_relationship_list_result
#
session = set_relationship_list = nil
puts obj.set_relationships(session, set_relationship_list)

# SYNOPSIS
#   set_document_revision(session, note)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   note            Document_revision - {http://www.sugarcrm.com/sugarcrm}document_revision
#
# RETURNS
#   v_return        Set_entry_result - {http://www.sugarcrm.com/sugarcrm}set_entry_result
#
session = note = nil
puts obj.set_document_revision(session, note)

# SYNOPSIS
#   search_by_module(user_name, password, search_string, modules, offset, max_results)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   search_string   C_String - {http://www.w3.org/2001/XMLSchema}string
#   modules         Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   max_results     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Get_entry_list_result - {http://www.sugarcrm.com/sugarcrm}get_entry_list_result
#
user_name = password = search_string = modules = offset = max_results = nil
puts obj.search_by_module(user_name, password, search_string, modules, offset, max_results)

# SYNOPSIS
#   get_mailmerge_document(session, file_name, fields)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   file_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   fields          Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#
# RETURNS
#   v_return        Get_sync_result_encoded - {http://www.sugarcrm.com/sugarcrm}get_sync_result_encoded
#
session = file_name = fields = nil
puts obj.get_mailmerge_document(session, file_name, fields)

# SYNOPSIS
#   get_mailmerge_document2(session, file_name, fields)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   file_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   fields          Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#
# RETURNS
#   v_return        Get_mailmerge_document_result - {http://www.sugarcrm.com/sugarcrm}get_mailmerge_document_result
#
session = file_name = fields = nil
puts obj.get_mailmerge_document2(session, file_name, fields)

# SYNOPSIS
#   get_document_revision(session, i)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   i               C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Return_document_revision - {http://www.sugarcrm.com/sugarcrm}return_document_revision
#
session = i = nil
puts obj.get_document_revision(session, i)

# SYNOPSIS
#   set_campaign_merge(session, targets, campaign_id)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   targets         Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#   campaign_id     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Error_value - {http://www.sugarcrm.com/sugarcrm}error_value
#
session = targets = campaign_id = nil
puts obj.set_campaign_merge(session, targets, campaign_id)

# SYNOPSIS
#   get_entries_count(session, module_name, query, deleted)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   query           C_String - {http://www.w3.org/2001/XMLSchema}string
#   deleted         Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Get_entries_count_result - {http://www.sugarcrm.com/sugarcrm}get_entries_count_result
#
session = module_name = query = deleted = nil
puts obj.get_entries_count(session, module_name, query, deleted)

# SYNOPSIS
#   set_entries_details(session, module_name, name_value_lists, select_fields)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   name_value_lists Name_value_lists - {http://www.sugarcrm.com/sugarcrm}name_value_lists
#   select_fields   Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#
# RETURNS
#   v_return        Set_entries_detail_result - {http://www.sugarcrm.com/sugarcrm}set_entries_detail_result
#
session = module_name = name_value_lists = select_fields = nil
puts obj.set_entries_details(session, module_name, name_value_lists, select_fields)

# SYNOPSIS
#   sync_get_modified_relationships(session, module_name, related_module, from_date, to_date, offset, max_results, deleted, module_id, select_fields, ids, relationship_name, deletion_date, php_serialize)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   related_module  C_String - {http://www.w3.org/2001/XMLSchema}string
#   from_date       C_String - {http://www.w3.org/2001/XMLSchema}string
#   to_date         C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   max_results     Int - {http://www.w3.org/2001/XMLSchema}int
#   deleted         Int - {http://www.w3.org/2001/XMLSchema}int
#   module_id       C_String - {http://www.w3.org/2001/XMLSchema}string
#   select_fields   Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#   ids             Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#   relationship_name C_String - {http://www.w3.org/2001/XMLSchema}string
#   deletion_date   C_String - {http://www.w3.org/2001/XMLSchema}string
#   php_serialize   Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Get_entry_list_result_encoded - {http://www.sugarcrm.com/sugarcrm}get_entry_list_result_encoded
#
session = module_name = related_module = from_date = to_date = offset = max_results = deleted = module_id = select_fields = ids = relationship_name = deletion_date = php_serialize = nil
puts obj.sync_get_modified_relationships(session, module_name, related_module, from_date, to_date, offset, max_results, deleted, module_id, select_fields, ids, relationship_name, deletion_date, php_serialize)

# SYNOPSIS
#   get_modified_entries(session, module_name, ids, select_fields)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   ids             Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#   select_fields   Select_fields - {http://www.sugarcrm.com/sugarcrm}select_fields
#
# RETURNS
#   v_return        Get_sync_result_encoded - {http://www.sugarcrm.com/sugarcrm}get_sync_result_encoded
#
session = module_name = ids = select_fields = nil
puts obj.get_modified_entries(session, module_name, ids, select_fields)

# SYNOPSIS
#   get_attendee_list(session, module_name, id)
#
# ARGS
#   session         C_String - {http://www.w3.org/2001/XMLSchema}string
#   module_name     C_String - {http://www.w3.org/2001/XMLSchema}string
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Get_sync_result_encoded - {http://www.sugarcrm.com/sugarcrm}get_sync_result_encoded
#
session = module_name = id = nil
puts obj.get_attendee_list(session, module_name, id)

# SYNOPSIS
#   create_session(user_name, password)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = password = nil
puts obj.create_session(user_name, password)

# SYNOPSIS
#   end_session(user_name)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = nil
puts obj.end_session(user_name)

# SYNOPSIS
#   contact_by_email(user_name, password, email_address)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   email_address   C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Contact_detail_array - {http://www.sugarcrm.com/sugarcrm}contact_detail_array
#
user_name = password = email_address = nil
puts obj.contact_by_email(user_name, password, email_address)

# SYNOPSIS
#   get_contact_relationships(user_name, password, id)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Contact_detail_array - {http://www.sugarcrm.com/sugarcrm}contact_detail_array
#
user_name = password = id = nil
puts obj.get_contact_relationships(user_name, password, id)

# SYNOPSIS
#   user_list(user_name, password)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        User_detail_array - {http://www.sugarcrm.com/sugarcrm}user_detail_array
#
user_name = password = nil
puts obj.user_list(user_name, password)

# SYNOPSIS
#   search(user_name, password, name)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Contact_detail_array - {http://www.sugarcrm.com/sugarcrm}contact_detail_array
#
user_name = password = name = nil
puts obj.search(user_name, password, name)

# SYNOPSIS
#   track_email(user_name, password, parent_id, contact_ids, date_sent, email_subject, email_body)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   parent_id       C_String - {http://www.w3.org/2001/XMLSchema}string
#   contact_ids     C_String - {http://www.w3.org/2001/XMLSchema}string
#   date_sent       Date - {http://www.w3.org/2001/XMLSchema}date
#   email_subject   C_String - {http://www.w3.org/2001/XMLSchema}string
#   email_body      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = password = parent_id = contact_ids = date_sent = email_subject = email_body = nil
puts obj.track_email(user_name, password, parent_id, contact_ids, date_sent, email_subject, email_body)

# SYNOPSIS
#   create_contact(user_name, password, first_name, last_name, email_address)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   first_name      C_String - {http://www.w3.org/2001/XMLSchema}string
#   last_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   email_address   C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = password = first_name = last_name = email_address = nil
puts obj.create_contact(user_name, password, first_name, last_name, email_address)

# SYNOPSIS
#   create_lead(user_name, password, first_name, last_name, email_address)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   first_name      C_String - {http://www.w3.org/2001/XMLSchema}string
#   last_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   email_address   C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = password = first_name = last_name = email_address = nil
puts obj.create_lead(user_name, password, first_name, last_name, email_address)

# SYNOPSIS
#   create_account(user_name, password, name, phone, website)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   phone           C_String - {http://www.w3.org/2001/XMLSchema}string
#   website         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = password = name = phone = website = nil
puts obj.create_account(user_name, password, name, phone, website)

# SYNOPSIS
#   create_opportunity(user_name, password, name, amount)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   amount          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = password = name = amount = nil
puts obj.create_opportunity(user_name, password, name, amount)

# SYNOPSIS
#   create_case(user_name, password, name)
#
# ARGS
#   user_name       C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
user_name = password = name = nil
puts obj.create_case(user_name, password, name)


