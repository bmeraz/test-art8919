class CreateArtifacts < ActiveRecord::Migration
  def self.up
    create_table :artifacts do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.integer :artist_id
      t.integer :medium_id
      t.integer :notes_id
      t.integer :tag_id

      t.timestamps
    end
  end

  def self.down
    drop_table :artifacts
  end
end
