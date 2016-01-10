require 'rails_helper'

RSpec.describe Crew, type: :model do
  it { should have_many(:artworks)}
  it { should have_many(:crew_artwork_lookups)}
  it { should have_many(:favorited_by)}
  it { should have_many(:user_crew_lookups)}
  it { should have_many(:user_favorited_crew_lookups)}
  it { should have_many(:users)}
end
