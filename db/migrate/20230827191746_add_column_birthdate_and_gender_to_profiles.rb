class AddColumnBirthdateAndGenderToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :birthdate, :date
    add_column :profiles, :gender, :integer
  end
end
