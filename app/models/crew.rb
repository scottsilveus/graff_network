class Crew < ActiveRecord::Base
	has_many :user_crew_lookups, dependent: :destroy
	has_many :users, :through => :user_crew_lookups, dependent: :destroy
	has_many :crew_artwork_lookups, dependent: :destroy
	has_many :artworks, :through => :crew_artwork_lookups, dependent: :destroy
	has_many :user_favorited_crew_lookups, dependent: :destroy
	has_many :favorited_by, :through => :user_favorited_crew_lookups, :source => :user, dependent: :destroy


	validates_associated :users, :user_crew_lookups, :crew_artwork_lookups, :artworks, :favorited_by, :user_favorited_crew_lookups
end
