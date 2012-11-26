class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :from_id
      t.string :from_type
      t.integer :to_id
      t.string :to_type
      t.decimal :distance
      t.integer :duration

      t.timestamps
    end
  end
end
