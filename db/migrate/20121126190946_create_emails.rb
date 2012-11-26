class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :url
      t.integer :address_id

      t.timestamps
    end
  end
end
