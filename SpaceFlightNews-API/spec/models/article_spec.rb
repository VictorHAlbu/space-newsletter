require 'rails_helper'

RSpec.describe Article, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:url) }
  it { is_expected.to validate_presence_of(:imageUrl) }
  it { is_expected.to validate_presence_of(:newsSite) }
  it { is_expected.to validate_presence_of(:summary) }
  it { is_expected.to validate_uniqueness_of(:url) }

  it { should have_many(:launches) }
  it { should have_many(:events) }
end
