class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :titels
      t.date :dom
      t.time :tom
      t.integer :max

      t.timestamps
    end
  end
end
