class CreateItinerarioRealizados < ActiveRecord::Migration
  def change
    create_table :itinerario_realizados do |t|
      t.float :latitude
      t.float :longitude
      t.datetime :date
      t.belongs_to :viagem	

      t.timestamps
    end
    add_index :itinerario_realizados, :viagem_id
  end
end
