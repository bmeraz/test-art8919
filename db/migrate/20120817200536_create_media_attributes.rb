class CreateMediaAttributes < ActiveRecord::Migration
  def self.up
    create_table :media_attributes do |t|
      t.integer :media_id
      t.string :attr_name
      t.text :attr_desc
      t.string :media_value

      t.timestamps
    end
  end

  def self.down
    drop_table :media_attributes
  end
end
