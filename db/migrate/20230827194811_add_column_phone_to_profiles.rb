# frozen_string_literal: true

class AddColumnPhoneToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :phone, :string
  end
end
