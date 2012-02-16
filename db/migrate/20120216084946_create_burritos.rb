class CreateBurritos < ActiveRecord::Migration
  def change
    create_table :burritos do |t|
      t.string :name
      t.text :description
      t.string :meat
      t.integer :rating, :default => 0

      t.timestamps
    end
  end
end
