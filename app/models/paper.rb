class Paper < ActiveRecord::Base
  has_many :users, :through=>:user_papers
  has_many :user_papers, :dependent=>:destroy

  has_many :questions
end
