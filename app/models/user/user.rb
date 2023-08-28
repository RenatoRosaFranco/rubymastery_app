# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  admin                  :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
module User
  class User < ApplicationRecord
    # Properties
    self.table_name  = 'users'
    self.primary_key = 'id'

    # Relationships
    has_one :address, class_name: 'User::Address'
    has_one :profile, class_name: 'User::Profile'

    has_many :saved_lessons, class_name: 'User::SavedLesson'
    has_many :certificates,  class_name: 'User::Certificates'
    has_many :annotations,   class_name: 'User::Annotation'
    has_many :courses,       class_name: 'Course::Course'

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  end
end
