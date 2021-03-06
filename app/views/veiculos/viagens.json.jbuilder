json.array!(@viagems) do |viagem|
  json.extract! viagem, :id, :date, :nome
  json.url viagem_url(viagem, format: :json)
  json.veiculo viagem.veiculo, :id, :marca
  json.rota do
     json.id_rota  viagem.rot.id
     json.nome_rota viagem.rot.nome
     json.origem viagem.rot.origem
     json.destino viagem.rot.destino
     json.ponto_passagems viagem.rot.ponto_passagems do |json, ponto_passagem|
       json.ponto_passagems_id ponto_passagem.id
       json.ponto_passagems_nome ponto_passagem.ponto
     end
  end
end
