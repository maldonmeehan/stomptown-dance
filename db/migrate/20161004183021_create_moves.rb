class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
    t.integer :figure_id
    t.integer :instruction_id
    t.integer :order
    
    t.timestamps
    end
  end
end
