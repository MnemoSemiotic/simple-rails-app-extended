class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :student_id
      t.integer :credit_number

      t.timestamps
    end
  end
end
