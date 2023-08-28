# frozen_string_literal: true

class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string   :avatar
      t.string   :name
      t.text     :bio

      t.timestamps
    end
  end
end
