class CreateUserFavoritedArtworkLookups < ActiveRecord::Migration
  def change
    create_table :user_favorited_artwork_lookups do |t|
    	t.belongs_to :user
    	t.belongs_to :artwork

      t.timestamps null: false
    end
  end
end
