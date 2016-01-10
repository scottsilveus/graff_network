class Crew < ActiveRecord::Base
  has_many :user_crew_lookups
  has_many :users, through: :user_crew_lookups, dependent: :destroy
  has_many :crew_artwork_lookups
  has_many :artworks, through: :crew_artwork_lookups, dependent: :destroy
  has_many :user_favorited_crew_lookups
  has_many :favorited_by, through: :user_favorited_crew_lookups, source: :user, dependent: :destroy

	validates_associated :users, :user_crew_lookups, :crew_artwork_lookups, :artworks, :favorited_by, :user_favorited_crew_lookups
  #need to add validation for email =>sync with devise?
  validates :name, length:{maximum: 50}
  validates :summary, length:{maximum: 1000}
  validates :city, length: {maximum: 100}
  validates :state, length: {maximum: 100}
  validates :country, length: {maximum: 100}
end
