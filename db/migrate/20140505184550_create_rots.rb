class CreateRots < ActiveRecord::Migration
  def change
    create_table :rots do |t|
      t.string :nome
      t.references :viagem, index: true
      t.references :ponto_passagem, index: true
      t.string :origem
      t.string :destino

      t.timestamps
    end
  end
end
