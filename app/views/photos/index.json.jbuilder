json.array!(@photos) do |photo|
  json.extract! photo, :id, :match_id
  json.photo image_path(photo.image)
 # json.url photo_url(photo, format: :json)
end
