require 'rails_helper'

RSpec.describe CrewArtworkLookup, type: :model do
  it { should belong_to(:artwork)}
  it { should belong_to(:crew)}
end
