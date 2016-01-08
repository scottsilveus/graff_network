class Crew < ActiveRecord::Base
	has_many :user_crew_lookups, dependent: :destroy
	has_many :users, :through => :user_crew_lookups, dependent: :destroy
	has_many :crew_artwork_lookups, dependent: :destroy
	has_many :artworks, :through => :crew_artwork_lookups, dependent: :destroy

	validates_associated :users, :user_crew_lookups, :crew_artwork_lookups, :artworks
end
