class UserPaper < ActiveRecord::Base
  belongs_to :user
  belongs_to :paper
end
