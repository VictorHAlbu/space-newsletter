FactoryBot.define do
  factory :launch do
    provider { "MyString" }
    association :article
  end
end
