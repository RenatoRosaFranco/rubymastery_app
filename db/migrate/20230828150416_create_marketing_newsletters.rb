# frozen_string_literal: true

class CreateMarketingNewsletters < ActiveRecord::Migration[7.0]
  def change
    create_table :newsletters do |t|
      t.string   :email

      t.timestamps
    end
  end
end
