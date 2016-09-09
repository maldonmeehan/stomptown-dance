class CreateDances < ActiveRecord::Migration[5.0]
  def change
    create_table :dances do |t|
        t.column :name, :string
        t.column :county, :string
        t.column :style, :string
        t.column :note, :string

        t.timestamps
    end
  end
end
