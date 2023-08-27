# frozen_string_literal: true

class AddColumnCourseIdToSections < ActiveRecord::Migration[7.0]
  def change
    add_reference :sections, :course, null: false, foreign_key: true
  end
end
