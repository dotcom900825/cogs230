class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :papers, :through=>:user_papers
  has_many :user_papers, :dependent=>:destroy
end
