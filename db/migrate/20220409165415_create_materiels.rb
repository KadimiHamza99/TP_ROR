class CreateMateriels < ActiveRecord::Migration[6.1]
  def change
    create_table :materiels do |t|
      t.string :marque
      t.string :os

      t.timestamps
    end
  end
end
