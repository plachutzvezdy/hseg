json.extract! artwork, :id, :name, :about, :cover, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
