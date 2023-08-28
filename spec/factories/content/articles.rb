# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  body        :text
#  slug        :string
#  tags        :string
#  thumbnail   :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_articles_on_category_id  (category_id)
#  index_articles_on_user_id      (user_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#  user_id      (user_id => users.id)
#
require 'open-uri'

FactoryBot.define do
  factory :article, class: Content::Article do
    title { FFaker::Book.title }
    body { FFaker::Lorem.paragraphs(rand(9..12)).join }
    tags { FFaker::Tweet.tags }

    user { association :user }

    after(:create) do |article, _evaluator|
      article.thumbnail.attach(
        io: open(FFaker::Image.url),
        filename: "#{SecureRandom.urlsafe_base64(8)}.jpeg",
        content_type: 'image/jpeg'
      )
    end
  end
end
