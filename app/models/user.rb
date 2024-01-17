class User < ApplicationRecord
  has_many :courses, foreign_key: 'instructor_id'
  has_many :enrollments, foreign_key: 'student_id'
  has_many :enrolled_courses, through: :enrollments, source: 'course'

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
