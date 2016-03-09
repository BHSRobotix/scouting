class MakeNumberPrimaryKeyMatches < ActiveRecord::Migration
  def change
  	remove_column :matches, :id
  	change_column :matches, :number, :primary_key
  end
end
