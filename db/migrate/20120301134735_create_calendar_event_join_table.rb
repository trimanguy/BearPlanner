class CreateCalendarEventJoinTable < ActiveRecord::Migration
  def change
    create_table :calendars_events, :id => false do |t|
      t.integer :calendar_id
      t.integer :event_id
    end
  end
end
