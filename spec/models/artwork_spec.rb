require 'rails_helper'

RSpec.describe Artwork, type: :model do
  it { should have_many(:crew_artwork_lookups)}
  it { should have_many(:crews)}
  it { should have_many(:favorited_by)}
  it { should have_many(:user_artwork_lookups)}
  it { should have_many(:user_favorited_artwork_lookups)}
  it { should have_many(:users)}

end
