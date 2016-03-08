json.array!(@matches) do |match|
  json.extract! match, :id, :event_key, :comp_level, :number, :alliances, :score_breakdown, :videos, :time
  json.url match_url(match, format: :json)
end
