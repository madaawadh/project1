class AddTagIdToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :tag_id, :integer
  end
end
