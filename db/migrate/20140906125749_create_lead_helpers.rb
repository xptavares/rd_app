class CreateLeadHelpers < ActiveRecord::Migration
  def change
    create_table :lead_helpers do |t|
      t.string :title
      t.string :phone
      t.string :company
      t.string :email,
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
