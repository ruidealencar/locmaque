ActiveAdmin.register Carro do
  permit_params :marca, :modelo, :placa, :renavan, :chassi

  index do
    column :marca
    column :modelo
    column :placa
    column :renavan
    column :chassi

    actions
  end

  
end
