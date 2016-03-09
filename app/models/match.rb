class Match < ActiveRecord::Base
	has_many :performances
	
	serialize :alliances
	serialize :score_breakdown
	serialize :videos

end
