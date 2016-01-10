require 'rails_helper'

RSpec.describe UserFaveUserLookup, type: :model do
  it { should belong_to (:followee)}
  it { should belong_to (:follower)}
end
