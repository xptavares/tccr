json.array!(@itinerario_realizados) do |itinerario_realizado|
  json.extract! itinerario_realizado, :id, :latitudo, :longitude, :date
  json.url itinerario_realizado_url(itinerario_realizado, format: :json)
end
