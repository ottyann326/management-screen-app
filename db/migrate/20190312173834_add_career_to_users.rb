class AddCareerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :career, :integer, after: :age
  end
end
