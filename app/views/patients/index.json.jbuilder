json.array!(@patients) do |patient|
  json.extract! patient, :id, :user_id, :first_name, :last_name, :phone, :medicare_number, :street_address, :suburb, :state, :postcode, :latitude, :longitude
  json.url patient_url(patient, format: :json)
end
