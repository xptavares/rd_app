json.array!(@api_configs) do |api_config|
  json.extract! api_config, :id, :username, :password, :security_token, :client_id, :client_secret
  json.url api_config_url(api_config, format: :json)
end
