json.extract! customer, :id, :last, :first, :address, :city, :state, :country, :zip, :RegistrationID, :InquiryID, :AccountID, :created_at, :updated_at
json.url customer_url(customer, format: :json)
