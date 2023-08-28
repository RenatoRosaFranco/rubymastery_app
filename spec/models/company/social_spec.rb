# == Schema Information
#
# Table name: socials
#
#  id         :integer          not null, primary key
#  icon       :string
#  link       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Company::Social, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
