# frozen_string_literal: true

class AddColumnSlugToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :slug, :string
  end
end
