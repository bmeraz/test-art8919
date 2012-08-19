class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.integer :artifact_id
      t.string :price_type
      t.text :price_description
      t.string :price_value

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
