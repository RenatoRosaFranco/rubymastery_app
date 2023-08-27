# frozen_string_literal: true

# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  city         :string
#  complement   :string
#  neighborhood :string
#  number       :integer
#  state        :string
#  street       :string
#  zipcode      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_addresses_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Address < ApplicationRecord
  self.table_name  = 'addresses'
  self.primary_key = 'id'

  # Relationships
  belongs_to :user
end
