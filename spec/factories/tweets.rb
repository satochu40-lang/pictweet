# spec/factories/tweets.rb
FactoryBot.define do
  factory :tweet do
    text { Faker::Lorem.sentence }
    image { 'https://s.eximg.jp/exnews/feed/aichoo/aichoo_201503_1.jpg' }
    association :user
  end
end