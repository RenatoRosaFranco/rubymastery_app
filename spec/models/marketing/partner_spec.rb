# == Schema Information
#
# Table name: partners
#
#  id         :integer          not null, primary key
#  email      :string
#  kind       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Marketing::Partner, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
