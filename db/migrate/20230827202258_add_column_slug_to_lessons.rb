class AddColumnSlugToLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :slug, :string
  end
end
