json.array!(@pontos) do |ponto|
  json.extract! ponto, :id, :nome
  json.url ponto_url(ponto, format: :json)
end
