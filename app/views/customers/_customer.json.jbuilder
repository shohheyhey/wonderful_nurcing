json.extract! customer, :id, :office, :category, :name, :age, :birthday, :kaigodo, :medical_history, :discription, :created_at, :updated_at
json.url customer_url(customer, format: :json)
