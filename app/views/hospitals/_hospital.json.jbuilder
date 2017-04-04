json.extract! hospital, :id, :name, :address, :doctor, :department, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
