class CreateProblemTags < ActiveRecord::Migration
  def self.up
    create_table :problem_tags do |t|
      t.integer :problem_id
      t.integer :tag_id

      t.timestamps
    end
    add_index :problem_tags, :problem_id
    add_index :problem_tags, :tag_id
    add_index :problem_tags, [:problem_id, :tag_id], :unique => true
  end

  def self.down
    drop_table :problem_tags
    remove_index :problem_tags, :problem_id
    remove_index :problem_tags, :tag_id
    remove_index :problem_tags, [:problem_id, :tag_id], :unique => true
  end
end
