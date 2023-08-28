# frozen_string_literal: true

class AddColumnDiscardedAtToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :discarded_at, :datetime
  end
end
