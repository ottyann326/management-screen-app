class RenameTypeColumnToRackets < ActiveRecord::Migration[5.2]
  def change
    rename_column :rackets, :type, :kind
  end
end
