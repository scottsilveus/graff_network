require 'rails_helper'

RSpec.describe UserArtworkLookup, type: :model do
  it { should belong_to(:artwork)}
  it { should belong_to(:user)}
end
