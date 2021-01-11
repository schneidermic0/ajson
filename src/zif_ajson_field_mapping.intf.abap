interface zif_ajson_field_mapping
  public.

  types:
    begin of ty_mapping_field,
      abap type string,
      json type string,
    end of ty_mapping_field,
    ty_mapping_fields type sorted table of ty_mapping_field
      with unique key abap
      with unique sorted key json components json.

  methods to_abap
    importing
      !iv_path         type string
      !iv_name         type string
    returning
      value(rv_result) type string.

  methods to_json
    importing
      !iv_path         type string
      !iv_name         type string
    returning
      value(rv_result) type string.

endinterface.
