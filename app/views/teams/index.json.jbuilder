json.array!(@teams) do |team|
  json.extract! team, :id, :nickname, :location, :team_number, :key, :images, :events
  json.url team_url(team, format: :json)
end
