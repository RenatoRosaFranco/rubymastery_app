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
require 'rails_helper'

RSpec.describe Content::Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
