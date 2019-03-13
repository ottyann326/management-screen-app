ActiveAdmin.register User do
  permit_params :name, :age, :career, :senkei

  index do
    selectable_column
    id_column
    column :name
    column :age
    column :career
    column :senkei
    column 'ラケット所持数' do |user|
      user.rackets.count
    end
    column :created_at
    column :updated_at
    actions
  end
end
