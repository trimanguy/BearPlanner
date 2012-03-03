class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.text :imessage
      t.references :event

      t.timestamps
    end
    add_index :invites, :event_id
  end
end
