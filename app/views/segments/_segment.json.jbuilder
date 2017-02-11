json.extract! segment, :id, :name, :description, :size, :growth, :belongs_to, :created_at, :updated_at
json.url segment_url(segment, format: :json)