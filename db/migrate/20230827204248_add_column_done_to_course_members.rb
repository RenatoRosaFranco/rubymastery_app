# frozen_string_literal: true

class AddColumnDoneToCourseMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :course_members, :done, :boolean, default: false
  end
end
