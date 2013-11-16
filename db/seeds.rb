# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
LoginCount.create(:esl_count=>0, :native_count=>0)

User.create(:username=>'Melissa Cameron', :user_type=>0, :use_system=>0)
User.create(:username=>'Alex Fung', :user_type=>0, :use_system=>0)
User.create(:username=>'Velu Ganapathy ', :user_type=>0, :use_system=>0)
User.create(:username=>'Peter Henriksen', :user_type=>0, :use_system=>0)
User.create(:username=>'Galit Hofree', :user_type=>0, :use_system=>0)
User.create(:username=>'Tobias Juul Broegger Jensen', :user_type=>0, :use_system=>0)
User.create(:username=>'Kunal Korgaonkar', :user_type=>0, :use_system=>0)
User.create(:username=>'Adam Mekrut', :user_type=>0, :use_system=>0)
User.create(:username=>'Christian Boeggild Otte', :user_type=>0, :use_system=>0)
User.create(:username=>'Vineet Pandey', :user_type=>0, :use_system=>0)
User.create(:username=>'Dexin Qi', :user_type=>0, :use_system=>0)
User.create(:username=>'Adam Rule', :user_type=>0, :use_system=>0)
User.create(:username=>'Amer Sinha', :user_type=>0, :use_system=>0)
User.create(:username=>'Rosalyne Sirimitr', :user_type=>0, :use_system=>0)
User.create(:username=>'Richard Tibbles', :user_type=>0, :use_system=>0)
User.create(:username=>'Rebecca Walsh', :user_type=>0, :use_system=>0)
User.create(:username=>'Guan Wang', :user_type=>0, :use_system=>0)
User.create(:username=>'Edward Wang', :user_type=>0, :use_system=>0)
User.create(:username=>'Brent Wong', :user_type=>0, :use_system=>0)
User.create(:username=>'Victor Wu', :user_type=>0, :use_system=>0)
User.create(:username=>'Yu Xia', :user_type=>0, :use_system=>0)
User.create(:username=>'Kendall Youngstrom', :user_type=>0, :use_system=>0)
User.create(:username=>'Rizhen Zhang', :user_type=>0, :use_system=>0)
User.create(:username=>'Tianyin Xu', :user_type=>0, :use_system=>0)
User.create(:username=>'Feng Zhu', :user_type=>0, :use_system=>0)

#p1 = Paper.create(:name=>"Evidence for a Collective IntelligenceFactor in the Performance of Human Groups")

p2 = Paper.create(:name=>"Predicting protein structures with a multiplayer online game", :url=>"http://personal.crocodoc.com/TqkbF0e", :not_collaborative_url=>"www.baidu.com")

q = Question.create(:question=>"How Foldit judge user's score?", :problem1=>'hehe', :problem2=>'hihi', :problem3=>'haha', :problem4=>'hiahia')
p2.questions << q

q = Question.create(:question=>"How advanced user behave on Foldit?", :problem1=>'hehe', :problem2=>'hihi', :problem3=>'haha', :problem4=>'hiahia')
p2.questions << q

User.all.each do |user|
  user.papers << p2
end


