FactoryBot.define do
  factory :comment do
    text { "MyText" }
    user { nil }
    tweet { nil }
  end
end
