json.extract! @rot, :id, :nome, :created_at, :updated_at
json.origem @rot.origem.nome
json.destino @rot.destino.nome
json.ponto_passagems @rot.ponto_passagems do |json, ponto_passagem|
 json.ponto_passagems_ponto_nome ponto_passagem.ponto.nome
end