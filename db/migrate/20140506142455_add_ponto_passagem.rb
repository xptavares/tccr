class AddPontoPassagem < ActiveRecord::Migration
  def change
      PontoPassagem.create rot_id: 1, ponto: "chapeco, sc"
      PontoPassagem.create rot_id: 1, ponto: "criciuma, sc"

      PontoPassagem.create rot_id: 2, ponto: "chapeco, sc"
      PontoPassagem.create rot_id: 2, ponto: "criciuma, sc"

      PontoPassagem.create rot_id: 3, ponto: "lages, sc"
      PontoPassagem.create rot_id: 3, ponto: "criciuma, sc"

      PontoPassagem.create rot_id: 4, ponto: "lages, sc"
      PontoPassagem.create rot_id: 4, ponto: "chapeco, sc"
      PontoPassagem.create rot_id: 4, ponto: "criciuma, sc"

      PontoPassagem.create rot_id: 10, ponto: "florianopolis, sc"

      PontoPassagem.create rot_id: 7, ponto: "florianopolis, sc"
      PontoPassagem.create rot_id: 7, ponto: "chapeco, sc"
      PontoPassagem.create rot_id: 7, ponto: "criciuma, sc"

  end
end