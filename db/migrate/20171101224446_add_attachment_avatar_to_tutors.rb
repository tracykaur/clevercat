class AddAttachmentAvatarToTutors < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tutors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :tutors, :avatar
  end
end
