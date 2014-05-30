class CreatePontoPassagems < ActiveRecord::Migration
  def change
    create_table :ponto_passagems do |t|
      t.belongs_to :rot
      t.string :ponto

      t.timestamps
    end
    add_index :ponto_passagems, :rot_id
  end
end
