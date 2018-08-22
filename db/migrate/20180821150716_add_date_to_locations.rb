class AddDateToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :start_date, :date
    add_column :locations, :end_date, :date
  end
end
