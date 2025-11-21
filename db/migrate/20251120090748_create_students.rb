class CreateStudents < ActiveRecord::Migration[8.1]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.date :date_of_birth

      t.timestamps
    end
  end
end
