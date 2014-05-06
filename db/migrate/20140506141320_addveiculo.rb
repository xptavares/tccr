class Addveiculo < ActiveRecord::Migration
  def change
  	Veiculo.create marca: "V1", placa: "V1",tipo: "V1"
  	Veiculo.create marca: "V2", placa: "V2",tipo: "V2"
  	Veiculo.create marca: "V3", placa: "V3",tipo: "V3"
  end
end
