json.extract! client, :id, :name, :story, :location, :ksf, :belongs_to, :created_at, :updated_at
json.url client_url(client, format: :json)