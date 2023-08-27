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
require 'rails_helper'

RSpec.describe Address, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
