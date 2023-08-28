# frozen_string_literal: true

class AddColumnDiscardedAtToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :discarded_at, :datetime
  end
end
