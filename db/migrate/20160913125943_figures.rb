class Figures < ActiveRecord::Migration[5.0]
  def change
    create_table :figures do |t|
      t.column :title, :string
      t.column :figure, :string
      t.column :tune, :string
      t.column :bar_total, :integer
      t.column :number, :integer
      t.column :dance_id, :integer

      t.timestamps
    end
  end
end
