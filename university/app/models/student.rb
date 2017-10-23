class Student < ApplicationRecord
  has_many :student_enrollments
  has_many :sections, :through => :student_enrollments
end
