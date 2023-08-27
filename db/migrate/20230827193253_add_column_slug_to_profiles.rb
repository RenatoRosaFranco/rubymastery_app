class AddColumnSlugToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :slug, :string
  end
end
