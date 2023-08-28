# frozen_string_literal: true

class CreateCertificates < ActiveRecord::Migration[7.0]
  def change
    create_table   :certificates do |t|
      t.date       :completion_date
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
