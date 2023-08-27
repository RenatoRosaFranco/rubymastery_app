# frozen_string_literal: true

class CreateCourseMembers < ActiveRecord::Migration[7.0]
  def change
    create_table   :course_members do |t|
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
