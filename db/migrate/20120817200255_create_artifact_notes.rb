class CreateArtifactNotes < ActiveRecord::Migration
  def self.up
    create_table :artifact_notes do |t|
      t.datetime :ts
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :artifact_notes
  end
end
