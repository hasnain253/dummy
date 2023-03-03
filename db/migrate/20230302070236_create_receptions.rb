class CreateReceptions < ActiveRecord::Migration[7.0]
  def change
    create_table :receptions do |t|
      t.belongs_to :hospital,foreign_key: true
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
