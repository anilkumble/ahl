json.array!(@teams) do |team|
    json.extract! team, :id, :name, :motto, :points
    json.captain team.team_captain
    json.team_url team_url(team, format: :json)
end
