class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.integer :shop_id
      t.string :name
      t.string :contact

      t.timestamps
    end
  end
end
