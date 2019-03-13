class AddPurchaseDateToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :purchase_date, :date, after: :kind
  end
end
