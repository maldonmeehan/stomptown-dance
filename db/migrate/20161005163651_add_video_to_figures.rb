class AddVideoToFigures < ActiveRecord::Migration[5.0]
  def change
    change_table :figures do |t|
      t.string :video
    end
  end
end
