json.array!(@eventos) do |evento|
  json.extract! evento, :nome, :local, :inicio, :termino
  json.url evento_url(evento, format: :json)
end
