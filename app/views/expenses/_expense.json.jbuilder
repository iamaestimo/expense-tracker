json.extract! expense, :id, :title, :description, :expense_date, :amount, :status, :created_at, :updated_at
json.url expense_url(expense, format: :json)
