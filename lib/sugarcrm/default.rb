require 'xsd/qname'

# {http://www.sugarcrm.com/sugarcrm}note_attachment
#   id - SOAP::SOAPString
#   filename - SOAP::SOAPString
#   file - SOAP::SOAPString
class Note_attachment
  attr_accessor :id
  attr_accessor :filename
  attr_accessor :file

  def initialize(id = nil, filename = nil, file = nil)
    @id = id
    @filename = filename
    @file = file
  end
end

# {http://www.sugarcrm.com/sugarcrm}return_note_attachment
#   note_attachment - Note_attachment
#   error - Error_value
class Return_note_attachment
  attr_accessor :note_attachment
  attr_accessor :error

  def initialize(note_attachment = nil, error = nil)
    @note_attachment = note_attachment
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}user_auth
#   user_name - SOAP::SOAPString
#   password - SOAP::SOAPString
#   version - SOAP::SOAPString
class User_auth
  attr_accessor :user_name
  attr_accessor :password
  attr_accessor :version

  def initialize(user_name = nil, password = nil, version = nil)
    @user_name = user_name
    @password = password
    @version = version
  end
end

# {http://www.sugarcrm.com/sugarcrm}field
#   name - SOAP::SOAPString
#   type - SOAP::SOAPString
#   label - SOAP::SOAPString
#   required - SOAP::SOAPInt
#   options - Name_value_list
#   default_value - SOAP::SOAPString
class Field
  attr_accessor :name
  attr_accessor :type
  attr_accessor :label
  attr_accessor :required
  attr_accessor :options
  attr_accessor :default_value

  def initialize(name = nil, type = nil, label = nil, required = nil, options = nil, default_value = nil)
    @name = name
    @type = type
    @label = label
    @required = required
    @options = options
    @default_value = default_value
  end
end

# {http://www.sugarcrm.com/sugarcrm}name_value
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class Name_value
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://www.sugarcrm.com/sugarcrm}module_fields
#   module_name - SOAP::SOAPString
#   module_fields - Field_list
#   error - Error_value
class Module_fields
  attr_accessor :module_name
  attr_accessor :module_fields
  attr_accessor :error

  def initialize(module_name = nil, module_fields = nil, error = nil)
    @module_name = module_name
    @module_fields = module_fields
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}module_list
#   modules - Select_fields
#   error - Error_value
class Module_list
  attr_accessor :modules
  attr_accessor :error

  def initialize(modules = nil, error = nil)
    @modules = modules
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}error_value
#   number - SOAP::SOAPString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
class Error_value
  attr_accessor :number
  attr_accessor :name
  attr_accessor :description

  def initialize(number = nil, name = nil, description = nil)
    @number = number
    @name = name
    @description = description
  end
end

# {http://www.sugarcrm.com/sugarcrm}entry_value
#   id - SOAP::SOAPString
#   module_name - SOAP::SOAPString
#   name_value_list - Name_value_list
class Entry_value
  attr_accessor :id
  attr_accessor :module_name
  attr_accessor :name_value_list

  def initialize(id = nil, module_name = nil, name_value_list = nil)
    @id = id
    @module_name = module_name
    @name_value_list = name_value_list
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_mailmerge_document_result
#   html - SOAP::SOAPString
#   name_value_list - Name_value_list
#   error - Error_value
class Get_mailmerge_document_result
  attr_accessor :html
  attr_accessor :name_value_list
  attr_accessor :error

  def initialize(html = nil, name_value_list = nil, error = nil)
    @html = html
    @name_value_list = name_value_list
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_entry_list_result
#   result_count - SOAP::SOAPInt
#   next_offset - SOAP::SOAPInt
#   field_list - Field_list
#   entry_list - Entry_list
#   error - Error_value
class Get_entry_list_result
  attr_accessor :result_count
  attr_accessor :next_offset
  attr_accessor :field_list
  attr_accessor :entry_list
  attr_accessor :error

  def initialize(result_count = nil, next_offset = nil, field_list = nil, entry_list = nil, error = nil)
    @result_count = result_count
    @next_offset = next_offset
    @field_list = field_list
    @entry_list = entry_list
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_entry_result
#   field_list - Field_list
#   entry_list - Entry_list
#   error - Error_value
class Get_entry_result
  attr_accessor :field_list
  attr_accessor :entry_list
  attr_accessor :error

  def initialize(field_list = nil, entry_list = nil, error = nil)
    @field_list = field_list
    @entry_list = entry_list
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}set_entry_result
#   id - SOAP::SOAPString
#   error - Error_value
class Set_entry_result
  attr_accessor :id
  attr_accessor :error

  def initialize(id = nil, error = nil)
    @id = id
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}set_entries_result
#   ids - Select_fields
#   error - Error_value
class Set_entries_result
  attr_accessor :ids
  attr_accessor :error

  def initialize(ids = nil, error = nil)
    @ids = ids
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}id_mod
#   id - SOAP::SOAPString
#   date_modified - SOAP::SOAPString
#   deleted - SOAP::SOAPInt
class Id_mod
  attr_accessor :id
  attr_accessor :date_modified
  attr_accessor :deleted

  def initialize(id = nil, date_modified = nil, deleted = nil)
    @id = id
    @date_modified = date_modified
    @deleted = deleted
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_relationships_result
#   ids - Ids_mods
#   error - Error_value
class Get_relationships_result
  attr_accessor :ids
  attr_accessor :error

  def initialize(ids = nil, error = nil)
    @ids = ids
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}set_relationship_value
#   module1 - SOAP::SOAPString
#   module1_id - SOAP::SOAPString
#   module2 - SOAP::SOAPString
#   module2_id - SOAP::SOAPString
class Set_relationship_value
  attr_accessor :module1
  attr_accessor :module1_id
  attr_accessor :module2
  attr_accessor :module2_id

  def initialize(module1 = nil, module1_id = nil, module2 = nil, module2_id = nil)
    @module1 = module1
    @module1_id = module1_id
    @module2 = module2
    @module2_id = module2_id
  end
