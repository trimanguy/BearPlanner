class AddResponseToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :response, :string
  end
end
