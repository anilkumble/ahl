json.array!(@photos) do |photo|
  json.extract! photo, :id, :match_id, :photo_url
  json.url photo_url(photo, format: :json)
end
