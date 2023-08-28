# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  body         :text
#  discarded_at :datetime
#  slug         :string
#  tags         :string
#  thumbnail    :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :integer          not null
#  user_id      :integer          not null
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
module Content
  class Article < ApplicationRecord
    include Discard::Model

    extend FriendlyId
    friendly_id :title, use: [:slugged]

    # Properties
    self.table_name  = 'articles'
    self.primary_key = 'id'

    # Relationships
    belongs_to :category, class_name: 'Content::Category'
    belongs_to :user, class_name: 'User::User'

    # Validations
    validates_uniqueness_of :title
  end
end
