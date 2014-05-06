json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :marca, :placa, :tipo
  json.url veiculo_url(veiculo, format: :json)
end
