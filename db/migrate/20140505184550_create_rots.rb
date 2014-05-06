class CreateRots < ActiveRecord::Migration
  def change
    create_table :rots do |t|
      t.string :nome
      t.references :viagem, index: true
      t.references :ponto_passagem, index: true
      t.belongs_to :origem	
      t.belongs_to :destino	

      t.timestamps
    end
    add_index :rots, :origem_id
    add_index :rots, :destino_id
  end
end
