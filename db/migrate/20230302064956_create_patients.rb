class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.belongs_to:hospital, foreign_key: true
      t.string :name
      

      t.timestamps
    end
  end
end
