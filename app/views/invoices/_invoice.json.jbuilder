json.extract! invoice, :id, :game_id, :customer_id, :date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
