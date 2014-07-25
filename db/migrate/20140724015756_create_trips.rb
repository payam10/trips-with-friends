class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.string :where
    	t.string :when  
    	t.integer :price_per_person
    	t.belongs_to :user

      t.timestamps
    end
  end
end
