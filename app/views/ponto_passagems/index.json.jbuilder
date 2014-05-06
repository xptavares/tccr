json.array!(@ponto_passagems) do |ponto_passagem|
  json.extract! ponto_passagem, :id, :ponto
  json.url ponto_passagem_url(ponto_passagem, format: :json)
end
