json.array!(@viagems) do |viagem|
  json.extract! viagem, :id, :date, :nome
  json.url viagem_url(viagem, format: :json)
  json.veiculo viagem.veiculo, :id, :marca
  json.rot viagem.rot, :id, :nome
  json.ponto_passagems viagem.rot.ponto_passagems do |json, ponto_passagem|
    json.rot_ponto_passagem_id ponto_passagem.id
    json.ponto_passagems_ponto_nome ponto_passagem.ponto.nome
  end
  json.origem viagem.rot.origem.nome
  json.destino viagem.rot.destino.nome
end
