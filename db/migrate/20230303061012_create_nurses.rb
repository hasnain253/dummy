class CreateNurses < ActiveRecord::Migration[7.0]
  def change
    create_table :nurses do |t|
      t.string :name
      t.string :department
      t.integer :contact_number

      t.timestamps
    end
  end
end
