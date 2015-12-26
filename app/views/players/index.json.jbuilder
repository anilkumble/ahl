json.array!(@players) do |player|
  json.extract! player, :id, :name, :age, :position, :goals, :team_id
  json.url player_url(player, format: :json)
end
