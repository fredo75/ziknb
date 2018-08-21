class AddUserIdToInstrument < ActiveRecord::Migration[5.2]
  def change
     add_reference :instruments, :user, index: true
  end
end
