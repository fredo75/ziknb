class AddPriceToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :price, :integer
  end
end
