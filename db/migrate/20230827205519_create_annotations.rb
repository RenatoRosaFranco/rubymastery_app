class CreateAnnotations < ActiveRecord::Migration[7.0]
  def change
    create_table :annotations do |t|
      t.references :course, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
