class CreateCarros < ActiveRecord::Migration[7.0]
  def change
    create_table :carros do |t|
      t.string :placa
      t.string :renavan
      t.string :chassi

      t.timestamps
    end
  end
end
