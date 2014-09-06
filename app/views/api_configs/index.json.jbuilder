json.array!(@api_configs) do |api_config|
  json.extract! api_config, :id, :username
  json.url api_config_url(api_config, format: :json)
end
