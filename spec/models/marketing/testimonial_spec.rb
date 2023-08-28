# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  body       :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Marketing::Testimonial, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
