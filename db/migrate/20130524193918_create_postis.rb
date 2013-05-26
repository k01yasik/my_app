class CreatePostis < ActiveRecord::Migration
  def change
    create_table :postis do |t|
      t.string :opsname
      t.string :opstype
      t.string :opssubm
      t.string :region
      t.string :autonom
      t.string :area
      t.string :city
      t.string :city_1
      t.datetime :actdate
      t.integer :indexold


    end
  end
end
