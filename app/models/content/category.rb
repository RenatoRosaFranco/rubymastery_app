# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_categories_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
module Content
  class Category < ApplicationRecord
    # Properties
    self.table_name  = 'categories'
    self.primary_key = 'id'

    # Relationships
    has_many :articles, class_name: 'Content::Article'
    belongs_to :user, class_name: 'User::User'

    # Validations
    validates_uniqueness_of :name
  end
end
