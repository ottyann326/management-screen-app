class CreateRackets < ActiveRecord::Migration[5.2]
  def change
    create_table :rackets do |t|
      t.string :name
      t.integer :price
      t.string :type
      t.timestamps
    end
  end
end
