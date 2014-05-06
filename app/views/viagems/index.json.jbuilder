json.array!(@viagems) do |viagem|
  json.extract! viagem, :id, :date
  json.url viagem_url(viagem, format: :json)
  json.veiculo viagem.veiculo, :id, :marca
  json.rot viagem.rot, :id, :nome
  json.ponto_passagems viagem.rot.ponto_passagems do |json, ponto_passagem|
    json.rot_ponto_passagem_id ponto_passagem.id
  end
end
