# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table   :articles do |t|
      t.string     :thumbnail
      t.string     :title
      t.text       :body
      t.string     :slug
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
