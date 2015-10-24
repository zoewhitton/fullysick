json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :title, :user_id, :first_name, :last_name, :post_nominals, :bio, :photo
  json.url doctor_url(doctor, format: :json)
end
