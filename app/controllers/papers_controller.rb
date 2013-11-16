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
    params[:answer].each do |key, value|
      paper.questions[key.to_i].update_attribute(:answer, value.to_i)
      paper.update_attribute(:reading_time, paper.reading_time.to_i + params[:reading_time].to_i)
    end
    logout
    redirect_to thank_path
  end
end
