class UserFavoritedCrewLookup < ActiveRecord::Base
  belongs_to :crew
  belongs_to :user

  validates :crew_id, presence: true
  validates :user_id, presence: true
end
