class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.string :name
      t.integer :age_limit
      t.string :drug
      t.string :symptoms
      t.integer :phase

      t.timestamps
    end
  end
end
