class CrewArtworkLookup < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :crew

  validates :artwork_id, presence: true
  validates :crew_id, presence: true
end
