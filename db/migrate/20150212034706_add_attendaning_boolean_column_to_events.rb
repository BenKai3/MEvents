class AddAttendaningBooleanColumnToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :attending, :boolean, :default => false
  end
end
