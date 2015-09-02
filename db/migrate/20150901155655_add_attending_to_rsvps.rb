class AddAttendingToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :attending, :boolean, default: true
  end
end
