class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :nauto
      t.references :owner
      t.timestamps
    end
    add_index :cars, :owner_id
  end
end
