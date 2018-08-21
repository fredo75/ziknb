class AddPhotoToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :photo, :string
  end
end
