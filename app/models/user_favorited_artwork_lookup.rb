class UserFavoritedArtworkLookup < ActiveRecord::Base
  belongs_to :user
  belongs_to :artwork

  validates :artwork_id, presence: true
  validates :user_id, presence: true
end
