# frozen_string_literal: true

class CreateMarketingTestimonials < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|
      t.string   :name
      t.text     :body

      t.timestamps
    end
  end
end
