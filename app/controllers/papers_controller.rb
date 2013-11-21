class PapersController < ApplicationController
  before_filter :require_login

  def use_system
    @papers = current_user.papers
  end

  def not_use_system
    @papers = current_user.papers
  end

  def index
    @papers = current_user.papers
  end

  def update
    paper = Paper.find(params[:id])
    if params[:answer]
      params[:answer].each do |key, value|
        sa = current_user.student_answers.where(:question_id=>paper.questions[key.to_i]).first_or_initialize
        sa.answer = value.to_i
        sa.save
      end
    end
    user_paper = current_user.user_papers.where('user_id = ? and paper_id = ?', current_user.id, paper.id).first
    user_paper.update_attribute(:reading_time, user_paper.reading_time.to_i + 1)
    logout
    redirect_to thank_path
  end
end
