ActiveAdmin.register User do
  permit_params :name, :age, :career, :senkei
end
