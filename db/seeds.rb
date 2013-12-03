# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
LoginCount.create(:esl_count=>0, :native_count=>0)



User.create(:username=>'Melissa Cameron', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/x3lsJnr')
User.create(:username=>'Alex Fung', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/r0u9bEn')
User.create(:username=>'Velu Ganapathy ', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/Pz5DAO0')
User.create(:username=>'Peter Henriksen', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/De3kfO0')
User.create(:username=>'Galit Hofree', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/hesqgLZ')
User.create(:username=>'Tobias Juul Broegger Jensen', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/pLObIC1')
User.create(:username=>'Kunal Korgaonkar', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/nTJUyid')
User.create(:username=>'Adam Mekrut', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/jlTYJWG')
User.create(:username=>'Christian Boeggild Otte', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/7cLKdC1')
User.create(:username=>'Vineet Pandey', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/qTBZCY8
')
User.create(:username=>'Dexin Qi', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/2n6AQla')

User.create(:username=>'Adam Rule', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/4TBlWjP')
User.create(:username=>'Amer Sinha', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/zNS6W1R')
User.create(:username=>'Rosalyne Sirimitr', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/0fkuhQ7')
User.create(:username=>'Richard Tibbles', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/ouTPzyi')
User.create(:username=>'Rebecca Walsh', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/YNdbruo')
User.create(:username=>'Guan Wang', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/4W6dnQy')
User.create(:username=>'Edward Wang', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/Lih7Y9a')
User.create(:username=>'Brent Wong', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/8RhiTk6')
User.create(:username=>'Victor Wu', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/rl5f2W6')
User.create(:username=>'Yu Xia', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/cSAMtWD')
User.create(:username=>'Kendall Youngstrom', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/2QJoVNF')
User.create(:username=>'Rizhen Zhang', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/q8xa1Ez')
User.create(:username=>'Tianyin Xu', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/g8J4oDW')
User.create(:username=>'Feng Zhu', :user_type=>0, :use_system=>0, :private_paper_url=>'http://personal.crocodoc.com/Le7Bodf')

#p1 = Paper.create(:name=>"Evidence for a Collective IntelligenceFactor in the Performance of Human Groups")

p2 = Paper.create(:name=>"Cognitive control in media multitaskers",
                  :url=>"http://personal.crocodoc.com/lKAqGWU",
                  :not_collaborative_url=>"http://personal.crocodoc.com/OeLs1jI")

q = Question.create(:question=>"Which of the following is true about HMMs and LMMs?",
                    :problem1=>'HMMs are better at task switching than LMMs',
                    :problem2=>'LMMs are slower than HMMs responding to AX trials.',
                    :problem3=>'LMMs are better at filtering irrelevant representations in memory',
                    :problem4=>"HMMs show same performance in AX trials when distractor level changes")
p2.questions << q

q = Question.create(:question=>"According to the experiment result, which of the following is false about MMI?",
                    :problem1=>'MMI is not related with SAT score',
                    :problem2=>'MMI is related with media usage',
                    :problem3=>'MMI is not related with need for cognition',
                    :problem4=>'MMI is related with gender')
p2.questions << q

q = Question.create(:question=>"In the test of filtering ability, which of the following is false?",
                    :problem1=>'HMM performance is linearly negativily affected by distractors',
                    :problem2=>'LMM is not affected by distractors',
                    :problem3=>'HMM tend to allow irrelevant stimuli into working memory',
                    :problem4=>'LMM does not have the ability to filter out irrelevant stimuli')
p2.questions << q

q = Question.create(:question=>"In the discussion section, which of the following is false?",
                    :problem1=>"The present research suggests that HMM have greater difficulty filtering out irrelevent stimuli from their environment",
                    :problem2=>"People who infrequently multitask are more effective at volitionally allocating their attention in the face of distractions. ",
                    :problem3=>'LMMs have a greater tendency for top-down attentional control, and thus they may find it easier to attentionally focus on a single task in the face of distractions.',
                    :problem4=>'HMMs are less likely to respond to stimuli outside the realm of their immediate task, and thus may have a greater tendency for bottom-up attentional control')
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




