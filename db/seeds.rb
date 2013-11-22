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

p2 = Paper.create(:name=>"Social Translucence: An Approach to Designing Systems that Support Social Processes", :url=>"http://personal.crocodoc.com/DKj23Hh", :not_collaborative_url=>"http://personal.crocodoc.com/JQw0d2u")

q = Question.create(:question=>"Why the designers of communication and collaboration systems can take many inspiration from work in the areas of architecture and urban design?",
                    :problem1=>'Because in the realm of architecture or urban planning, they need to get many feedback and communicate with other people to come up with good design',
                    :problem2=>'Architects and urban designers are concerned with creating contexts that support various form of human-human interaction',
                    :problem3=>'Designers in those domains can assume the existence of a consistent and unquestioned physics that underlies social interaction where in digital world there is none',
                    :problem4=>"Because architects and urban designers are building the underlying structure for people to live, a massive system that provide foundation for people's communication ")
p2.questions << q

q = Question.create(:question=>"In the quicky opend door example, the author try to illustrate three characteristics of socially translucent system except for?",
                    :problem1=>'Visability',
                    :problem2=>'Awareness',
                    :problem3=>'Accountability',
                    :problem4=>'Reusability')
p2.questions << q

q = Question.create(:question=>"The paper discussed social translucence and transparency, which of the following illustrates translucence(not transparency)?",
                    :problem1=>'Facebook messenger',
                    :problem2=>'Online chatting room',
                    :problem3=>'LinkedIn connection',
                    :problem4=>'Discussion forum')
p2.questions << q

q = Question.create(:question=>"There are three ways to portray social cues in a digital system, which one of the following servers as a reason for the authors to pick the abstract approach?",
                    :problem1=>"The abstract approach don't have resolution limitation on",
                    :problem2=>"The abstract approach don't need users to manipulate avatars",
                    :problem3=>'The abstract scales very good',
                    :problem4=>'The abstract approach has not received sufficient attention')
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


