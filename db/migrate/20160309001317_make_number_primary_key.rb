class MakeNumberPrimaryKey < ActiveRecord::Migration
  def change
  	remove_column :teams, :id
  	change_column :teams, :team_number, :primary_key
  end
end
