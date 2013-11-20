class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  authenticates_with_sorcery!

  has_many :papers, :through=>:user_papers
  has_many :user_papers, :dependent=>:destroy

  has_many :student_answers
end
