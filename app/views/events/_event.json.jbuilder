json.extract! event, :id, :name, :about, :cover, :created_at, :updated_at
json.url event_url(event, format: :json)
