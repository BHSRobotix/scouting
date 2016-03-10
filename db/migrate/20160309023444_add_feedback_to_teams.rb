class AddFeedbackToTeams < ActiveRecord::Migration
  def change
  	add_column :teams, :driver_feedback, :text
  	add_column :teams, :driverDidFoul, :boolean
  end
end
