class Addrot < ActiveRecord::Migration
  def change
  	Rot.create nome: "Rota 1", origem_id: 1, destino_id: 2
  	Rot.create nome: "Rota 2", origem_id: 2, destino_id: 1
  	Rot.create nome: "Rota 3", origem_id: 3, destino_id: 1
  	Rot.create nome: "Rota 4", origem_id: 4, destino_id: 1
  	Rot.create nome: "Rota 5", origem_id: 5, destino_id: 2
  	Rot.create nome: "Rota 6", origem_id: 6, destino_id: 2
  	Rot.create nome: "Rota 7", origem_id: 7, destino_id: 2
  	Rot.create nome: "Rota 8", origem_id: 8, destino_id: 2
  	Rot.create nome: "Rota 9", origem_id: 9, destino_id: 2
  	Rot.create nome: "Rota 10", origem_id: 10, destino_id: 2
  end
end
