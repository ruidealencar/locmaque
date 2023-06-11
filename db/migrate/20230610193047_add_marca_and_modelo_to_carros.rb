class AddMarcaAndModeloToCarros < ActiveRecord::Migration[7.0]
  def change
    add_column :carros, :marca, :string
    add_column :carros, :modelo, :string
  end
end
