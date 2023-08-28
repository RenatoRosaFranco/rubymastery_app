# frozen_string_literal: true

# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Marketing
  class Newsletter < ApplicationRecord
    # Properties
    self.table_name  = 'newsletters'
    self.primary_key = 'id'

    # validations
    validates_uniqueness_of :email
  end
end
