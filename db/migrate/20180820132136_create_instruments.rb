class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :title
      t.text :description
      t.string :marque

      t.timestamps
    end
  end
end
