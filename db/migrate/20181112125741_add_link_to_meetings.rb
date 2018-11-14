class AddLinkToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :link, :string
  end
end
