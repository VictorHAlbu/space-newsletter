FactoryBot.define do
  factory :event do
    provider { "MyString" }
    association :article
  end
end
