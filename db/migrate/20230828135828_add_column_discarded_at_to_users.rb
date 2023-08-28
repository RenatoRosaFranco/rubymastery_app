# frozen_string_literal: true

class AddColumnDiscardedAtToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :discarded_at, :datetime
  end
end