end

# {http://www.sugarcrm.com/sugarcrm}set_relationship_list_result
#   created - SOAP::SOAPInt
#   failed - SOAP::SOAPInt
#   error - Error_value
class Set_relationship_list_result
  attr_accessor :created
  attr_accessor :failed
  attr_accessor :error

  def initialize(created = nil, failed = nil, error = nil)
    @created = created
    @failed = failed
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}document_revision
#   id - SOAP::SOAPString
#   document_name - SOAP::SOAPString
#   revision - SOAP::SOAPString
#   filename - SOAP::SOAPString
#   file - SOAP::SOAPString
class Document_revision
  attr_accessor :id
  attr_accessor :document_name
  attr_accessor :revision
  attr_accessor :filename
  attr_accessor :file

  def initialize(id = nil, document_name = nil, revision = nil, filename = nil, file = nil)
    @id = id
    @document_name = document_name
    @revision = revision
    @filename = filename
    @file = file
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_entry_list_result_encoded
#   result_count - SOAP::SOAPInt
#   next_offset - SOAP::SOAPInt
#   total_count - SOAP::SOAPInt
#   field_list - Select_fields
#   entry_list - SOAP::SOAPString
#   error - Error_value
class Get_entry_list_result_encoded
  attr_accessor :result_count
  attr_accessor :next_offset
  attr_accessor :total_count
  attr_accessor :field_list
  attr_accessor :entry_list
  attr_accessor :error

  def initialize(result_count = nil, next_offset = nil, total_count = nil, field_list = nil, entry_list = nil, error = nil)
    @result_count = result_count
    @next_offset = next_offset
    @total_count = total_count
    @field_list = field_list
    @entry_list = entry_list
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_sync_result_encoded
#   result - SOAP::SOAPString
#   error - Error_value
class Get_sync_result_encoded
  attr_accessor :result
  attr_accessor :error

  def initialize(result = nil, error = nil)
    @result = result
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_quick_sync_result_encoded
#   result - SOAP::SOAPString
#   result_count - SOAP::SOAPInt
#   next_offset - SOAP::SOAPInt
#   total_count - SOAP::SOAPInt
#   error - Error_value
class Get_quick_sync_result_encoded
  attr_accessor :result
  attr_accessor :result_count
  attr_accessor :next_offset
  attr_accessor :total_count
  attr_accessor :error

  def initialize(result = nil, result_count = nil, next_offset = nil, total_count = nil, error = nil)
    @result = result
    @result_count = result_count
    @next_offset = next_offset
    @total_count = total_count
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}return_document_revision
#   document_revision - Document_revision
#   error - Error_value
class Return_document_revision
  attr_accessor :document_revision
  attr_accessor :error

  def initialize(document_revision = nil, error = nil)
    @document_revision = document_revision
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}name_value_operator
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
#   operator - SOAP::SOAPString
#   value_array - Select_fields
class Name_value_operator
  attr_accessor :name
  attr_accessor :value
  attr_accessor :operator
  attr_accessor :value_array

  def initialize(name = nil, value = nil, operator = nil, value_array = nil)
    @name = name
    @value = value
    @operator = operator
    @value_array = value_array
  end
