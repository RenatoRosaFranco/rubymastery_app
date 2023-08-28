# frozen_string_literal: true

class AddColumnIconToSocials < ActiveRecord::Migration[7.0]
  def change
    add_column :socials, :icon, :string
  end
end
