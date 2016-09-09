class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :content, :text
      t.column :video, :string
      t.column :callers_notes, :string
      t.column :number, :integer
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
