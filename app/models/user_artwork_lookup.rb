class UserArtworkLookup < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :user

  validates :artwork_id, presence: true
  validates :user_id, presence: true
end
