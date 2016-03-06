json.array!(@photos) do |photo|
  json.extract! photo, :id, :match_id
  json.photo image_path(photo.photo_url)
 # json.url photo_url(photo, format: :json)
end
