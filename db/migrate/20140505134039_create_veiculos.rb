class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :marca
      t.string :placa
      t.string :tipo
      t.references :viagem, index: true

      t.timestamps
    end
  end
end
