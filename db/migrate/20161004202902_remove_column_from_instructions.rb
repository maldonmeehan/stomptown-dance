class RemoveColumnFromInstructions < ActiveRecord::Migration[5.0]
  def change
    remove_column(:instructions, :figure_id, :integer)

  end
end
