json.array!(@live_scores) do |live_score|
  json.extract! live_score, :id
  json.url live_score_url(live_score, format: :json)
end
