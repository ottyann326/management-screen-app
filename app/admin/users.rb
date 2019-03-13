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

  show do |user|
    attributes_table(*user.class.columns.collect { |column| column.name.to_sym })
    panel '所持ラケット一覧' do
      table_for user.rackets do
        column :name
        column :price
        column :kind
        column :purchase_date
      end
    end
    active_admin_comments
  end
end
