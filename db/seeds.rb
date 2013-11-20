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

p2 = Paper.create(:name=>"Predicting protein structures with a multiplayer online game", :url=>"http://personal.crocodoc.com/3q5nPhK", :not_collaborative_url=>"http://personal.crocodoc.com/blZc7gV")

q = Question.create(:question=>"What's the limitation of stage-of-the-art Rosetta structure prediction methodology?", :problem1=>'The native structure almost always has higher energy than any non-native conformation', :problem2=>'The free energy landscape that must be searched is extremely small', :problem3=>'Is primarily limited by the conformational sampling ', :problem4=>'There is not a possible way to search this landscape, even Rosetta methodology')
p2.questions << q

q = Question.create(:question=>"How Foldit solve the problem that many players have no previous exposure to molecuar biology?", :problem1=>'Ask players to go through the documentation for this game', :problem2=>'Perform a user classfication, if you are a novice than you have to go through technical terms', :problem3=>'Assign a molecuar biology professonal to walk you through those concepts ', :problem4=>'Use series of introductory levels to introduce technical concepts')
p2.questions << q

q = Question.create(:question=>"In solving the strand-swap problem, which of the following stagement is correct?", :problem1=>'Rosetta did sample some partially swapped conformations, and also retained in subsequent generations', :problem2=>'Human player would ignore the temporary energy increase, because they correctly recognized that the swap could ultimately lead to lower energies', :problem3=>'The automated methods have difficulty performing major protein restructuring operations, especially once the solution has settled in a local high-energy basin', :problem4=>'Human players have difficulty distinguish which starting point will be most useful to them')
p2.questions << q


User.all.each do |user|
  user.papers << p2
end

p3 = Paper.create(:name=>"Modular aspect-oriented design with XPIs")


