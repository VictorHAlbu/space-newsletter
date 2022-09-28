FactoryBot.define do
  factory :article do
    featured { [false, true].sample }
    title { Faker::Space.star }
    sequence(:url) { |n| "url#{n}" }
    sequence(:imageUrl) { |n| "imageUrl#{n}" }
    newsSite { Faker::Space.company }
    summary { Faker::Space.agency }
  end
end
