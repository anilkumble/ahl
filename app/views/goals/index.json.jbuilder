json.array!(@goals) do |goal|
  json.extract! goal, :id, :player_id
end
