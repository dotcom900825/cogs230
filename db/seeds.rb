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

p2 = Paper.create(:name=>"Beyong Being There", :url=>"http://personal.crocodoc.com/Fzs2X6i", :not_collaborative_url=>"http://personal.crocodoc.com/PJKc8ow")

q = Question.create(:question=>"Which of the following communication option has the highest rank of social presence",
                    :problem1=>'audio/video communication',
                    :problem2=>'audio only',
                    :problem3=>'written correspondence/email',
                    :problem4=>'face-to-face')
p2.questions << q

q = Question.create(:question=>"Regarding the communication, which of the following statement is true",
                    :problem1=>'When we make a choice between two channels to use for informal interaction,
                                discrepancies between the two channels are not decisive',
                    :problem2=>'If one channel is half as good as another, we will still tend to use it',
                    :problem3=>'When you have the choice between face-to-face and an imitation,
                                no matter how good, it is natural to choose the real thing',
                    :problem4=>'In the Cruiser video study, people would use the video/audio system to communicate directly instead of setting up a real face-to-face conversation')
p2.questions << q

q = Question.create(:question=>"Which of the following analogy illustrate the same idea as the crutches and shoes analogy in the paper?",
                    :problem1=>'necklace and telescope',
                    :problem2=>'glasses and glove', #*correct answer*
                    :problem3=>'suitcase and backpack',
                    :problem4=>'hearing-aid and wig')
p2.questions << q


q = Question.create(:question=>"How do we create tools that go beyond being there?",
                    :problem1=>'By addressing needs with media and their mechanisms', # *correct answer*
                    :problem2=>'By utilizing cutting-edge technology including 3D technology',
                    :problem3=>'By producing information rich channels including feedback, cue variety, stylized openings, etc.',
                    :problem4=>'By taking advantage of technology that physcial cannot provide including asychonous communication, automatic archieve, etc.')
p2.questions << q


User.all.each do |user|
  user.papers << p2
end

p3 = Paper.create(:name=>"Modular aspect-oriented design with XPIs")


