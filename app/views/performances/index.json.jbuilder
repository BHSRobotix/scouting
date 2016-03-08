json.array!(@performances) do |performance|
  json.extract! performance, :id, :team_id, :match_id, :auto_reach, :auto_cross, :auto_defenses_crossed, :auto_shoot, :auto_shoot_high, :auto_shoot_high_successful, :auto_shoot_low, :auto_shoot_low_successful, :tele_defenses_crossed, :tele_time_taken, :tele_high_missed, :tele_high_scored, :tele_low_missed, :tele_low_scored, :challenged, :scaled
  json.url performance_url(performance, format: :json)
end
