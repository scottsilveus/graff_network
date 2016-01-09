class Artwork < ActiveRecord::Base
	has_many :user_artwork_lookups, dependent: :destroy
	has_many :users, :through => :user_artwork_lookups, dependent: :destroy
	has_many :crew_artwork_lookups, dependent: :destroy
	has_many :crews, :through => :crew_artwork_lookups, dependent: :destroy
	has_many :user_favorited_artwork_lookups, dependent: :destroy
	has_many :favorited_by, :through => :user_favorited_artwork_lookups, :source => :user, dependent: :destroy

	validates_associated :users, :user_artwork_lookups, :crews, :crew_artwork_lookups, :favorited_by, :user_favorited_artwork_lookups
end
