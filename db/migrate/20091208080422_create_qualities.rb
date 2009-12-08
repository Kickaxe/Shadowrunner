class CreateQualities < ActiveRecord::Migration
  def self.up
    create_table :qualities do |t|
      t.string :name
      t.integer :type
      t.text :description
      t.integer :build_point_cost

      t.timestamps
    end
  end

  def self.down
    drop_table :qualities
  end
end
