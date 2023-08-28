# frozen_string_literal: true

class AddColumnTagsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :tags, :string
  end
end
