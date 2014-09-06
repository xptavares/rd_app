class CreateApiConfigs < ActiveRecord::Migration
  def change
    create_table :api_configs do |t|
      t.string :username
      t.string :password
      t.string :security_token
      t.string :client_id
      t.stri :client_secret

      t.timestamps
    end
  end
end
