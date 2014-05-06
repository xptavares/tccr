class CreatePontos < ActiveRecord::Migration
  def change
    create_table :pontos do |t|
      t.string :nome
      t.references :ponto_passagem, index: true

      t.timestamps
    end
  end
end
