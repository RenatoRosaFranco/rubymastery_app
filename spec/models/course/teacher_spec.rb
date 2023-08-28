# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  avatar     :string
#  bio        :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Course::Teacher, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
