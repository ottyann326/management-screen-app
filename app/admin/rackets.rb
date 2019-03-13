ActiveAdmin.register Racket do
  permit_params :name, :price, :kind, :purchase_date, :user_id

  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :kind
      f.input :purchase_date, as: :datepicker
      f.input :user
    end
    f.actions
  end
end
