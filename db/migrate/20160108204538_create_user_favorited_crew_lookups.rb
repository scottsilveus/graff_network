class CreateUserFavoritedCrewLookups < ActiveRecord::Migration
  def change
    create_table :user_favorited_crew_lookups do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :crew, index: true

      t.timestamps null: false
    end
  end
end
