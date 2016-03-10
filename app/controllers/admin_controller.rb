require_relative './api.rb'


class AdminController < ApplicationController
	def index
	end

	def test
	end

	def loadTeams
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


	def loadMatches
		api = TBA_API.new("frc2876", "scouting", "v2")

  		@matches = api.get_event_matches('2016nhgrs')
		@matches.each do |match|
			if match["comp_level"] == "qm"
				#Create the match in the database
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