# frozen_string_literal: true

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
module Company
  class Social < ApplicationRecord
    # Properties
    self.table_name  = 'socials'
    self.primary_key = 'id'
  end
end
