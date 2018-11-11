class CreateJoinTableMeetingsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :meetings, :tags do |t|
      # t.index [:meeting_id, :tag_id]
      # t.index [:tag_id, :meeting_id]
    end
  end
end
