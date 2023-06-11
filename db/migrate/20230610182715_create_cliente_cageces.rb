class CreateClienteCageces < ActiveRecord::Migration[7.0]
  def change
    create_table :cliente_cageces do |t|
      t.string :nome
      t.string :cpf
      t.string :numero_do_cliente
      t.string :endereco

      t.timestamps
    end
  end
end
