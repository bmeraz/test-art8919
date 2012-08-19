class CreateDimensions < ActiveRecord::Migration
  def self.up
    create_table :dimensions do |t|
      t.integer :artifact_id
      t.string :dim_type
      t.string :dim_value

      t.timestamps
    end
  end

  def self.down
    drop_table :dimensions
  end
end
