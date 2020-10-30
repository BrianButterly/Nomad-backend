class CreateHosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.integer :rating

      t.timestamps
    end
  end
end
