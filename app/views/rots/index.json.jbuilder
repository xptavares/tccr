json.array!(@rots) do |rot|
  json.extract! rot, :id, :nome
  json.url rot_url(rot, format: :json)
end
