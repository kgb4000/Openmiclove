class ChangeEventDateToDateDataType < ActiveRecord::Migration
  def change
  	change_column :events, :event_date,  :date 
  end
end
