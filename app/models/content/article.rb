# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  body       :text
#  slug       :string
#  tags       :string
#  thumbnail  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
module Content
  class Article < ApplicationRecord
    # Properties
    self.table_name  = 'articles'
    self.primary_key = 'id'

    # Relationships
    belongs_to :user, class_name: 'User::User'

    # Validations
    validates_uniqueness_of :title
  end
end
