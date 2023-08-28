# frozen_string_literal: true

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
module Course
  class Teacher < ApplicationRecord
    # Properties
    self.table_name  = 'teachers'
    self.primary_key = 'id'

    # Uploader
    has_one_attached :avatar
  end
end