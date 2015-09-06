json.array!(@teams) do |team|
  json.extract! team, :id, :name, :motto, :points
  json.url team_url(team, format: :json)
end
