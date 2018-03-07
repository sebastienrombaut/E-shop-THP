class AddPhotoToItems < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :items, :photo
  end

  def self.down
    remove_attachment :items, :photo
  end
end
