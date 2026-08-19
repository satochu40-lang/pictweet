# spec/factories/tweets.rb の例
FactoryBot.define do
  factory :tweet do
    text { Faker::Lorem.sentence }
    image { 'https://s3-ap-northeast-1.amazonaws.com/mercarimaster/uploads/captured_image/content/13/test_image.png' }
    association :user  # ← これが必要です！
  end
end