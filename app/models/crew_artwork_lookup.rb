class CrewArtworkLookup < ActiveRecord::Base
  belongs_to :crew
  belongs_to :artwork

  validates :crew_id, presence: true
  validates :artwork_id, presence: true
end
