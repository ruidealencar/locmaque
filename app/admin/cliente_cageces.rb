ActiveAdmin.register ClienteCagece do
  permit_params :nome, :cpf, :numero_do_cliente, :endereco

  index do
    column :nome
    column :cpf
    column :numero_do_cliente
    column :endereco

    actions
  end
  
end
