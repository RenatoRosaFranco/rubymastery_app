# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  birthdate  :date
#  gender     :integer
#  name       :string
#  phone      :string
#  picture    :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
module User
  class Profile < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Properties
    self.table_name = 'profiles'
    self.primary_key = 'id'

    # Enum
    enum gender: ['male', 'female']

    # Relationships
    belongs_to :user, class_name: 'User::User'
  end
end
