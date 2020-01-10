json.extract! budget, :id, :item, :account, :department, :amount, :created_at, :updated_at
json.url budget_url(budget, format: :json)
