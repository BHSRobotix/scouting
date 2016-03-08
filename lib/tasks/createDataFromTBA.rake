#This code pulls data from TBA
# This will not override anything but just create more rows
# Not sure how useful loadMatches will be
require_relative './api.rb'
require 'json'

namespace :createDataFromTBA do
  
  task loadTeams: :environment do
  	#Rake.application.rake_require 'api.rb'
  	
  	api = TBA_API.new("frc2876", "scouting", "v2")

  	@apiteams = api.get_event_teams('2016nhgrs')

	@apiteams.each do |team|
		newTeam = Team.new();
		newTeam.nickname = team["nickname"]
		newTeam.location = team["location"]
		newTeam.team_number = team["team_number"]
		newTeam.key = team["key"]
		newTeam.save
	end
  end

  task loadMatches: :environment do
  	api = TBA_API.new("frc2876", "scouting", "v2")

  	@matches = api.get_event_matches('2016nhgrs')

	@matches.each do |match|
		if match["comp_level"] == "qm"
			newMatch = Match.new();
			newMatch.event_key = match["key"]
			newMatch.comp_level = match["comp_level"]
			newMatch.number = match["match_number"]
			newMatch.alliances = match["alliances"]
			newMatch.score_breakdown = match["score_breakdown"]
			newMatch.videos = match["videos"]
			newMatch.time = Time.at(match["time"]).to_datetime
			newMatch.save
		end
	end
   end
end