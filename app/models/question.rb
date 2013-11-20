class Question < ActiveRecord::Base
  belongs_to :paper
  has_many :student_answers
end
