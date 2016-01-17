json.array!(@reports) do |report|
  json.extract! report, :id, :article
  json.url report_url(report, format: :json)
end
