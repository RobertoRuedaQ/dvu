json.extract! subject, :id, :title, :code, :hour, :campus_id, :credits, :teacher_name, :faculty, :created_at, :updated_at
json.url subject_url(subject, format: :json)
