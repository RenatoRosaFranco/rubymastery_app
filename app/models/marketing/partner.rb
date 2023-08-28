# frozen_string_literal: true

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
module Marketing
  class Partner < ApplicationRecord
    # Properties
    self.table_name  = 'partners'
    self.primary_key = 'id'
    
    # Enum
    enum kind: ['partner', 'sponsor', 'afiliated', 'influencer']
  
    # Validations
    validates_uniqueness_of :email, scope: [:kind]
  end
end
