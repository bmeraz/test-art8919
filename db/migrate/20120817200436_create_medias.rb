class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.integer :artifact_id
      t.string :media_name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
