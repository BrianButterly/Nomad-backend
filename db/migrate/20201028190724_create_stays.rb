class CreateStays < ActiveRecord::Migration[6.0]
  def change
    create_table :stays do |t|
      t.integer :user_id
      t.integer :host_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
