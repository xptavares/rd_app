class ApiConfig < ActiveRecord::Base
  validates :username, :password, :security_token, :client_id, :client_secret, :presence => true
end
