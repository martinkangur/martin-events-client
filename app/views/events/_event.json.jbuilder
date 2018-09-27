json.extract! event, :id, :name, :short_description, :long_description, :price, :date, :location, :image, :created_at, :updated_at
json.url event_url(event, format: :json)
