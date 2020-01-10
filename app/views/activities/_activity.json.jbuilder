json.extract! activity, :id, :activity_name, :start_date, :end_date, :campu_id, :place_id, :type_id, :area_id, :subarea_id, :action_id, :program_id, :subprogram_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
