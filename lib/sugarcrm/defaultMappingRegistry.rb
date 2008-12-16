require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsSugarcrm = "http://www.sugarcrm.com/sugarcrm"

  EncodedRegistry.register(
    :class => Note_attachment,
    :schema_type => XSD::QName.new(NsSugarcrm, "note_attachment"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]]
    ]
  )

  EncodedRegistry.register(
    :class => Return_note_attachment,
    :schema_type => XSD::QName.new(NsSugarcrm, "return_note_attachment"),
    :schema_element => [
      ["note_attachment", ["Note_attachment", XSD::QName.new(nil, "note_attachment")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => User_auth,
    :schema_type => XSD::QName.new(NsSugarcrm, "user_auth"),
    :schema_element => [
      ["user_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user_name")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsSugarcrm, "field"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["required", ["SOAP::SOAPInt", XSD::QName.new(nil, "required")]],
      ["options", ["Name_value_list", XSD::QName.new(nil, "options")]],
      ["default_value", ["SOAP::SOAPString", XSD::QName.new(nil, "default_value")]]
    ]
  )

  EncodedRegistry.set(
    Field_list,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "field") }
  )

  EncodedRegistry.register(
    :class => Name_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "name_value"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.set(
    Name_value_list,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "name_value") }
  )

  EncodedRegistry.set(
    Name_value_lists,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "name_value_list") }
  )

  EncodedRegistry.set(
    Select_fields,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => Module_fields,
    :schema_type => XSD::QName.new(NsSugarcrm, "module_fields"),
    :schema_element => [
      ["module_name", ["SOAP::SOAPString", XSD::QName.new(nil, "module_name")]],
      ["module_fields", ["Field_list", XSD::QName.new(nil, "module_fields")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Module_list,
    :schema_type => XSD::QName.new(NsSugarcrm, "module_list"),
    :schema_element => [
      ["modules", ["Select_fields", XSD::QName.new(nil, "modules")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Error_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "error_value"),
    :schema_element => [
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  EncodedRegistry.register(
    :class => Entry_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "entry_value"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["module_name", ["SOAP::SOAPString", XSD::QName.new(nil, "module_name")]],
      ["name_value_list", ["Name_value_list", XSD::QName.new(nil, "name_value_list")]]
    ]
  )

  EncodedRegistry.set(
    Entry_list,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "entry_value") }
  )

  EncodedRegistry.register(
    :class => Get_mailmerge_document_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_mailmerge_document_result"),
    :schema_element => [
      ["html", ["SOAP::SOAPString", XSD::QName.new(nil, "html")]],
      ["name_value_list", ["Name_value_list", XSD::QName.new(nil, "name_value_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Get_entry_list_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entry_list_result"),
    :schema_element => [
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]],
      ["field_list", ["Field_list", XSD::QName.new(nil, "field_list")]],
      ["entry_list", ["Entry_list", XSD::QName.new(nil, "entry_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Get_entry_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entry_result"),
    :schema_element => [
      ["field_list", ["Field_list", XSD::QName.new(nil, "field_list")]],
      ["entry_list", ["Entry_list", XSD::QName.new(nil, "entry_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Set_entry_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_entry_result"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Set_entries_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_entries_result"),
    :schema_element => [
      ["ids", ["Select_fields", XSD::QName.new(nil, "ids")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Id_mod,
    :schema_type => XSD::QName.new(NsSugarcrm, "id_mod"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["deleted", ["SOAP::SOAPInt", XSD::QName.new(nil, "deleted")]]
    ]
  )

  EncodedRegistry.set(
    Ids_mods,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "id_mod") }
  )

  EncodedRegistry.register(
    :class => Get_relationships_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_relationships_result"),
    :schema_element => [
      ["ids", ["Ids_mods", XSD::QName.new(nil, "ids")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Set_relationship_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_relationship_value"),
    :schema_element => [
      ["module1", ["SOAP::SOAPString", XSD::QName.new(nil, "module1")]],
      ["module1_id", ["SOAP::SOAPString", XSD::QName.new(nil, "module1_id")]],
      ["module2", ["SOAP::SOAPString", XSD::QName.new(nil, "module2")]],
      ["module2_id", ["SOAP::SOAPString", XSD::QName.new(nil, "module2_id")]]
    ]
  )

  EncodedRegistry.set(
    Set_relationship_list,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "set_relationship_value") }
  )

  EncodedRegistry.register(
    :class => Set_relationship_list_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_relationship_list_result"),
    :schema_element => [
      ["created", ["SOAP::SOAPInt", XSD::QName.new(nil, "created")]],
      ["failed", ["SOAP::SOAPInt", XSD::QName.new(nil, "failed")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Document_revision,
    :schema_type => XSD::QName.new(NsSugarcrm, "document_revision"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["document_name", ["SOAP::SOAPString", XSD::QName.new(nil, "document_name")]],
      ["revision", ["SOAP::SOAPString", XSD::QName.new(nil, "revision")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]]
    ]
  )

  EncodedRegistry.register(
    :class => Get_entry_list_result_encoded,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entry_list_result_encoded"),
    :schema_element => [
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]],
      ["total_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "total_count")]],
      ["field_list", ["Select_fields", XSD::QName.new(nil, "field_list")]],
      ["entry_list", ["SOAP::SOAPString", XSD::QName.new(nil, "entry_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Get_sync_result_encoded,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_sync_result_encoded"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Get_quick_sync_result_encoded,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_quick_sync_result_encoded"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]],
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]],
      ["total_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "total_count")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Return_document_revision,
    :schema_type => XSD::QName.new(NsSugarcrm, "return_document_revision"),
    :schema_element => [
      ["document_revision", ["Document_revision", XSD::QName.new(nil, "document_revision")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Name_value_operator,
    :schema_type => XSD::QName.new(NsSugarcrm, "name_value_operator"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]],
      ["operator", ["SOAP::SOAPString", XSD::QName.new(nil, "operator")]],
      ["value_array", ["Select_fields", XSD::QName.new(nil, "value_array")]]
    ]
  )

  EncodedRegistry.set(
    Name_value_operator_list,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "name_value_operator") }
  )

  EncodedRegistry.register(
    :class => Newsletter,
    :schema_type => XSD::QName.new(NsSugarcrm, "newsletter"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["prospect_list_id", ["SOAP::SOAPString", XSD::QName.new(nil, "prospect_list_id")]],
      ["campaign_id", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign_id")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["frequency", ["SOAP::SOAPString", XSD::QName.new(nil, "frequency")]]
    ]
  )

  EncodedRegistry.set(
    Newsletter_list,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "newsletter") }
  )

  EncodedRegistry.register(
    :class => Get_subscription_lists_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_subscription_lists_result"),
    :schema_element => [
      ["unsubscribed", ["Newsletter_list", XSD::QName.new(nil, "unsubscribed")]],
      ["subscribed", ["Newsletter_list", XSD::QName.new(nil, "subscribed")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.set(
    Str_array,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => Name_value_lists_error,
    :schema_type => XSD::QName.new(NsSugarcrm, "name_value_lists_error"),
    :schema_element => [
      ["name_value_lists", ["Name_value_lists", XSD::QName.new(nil, "name_value_lists")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Get_entries_count_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entries_count_result"),
    :schema_element => [
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Set_entries_detail_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_entries_detail_result"),
    :schema_element => [
      ["name_value_lists", ["Name_value_lists", XSD::QName.new(nil, "name_value_lists")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  EncodedRegistry.register(
    :class => Contact_detail,
    :schema_type => XSD::QName.new(NsSugarcrm, "contact_detail"),
    :schema_element => [
      ["email_address", ["SOAP::SOAPString", XSD::QName.new(nil, "email_address")]],
      ["name1", ["SOAP::SOAPString", XSD::QName.new(nil, "name1")]],
      ["name2", ["SOAP::SOAPString", XSD::QName.new(nil, "name2")]],
      ["association", ["SOAP::SOAPString", XSD::QName.new(nil, "association")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["msi_id", ["SOAP::SOAPString", XSD::QName.new(nil, "msi_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.set(
    Contact_detail_array,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "contact_detail") }
  )

  EncodedRegistry.register(
    :class => User_detail,
    :schema_type => XSD::QName.new(NsSugarcrm, "user_detail"),
    :schema_element => [
      ["email_address", ["SOAP::SOAPString", XSD::QName.new(nil, "email_address")]],
      ["user_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user_name")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(nil, "department")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]]
    ]
  )

  EncodedRegistry.set(
    User_detail_array,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSugarcrm, "user_detail") }
  )

  LiteralRegistry.register(
    :class => Note_attachment,
    :schema_type => XSD::QName.new(NsSugarcrm, "note_attachment"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]]
    ]
  )

  LiteralRegistry.register(
    :class => Return_note_attachment,
    :schema_type => XSD::QName.new(NsSugarcrm, "return_note_attachment"),
    :schema_element => [
      ["note_attachment", ["Note_attachment", XSD::QName.new(nil, "note_attachment")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => User_auth,
    :schema_type => XSD::QName.new(NsSugarcrm, "user_auth"),
    :schema_element => [
      ["user_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user_name")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsSugarcrm, "field"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["required", ["SOAP::SOAPInt", XSD::QName.new(nil, "required")]],
      ["options", ["Name_value_list", XSD::QName.new(nil, "options")]],
      ["default_value", ["SOAP::SOAPString", XSD::QName.new(nil, "default_value")]]
    ]
  )

  LiteralRegistry.register(
    :class => Name_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "name_value"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => Module_fields,
    :schema_type => XSD::QName.new(NsSugarcrm, "module_fields"),
    :schema_element => [
      ["module_name", ["SOAP::SOAPString", XSD::QName.new(nil, "module_name")]],
      ["module_fields", ["Field_list", XSD::QName.new(nil, "module_fields")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Module_list,
    :schema_type => XSD::QName.new(NsSugarcrm, "module_list"),
    :schema_element => [
      ["modules", ["Select_fields", XSD::QName.new(nil, "modules")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Error_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "error_value"),
    :schema_element => [
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  LiteralRegistry.register(
    :class => Entry_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "entry_value"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["module_name", ["SOAP::SOAPString", XSD::QName.new(nil, "module_name")]],
      ["name_value_list", ["Name_value_list", XSD::QName.new(nil, "name_value_list")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_mailmerge_document_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_mailmerge_document_result"),
    :schema_element => [
      ["html", ["SOAP::SOAPString", XSD::QName.new(nil, "html")]],
      ["name_value_list", ["Name_value_list", XSD::QName.new(nil, "name_value_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_entry_list_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entry_list_result"),
    :schema_element => [
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]],
      ["field_list", ["Field_list", XSD::QName.new(nil, "field_list")]],
      ["entry_list", ["Entry_list", XSD::QName.new(nil, "entry_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_entry_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entry_result"),
    :schema_element => [
      ["field_list", ["Field_list", XSD::QName.new(nil, "field_list")]],
      ["entry_list", ["Entry_list", XSD::QName.new(nil, "entry_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Set_entry_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_entry_result"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Set_entries_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_entries_result"),
    :schema_element => [
      ["ids", ["Select_fields", XSD::QName.new(nil, "ids")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Id_mod,
    :schema_type => XSD::QName.new(NsSugarcrm, "id_mod"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["date_modified", ["SOAP::SOAPString", XSD::QName.new(nil, "date_modified")]],
      ["deleted", ["SOAP::SOAPInt", XSD::QName.new(nil, "deleted")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_relationships_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_relationships_result"),
    :schema_element => [
      ["ids", ["Ids_mods", XSD::QName.new(nil, "ids")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Set_relationship_value,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_relationship_value"),
    :schema_element => [
      ["module1", ["SOAP::SOAPString", XSD::QName.new(nil, "module1")]],
      ["module1_id", ["SOAP::SOAPString", XSD::QName.new(nil, "module1_id")]],
      ["module2", ["SOAP::SOAPString", XSD::QName.new(nil, "module2")]],
      ["module2_id", ["SOAP::SOAPString", XSD::QName.new(nil, "module2_id")]]
    ]
  )

  LiteralRegistry.register(
    :class => Set_relationship_list_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_relationship_list_result"),
    :schema_element => [
      ["created", ["SOAP::SOAPInt", XSD::QName.new(nil, "created")]],
      ["failed", ["SOAP::SOAPInt", XSD::QName.new(nil, "failed")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Document_revision,
    :schema_type => XSD::QName.new(NsSugarcrm, "document_revision"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["document_name", ["SOAP::SOAPString", XSD::QName.new(nil, "document_name")]],
      ["revision", ["SOAP::SOAPString", XSD::QName.new(nil, "revision")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_entry_list_result_encoded,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entry_list_result_encoded"),
    :schema_element => [
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]],
      ["total_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "total_count")]],
      ["field_list", ["Select_fields", XSD::QName.new(nil, "field_list")]],
      ["entry_list", ["SOAP::SOAPString", XSD::QName.new(nil, "entry_list")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_sync_result_encoded,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_sync_result_encoded"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_quick_sync_result_encoded,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_quick_sync_result_encoded"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]],
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["next_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "next_offset")]],
      ["total_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "total_count")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Return_document_revision,
    :schema_type => XSD::QName.new(NsSugarcrm, "return_document_revision"),
    :schema_element => [
      ["document_revision", ["Document_revision", XSD::QName.new(nil, "document_revision")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Name_value_operator,
    :schema_type => XSD::QName.new(NsSugarcrm, "name_value_operator"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]],
      ["operator", ["SOAP::SOAPString", XSD::QName.new(nil, "operator")]],
      ["value_array", ["Select_fields", XSD::QName.new(nil, "value_array")]]
    ]
  )

  LiteralRegistry.register(
    :class => Newsletter,
    :schema_type => XSD::QName.new(NsSugarcrm, "newsletter"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["prospect_list_id", ["SOAP::SOAPString", XSD::QName.new(nil, "prospect_list_id")]],
      ["campaign_id", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign_id")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["frequency", ["SOAP::SOAPString", XSD::QName.new(nil, "frequency")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_subscription_lists_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_subscription_lists_result"),
    :schema_element => [
      ["unsubscribed", ["Newsletter_list", XSD::QName.new(nil, "unsubscribed")]],
      ["subscribed", ["Newsletter_list", XSD::QName.new(nil, "subscribed")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Name_value_lists_error,
    :schema_type => XSD::QName.new(NsSugarcrm, "name_value_lists_error"),
    :schema_element => [
      ["name_value_lists", ["Name_value_lists", XSD::QName.new(nil, "name_value_lists")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Get_entries_count_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "get_entries_count_result"),
    :schema_element => [
      ["result_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "result_count")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Set_entries_detail_result,
    :schema_type => XSD::QName.new(NsSugarcrm, "set_entries_detail_result"),
    :schema_element => [
      ["name_value_lists", ["Name_value_lists", XSD::QName.new(nil, "name_value_lists")]],
      ["error", ["Error_value", XSD::QName.new(nil, "error")]]
    ]
  )

  LiteralRegistry.register(
    :class => Contact_detail,
    :schema_type => XSD::QName.new(NsSugarcrm, "contact_detail"),
    :schema_element => [
      ["email_address", ["SOAP::SOAPString", XSD::QName.new(nil, "email_address")]],
      ["name1", ["SOAP::SOAPString", XSD::QName.new(nil, "name1")]],
      ["name2", ["SOAP::SOAPString", XSD::QName.new(nil, "name2")]],
      ["association", ["SOAP::SOAPString", XSD::QName.new(nil, "association")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["msi_id", ["SOAP::SOAPString", XSD::QName.new(nil, "msi_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => User_detail,
    :schema_type => XSD::QName.new(NsSugarcrm, "user_detail"),
    :schema_element => [
      ["email_address", ["SOAP::SOAPString", XSD::QName.new(nil, "email_address")]],
      ["user_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user_name")]],
      ["first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "first_name")]],
      ["last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "last_name")]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(nil, "department")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]]
    ]
  )

end
