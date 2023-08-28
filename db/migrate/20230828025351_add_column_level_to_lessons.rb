# frozen_string_literal: true

class AddColumnLevelToLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :level, :integer
  end
end
