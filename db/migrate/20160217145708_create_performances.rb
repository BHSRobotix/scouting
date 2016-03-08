class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
    	t.belongs_to :team, index: true
    	t.belongs_to :match, index: true

    	t.boolean :auto_reach
    	t.boolean :auto_cross
    	t.text :auto_defenses_crossed

    	t.boolean :auto_shoot
    	t.boolean :auto_shoot_high
    	t.boolean :auto_shoot_high_successful
    	t.boolean :auto_shoot_low
    	t.boolean :auto_shoot_low_successful

    	t.text :tele_defenses_crossed
    	t.string :tele_time_taken
    	t.integer :tele_high_missed
    	t.integer :tele_high_scored
    	t.integer :tele_low_missed
    	t.integer :tele_low_scored

    	t.boolean :challenged
    	t.boolean :scaled

      	t.timestamps null: false
    end
  end
end
