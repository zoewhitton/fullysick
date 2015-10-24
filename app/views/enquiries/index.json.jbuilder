json.array!(@enquiries) do |enquiry|
  json.extract! enquiry, :id, :email, :name, :message, :phone, :enquiry_type
  json.url enquiry_url(enquiry, format: :json)
end
