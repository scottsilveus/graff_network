class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
    	t.string :picture
    	t.string :name
    	t.string :artist
    	t.string :description
    	t.string :gps_location
    	t.string :address
    	t.string :state
    	t.string :city
    	t.string :country

      t.timestamps null: false
    end
  end
end
