# frozen_string_literal: true

class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string   :name
      t.integer  :kind
      t.string   :email

      t.timestamps
    end
  end
end
