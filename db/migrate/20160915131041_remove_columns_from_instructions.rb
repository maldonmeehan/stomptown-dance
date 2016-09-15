class RemoveColumnsFromInstructions < ActiveRecord::Migration[5.0]
  def change
    remove_column(:instructions, :title, :string)
    remove_column(:instructions, :tune, :string)
    remove_column(:instructions, :bar_total, :integer)
    remove_column(:instructions, :dance_id, :integer)
    add_column(:instructions, :figure_id, :integer)
  end
end