end

# {http://www.sugarcrm.com/sugarcrm}newsletter
#   name - SOAP::SOAPString
#   prospect_list_id - SOAP::SOAPString
#   campaign_id - SOAP::SOAPString
#   description - SOAP::SOAPString
#   frequency - SOAP::SOAPString
class Newsletter
  attr_accessor :name
  attr_accessor :prospect_list_id
  attr_accessor :campaign_id
  attr_accessor :description
  attr_accessor :frequency

  def initialize(name = nil, prospect_list_id = nil, campaign_id = nil, description = nil, frequency = nil)
    @name = name
    @prospect_list_id = prospect_list_id
    @campaign_id = campaign_id
    @description = description
    @frequency = frequency
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_subscription_lists_result
#   unsubscribed - Newsletter_list
#   subscribed - Newsletter_list
#   error - Error_value
class Get_subscription_lists_result
  attr_accessor :unsubscribed
  attr_accessor :subscribed
  attr_accessor :error

  def initialize(unsubscribed = nil, subscribed = nil, error = nil)
    @unsubscribed = unsubscribed
    @subscribed = subscribed
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}name_value_lists_error
#   name_value_lists - Name_value_lists
#   error - Error_value
class Name_value_lists_error
  attr_accessor :name_value_lists
  attr_accessor :error

  def initialize(name_value_lists = nil, error = nil)
    @name_value_lists = name_value_lists
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}get_entries_count_result
#   result_count - SOAP::SOAPInt
#   error - Error_value
class Get_entries_count_result
  attr_accessor :result_count
  attr_accessor :error

  def initialize(result_count = nil, error = nil)
    @result_count = result_count
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}set_entries_detail_result
#   name_value_lists - Name_value_lists
#   error - Error_value
class Set_entries_detail_result
  attr_accessor :name_value_lists
  attr_accessor :error

  def initialize(name_value_lists = nil, error = nil)
    @name_value_lists = name_value_lists
    @error = error
  end
end

# {http://www.sugarcrm.com/sugarcrm}contact_detail
#   email_address - SOAP::SOAPString
#   name1 - SOAP::SOAPString
#   name2 - SOAP::SOAPString
#   association - SOAP::SOAPString
#   id - SOAP::SOAPString
#   msi_id - SOAP::SOAPString
#   type - SOAP::SOAPString
class Contact_detail
  attr_accessor :email_address
  attr_accessor :name1
  attr_accessor :name2
  attr_accessor :association
  attr_accessor :id
  attr_accessor :msi_id
  attr_accessor :type

  def initialize(email_address = nil, name1 = nil, name2 = nil, association = nil, id = nil, msi_id = nil, type = nil)
    @email_address = email_address
    @name1 = name1
    @name2 = name2
    @association = association
    @id = id
    @msi_id = msi_id
    @type = type
  end
end

# {http://www.sugarcrm.com/sugarcrm}user_detail
#   email_address - SOAP::SOAPString
#   user_name - SOAP::SOAPString
#   first_name - SOAP::SOAPString
#   last_name - SOAP::SOAPString
#   department - SOAP::SOAPString
#   id - SOAP::SOAPString
#   title - SOAP::SOAPString
class User_detail
  attr_accessor :email_address
  attr_accessor :user_name
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :department
  attr_accessor :id
  attr_accessor :title

  def initialize(email_address = nil, user_name = nil, first_name = nil, last_name = nil, department = nil, id = nil, title = nil)
    @email_address = email_address
    @user_name = user_name
    @first_name = first_name
    @last_name = last_name
    @department = department
    @id = id
    @title = title
  end
end

# {http://www.sugarcrm.com/sugarcrm}field_list
class Field_list < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}name_value_list
class Name_value_list < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}name_value_lists
class Name_value_lists < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}select_fields
class Select_fields < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}entry_list
class Entry_list < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}ids_mods
class Ids_mods < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}set_relationship_list
class Set_relationship_list < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}name_value_operator_list
class Name_value_operator_list < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}newsletter_list
class Newsletter_list < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}str_array
class Str_array < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}contact_detail_array
class Contact_detail_array < ::Array
end

# {http://www.sugarcrm.com/sugarcrm}user_detail_array
class User_detail_array < ::Array
end
