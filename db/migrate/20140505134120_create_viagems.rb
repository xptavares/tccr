class CreateViagems < ActiveRecord::Migration
  def change
    create_table :viagems do |t|
      t.datetime :date
      t.belongs_to :rot	
      t.belongs_to :veiculo	
      t.references :itinerario_realizado, index: true

      t.timestamps
    end
    add_index :viagems, :rot_id
    add_index :viagems, :veiculo_id
  end
end
