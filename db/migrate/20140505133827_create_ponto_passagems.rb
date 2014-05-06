class CreatePontoPassagems < ActiveRecord::Migration
  def change
    create_table :ponto_passagems do |t|
      t.belongs_to :rot
      t.belongs_to :ponto

      t.timestamps
    end
    add_index :ponto_passagems, :rot_id
    add_index :ponto_passagems, :ponto_id
  end
end
