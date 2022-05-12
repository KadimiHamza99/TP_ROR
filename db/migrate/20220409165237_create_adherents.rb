class CreateAdherents < ActiveRecord::Migration[6.1]
  def change
    create_table :adherents do |t|
      t.string :nom
      t.string :prenom
      t.string :status

      t.timestamps
    end
  end
end
