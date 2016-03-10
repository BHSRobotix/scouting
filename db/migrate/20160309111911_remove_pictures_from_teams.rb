class RemovePicturesFromTeams < ActiveRecord::Migration
  def change
  	remove_column :teams, :pictures, :text
  end
end
