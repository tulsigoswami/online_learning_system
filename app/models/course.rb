class Course < ApplicationRecord
	belongs_to :instructor, class_name: 'User'
	has_many :lessons, dependent: :destroy
	has_many :enrollments, dependent: :destroy
	has_many :students, through: :enrollments, source: 'student'

	validates :title, presence: true
  validates :description, presence: true
end
