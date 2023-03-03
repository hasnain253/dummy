class HospitalsNurses < ActiveRecord::Migration[7.0]
  def change
    create_table :hospitals_nurses do |t|
      t.references :hospital, foreign_key: true
      t.references :nurse, foreign_key: true
    end
  end
end
