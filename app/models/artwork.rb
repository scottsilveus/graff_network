class Artwork < ActiveRecord::Base
  has_many :crew_artwork_lookups
  has_many :crews, through: :crew_artwork_lookups, dependent: :destroy
  has_many :favorited_by, through: :user_favorited_artwork_lookups, source: :user, dependent: :destroy
  has_many :user_artwork_lookups
  has_many :user_favorited_artwork_lookups
  has_many :users, through: :user_artwork_lookups, dependent: :destroy

  #picture validation
  validates :artist, length:{maximum: 50}
  validates :description, length:{maximum: 1000}
  validates :name, length:{maximum: 50}
  #GPS validation
  validates :address, length: {maximum: 150}
  validates :city, length: {maximum: 100}
  validates :country, length: {maximum: 100}
  validates :state, length: {maximum: 100}

  validates_associated :crews, :crew_artwork_lookups, :favorited_by, :user_artwork_lookups,
    :user_favorited_artwork_lookups, :users
end