class CreateCrewArtworkLookups < ActiveRecord::Migration
  def change
    create_table :crew_artwork_lookups do |t|
    	t.belongs_to :crew
    	t.belongs_to :artwork

      t.timestamps null: false
    end
  end
end
