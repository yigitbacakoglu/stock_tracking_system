class CreateTransferRequests < ActiveRecord::Migration
  def change
    create_table :transfer_requests do |t|
      t.integer :transfer_id
      t.integer :count
      t.string :state

      t.timestamps
    end
  end
end
