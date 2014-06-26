class AddAttachmentArtworkToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :artwork
    end
  end

  def self.down
    drop_attached_file :works, :artwork
  end
end
