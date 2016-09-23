class AddDescriptionToCourses < ActiveRecord::Migration[5.0]
  def change
    change_table :courses do |t|
      t.text :description
    end
  end
end
