class AddEventsToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :events, :text
  end
end
                     