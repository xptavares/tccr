class Addrot < ActiveRecord::Migration
  def change
  	Rot.create nome: "Rota 1", origem: "florianopolis, sc", destino: "lages, sc"
  	Rot.create nome: "Rota 2", origem: "lages, sc", destino: "florianopolis, sc"
  	Rot.create nome: "Rota 3", origem: "chapeco, sc", destino: "florianopolis, sc"
  	Rot.create nome: "Rota 4", origem: "vacaria, rs", destino: "florianopolis, sc"
  	Rot.create nome: "Rota 5", origem: "criciuma, sc", destino: "lages, sc"
  	Rot.create nome: "Rota 6", origem: "lages, sc", destino: "chapeco, sc"
  	Rot.create nome: "Rota 7", origem: "torres, rs", destino: "lages, sc"
  	Rot.create nome: "Rota 8", origem: "lages, sc", destino: "florianopolis, sc"
  	Rot.create nome: "Rota 9", origem: "torres, rs", destino: "lages, sc"
  	Rot.create nome: "Rota 10", origem: "torres, rs", destino: "lages, sc"
  end
end
