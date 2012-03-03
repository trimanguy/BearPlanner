class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :cname
      t.text :cdescription
      t.references :user

      t.timestamps
    end
    add_index :calendars, :user_id
  end
end
