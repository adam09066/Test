class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :kor
      t.string :contact

      t.timestamps
    end
  end
end
