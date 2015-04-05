class CreateMaze < ActiveRecord::Migration
  def change
    create_table :mazes do |t|
      t.string :name
    end
    create_table :seg_tables do |t|
      t.belongs_to :maze, index: true
      t.integer :seg_start_x
      t.integer :seg_start_y
      t.integer :seg_end_x
      t.integer :seg_end_y
    end
  end
end
