require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:artworks)}
  it { should have_many(:crews)}
  it { should have_many(:favorited_artworks)}
  it { should have_many(:favorited_crews)}
  it { should have_many(:followee_follows)}
  it { should have_many(:followees)}
  it { should have_many(:follower_follows)}
  it { should have_many(:followers)}
  it { should have_many(:user_artwork_lookups)}
  it { should have_many(:user_crew_lookups)}
  it { should have_many(:user_favorited_artwork_lookups)}
  it { should have_many(:user_favorited_crew_lookups)}
end
