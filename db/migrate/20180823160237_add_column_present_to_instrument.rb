class AddColumnPresentToInstrument < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :present, :boolean
  end
end
