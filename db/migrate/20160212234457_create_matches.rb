class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.string :event_key
    	t.string :comp_level
    	t.integer :number
    	t.text :alliances
    	t.text :score_breakdown
    	t.text :videos
    	t.timestamp :time
      t.timestamps null: false
    end
  end
end
