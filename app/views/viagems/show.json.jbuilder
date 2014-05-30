json.extract! @viagem, :id, :date, :created_at, :updated_at
json.origem @viagem.rot.origem
json.destino @viagem.rot.destino
json.ponto_passagems @viagem.rot.ponto_passagems do |json, ponto_passagem|
 json.ponto_passagems_ponto_nome ponto_passagem.ponto
end

