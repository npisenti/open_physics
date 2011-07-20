class CreateSolutions < ActiveRecord::Migration
  def self.up
    create_table :solutions do |t|
      t.text :contents
      t.integer :problem_id

      t.timestamps
    end
  end

  def self.down
    drop_table :solutions
  end
end
