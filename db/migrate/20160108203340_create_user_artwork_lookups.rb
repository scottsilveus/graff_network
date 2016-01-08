class CreateUserArtworkLookups < ActiveRecord::Migration
  def change
    create_table :user_artwork_lookups do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :artwork, index: true

      t.timestamps null: false
    end
  end
end
