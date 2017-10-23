class CreateStudentEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :student_enrollments do |t|
      t.integer "student_id"
      t.integer "section_id"
      t.timestamps
    end
    add_index("student_enrollments", ['student_id', 'section_id'])
  end
end
