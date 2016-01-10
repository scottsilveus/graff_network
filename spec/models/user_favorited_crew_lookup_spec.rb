require 'rails_helper'

RSpec.describe UserFavoritedCrewLookup, type: :model do
  it { should belong_to(:crew)}
  it { should belong_to(:user)}
end
