# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Marketing::Newsletter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
