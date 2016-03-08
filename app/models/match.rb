class Match < ActiveRecord::Base
	serialize :alliances
	serialize :score_breakdown
	serialize :videos
end
