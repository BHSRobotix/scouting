class Fixname < ActiveRecord::Migration
  def change
  	rename_column :users, :name, :username
  end
end
