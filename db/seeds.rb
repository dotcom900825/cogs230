# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
LoginCount.create(:esl_count=>0, :native_count=>0)



User.create(:username=>'Melissa Cameron', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/FSQ5hEq
')
User.create(:username=>'Alex Fung', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/kLezPxp
')
User.create(:username=>'Velu Ganapathy ', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/6xCTl0J
')
User.create(:username=>'Peter Henriksen', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/sgzdV8C
')
User.create(:username=>'Galit Hofree', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/MfQ0eqb
')
User.create(:username=>'Tobias Juul Broegger Jensen', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/rL2b5yA
')
User.create(:username=>'Kunal Korgaonkar', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/EDolAcn
')
User.create(:username=>'Adam Mekrut', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/5SqLP0Y
')
User.create(:username=>'Christian Boeggild Otte', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/H1ApsWa
')
User.create(:username=>'Vineet Pandey', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/qTBZCY8
')
User.create(:username=>'Dexin Qi', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/y5zuVmI')
User.create(:username=>'Adam Rule', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/qTFvIkP')
User.create(:username=>'Amer Sinha', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/YL2Ehgo')
User.create(:username=>'Rosalyne Sirimitr', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/ZSkhUpN')
User.create(:username=>'Richard Tibbles', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/pcwZr8y')
User.create(:username=>'Rebecca Walsh', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/go7P84Q')
User.create(:username=>'Guan Wang', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/9u5qTdQ')
User.create(:username=>'Edward Wang', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/PCsNJdB')
User.create(:username=>'Brent Wong', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/UdYBi9C')
User.create(:username=>'Victor Wu', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/WNTJQ5g')
User.create(:username=>'Yu Xia', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/FYXlbJm')
User.create(:username=>'Kendall Youngstrom', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/jOuXgl5')
User.create(:username=>'Rizhen Zhang', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/kmni2ey')
User.create(:username=>'Tianyin Xu', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/8NFvuHm')
User.create(:username=>'Feng Zhu', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/kN2mYvx')

#p1 = Paper.create(:name=>"Evidence for a Collective IntelligenceFactor in the Performance of Human Groups")

p2 = Paper.create(:name=>"SUPPLE: Automatically Generating User Interfaces",
                  :url=>"http://personal.crocodoc.com/IkHSOer",
                  :not_collaborative_url=>"http://personal.crocodoc.com/gCwc2r7")

q = Question.create(:question=>"Which of the following is not required input by adaptive interface renderer?",
                    :problem1=>'interface specification',
                    :problem2=>'device model',
                    :problem3=>'user trace',
                    :problem4=>"render speed")
p2.questions << q

q = Question.create(:question=>"A display-based device is modeled as a tuple {W, Cd, M, N}, which of the following statement is incorrect?",
                    :problem1=>'W is the set of available UI widgets',
                    :problem2=>'Cd denotes a set of device-specific constraints',
                    :problem3=>'M is device specific function for evaluating the suitability of using particular widgets contexts',
                    :problem4=>'N represent how easy it is use the device')
p2.questions << q

q = Question.create(:question=>"In the Modeling Users with Traces chapter, which of the following is incorrect?",
                    :problem1=>'Frequent change to the interface can be distracting',
                    :problem2=>'the format of a trace is independent of a particular rendering',
                    :problem3=>'Even with the accumulated trace information, we are still not able to re-render the interface adapting to it to the needs of a particular user',
                    :problem4=>'The interface needs to be rendered even before the user has a chance to use it and generate any traces.')
p2.questions << q

q = Question.create(:question=>"The paper makes four contributions, which of the following one is not?",
                    :problem1=>"Defined the interface rendering problem as a decision-theoretic optimization problem",
                    :problem2=>"The framework includes as an input a trace of typical user behavior, allowing for user specifc rendering",
                    :problem3=>'Present an efficient branch and bound rendering algorithm',
                    :problem4=>'Discussed the limitation of the SUPPLE system.')
p2.questions << q




User.all.each do |user|
  user.papers << p2
end

p3 = Paper.create(:name=>"Modular aspect-oriented design with XPIs",
                  :url=>"http://personal.crocodoc.com/aHQLCwv",
                  :not_collaborative_url=>"http://personal.crocodoc.com/CyoWFLJ")

q = Question.create(:question=>"Which of the following is NOT a canonical crosscutting concern?",
                    :problem1=>'logging',
                    :problem2=>'tracing',
                    :problem3=>'debugging',
                    :problem4=>"caching")
p3.questions << q

q = Question.create(:question=>"Which of the following is NOT true about oblivious design and XPI?",
                    :problem1=>'Oblivious design requires developer to finish based implementation before aspects.',
                    :problem2=>'Intimacy causes developers to explicitly design and write code for aspects.',
                    :problem3=>'XPI approach decoupled both base code and aspects, while oblivious did not.',
                    :problem4=>"XPI does not contain addition hooks for aspect code to advise, while oblivious do.")
p3.questions << q

q = Question.create(:question=>"Which of the following about AspectJ is NOT true?",
                    :problem1=>'PCD matches JPs',
                    :problem2=>'Advice is provided by JP',
                    :problem3=>'JPM dispatch advice to dynamic events',
                    :problem4=>"JP is dynamic event")
p3.questions << q

q = Question.create(:question=>"Which of the following concern is NOT addressed by XPI?",
                    :problem1=>'Keep designer oblivious',
                    :problem2=>'Keep JPs consistent',
                    :problem3=>'Resolve crosscutting concerns',
                    :problem4=>"Naming")
p3.questions << q

Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/x4IWqPH")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/Jg2foMN")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/5JoU16H")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/1sdOwH2")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/T25qWOm")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/HWiv10k")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/wxOeJYf")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/74bBoDu")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/TCVbK8t")
Cse218PrivateUrl.create(:url=>"http://personal.crocodoc.com/cDwWJ65")




