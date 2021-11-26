class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name, null: false
      t.date :birth_date, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end
