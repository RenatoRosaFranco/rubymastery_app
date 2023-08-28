# frozen_string_literal: true

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
module Marketing
  class Testimonial < ApplicationRecord
    # Properties
    self.table_name  = 'testimonials'
    self.primary_key = 'id'
  end
end
