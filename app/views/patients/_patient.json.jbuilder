json.extract! patient, :id, :name, :dob, :address, :phone, :date, :infection, :injury, :observations, :created_at, :updated_at
json.url patient_url(patient, format: :json)
