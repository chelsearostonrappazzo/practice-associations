class ChangeTimetoTimeOnMeetings < ActiveRecord::Migration[6.1]
  def change
    change_column :meetings, :time, "timestamp USING CAST(time AS timestamp without time zone)"
  end
end
