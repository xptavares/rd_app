json.array!(@lead_helpers) do |lead_helper|
  json.extract! lead_helper, :id, :title, :phone, :company, :email,, :first_name, :last_name
  json.url lead_helper_url(lead_helper, format: :json)
end
