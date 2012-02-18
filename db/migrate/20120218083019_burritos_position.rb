class BurritosPosition < ActiveRecord::Migration
  def up
    add_column :burritos, :position, :integer, :default => 0
  end

  def down
    remove_column :burritos, :position
  end
end
