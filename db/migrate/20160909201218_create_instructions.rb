class CreateInstructions < ActiveRecord::Migration[5.0]
  def change
    create_table :instructions do |t|
      t.column :title, :string
      t.column :figure, :string
      t.column :tune, :string
      t.column :bar_total, :integer
      t.column :bars, :integer
      t.column :move, :string
      t.column :instruction, :text
      t.column :call, :string
      t.column :number, :integer
      t.column :dance_id, :integer

      t.timestamps
    end
  end
end
