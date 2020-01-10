json.extract! expense, :id, :expense_type, :client_type, :name, :bill_number, :siaf_code, :amount, :budget, :description, :date, :activity_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
