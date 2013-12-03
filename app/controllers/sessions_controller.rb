class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.where(:username => params[:user][:name]).first

    auto_login(@user) if @user

    if params[:user][:type] == "yes"
      @user.update_attribute(:user_type, 1) if @user.user_type == 0

      if @user.use_system == 0
        native_count = LoginCount.first.native_count
        LoginCount.first.update_attribute(:native_count, native_count + 1)
        if (native_count % 2 == 0)
          @user.update_attribute(:use_system, 1)
          redirect_to use_system_papers_path
        else
          @user.update_attribute(:use_system, 2)
          redirect_to not_use_system_papers_path
        end
      else
        if @user.use_system == 1
          redirect_to use_system_papers_path
        elsif @user.use_system == 2
          redirect_to not_use_system_papers_path
        end
      end
    else
      @user.update_attribute(:user_type, 2) if @user.user_type == 0



      if @user.use_system == 0
        esl_count = LoginCount.first.esl_count
        LoginCount.first.update_attribute(:esl_count, esl_count + 1)
        if (esl_count % 2 == 0)
          @user.update_attribute(:use_system, 1)
          redirect_to use_system_papers_path
        else
          @user.update_attribute(:use_system, 2)
          redirect_to not_use_system_papers_path
        end
      else
        if @user.use_system == 1
          redirect_to use_system_papers_path
        elsif @user.use_system == 2
          redirect_to not_use_system_papers_path
        end
      end


    end
  end

  def cse218
    @user = User.where(:username=>params[:user][:name].downcase).first_or_create(:user_type=>0, :use_system=>0, :private_paper_url=>"www.baidu.com")
    auto_login(@user)

    paper = Paper.where(:name=>"Modular aspect-oriented design with XPIs")
    @user.papers << paper

    if params[:user][:type] == "yes"
      @user.update_attribute(:user_type, 1) if @user.user_type == 0

      native_count = LoginCount.first.native_count
      LoginCount.first.update_attribute(:native_count, native_count + 1)

      if @user.use_system == 0
        if (native_count % 2 == 0)
          @user.update_attribute(:use_system, 1)
          redirect_to use_system_papers_path
        else
          @user.update_attribute(:use_system, 2)
          purl = Cse218PrivateUrl.where(:marked=>0).first
          if purl.present?
            @user.update_attribute(:private_paper_url, purl.url)
            purl.update_attribute(:marked, 1)
          end
          redirect_to not_use_system_papers_path
        end
      else
        if @user.use_system == 1
          redirect_to use_system_papers_path
        elsif @user.use_system == 2
          redirect_to not_use_system_papers_path
        end
      end
    else
      @user.update_attribute(:user_type, 2) if @user.user_type == 0

      esl_count = LoginCount.first.esl_count
      LoginCount.first.update_attribute(:esl_count, esl_count + 1)

      if @user.use_system == 0
        if (esl_count % 2 == 0)
          @user.update_attribute(:use_system, 1)
          redirect_to use_system_papers_path
        else
          @user.update_attribute(:use_system, 2)
          purl = Cse218PrivateUrl.where(:marked=>0).first
          if purl.present?
            @user.update_attribute(:private_paper_url, purl.url)
            purl.update_attribute(:marked, 1)
          end
          redirect_to not_use_system_papers_path
        end
      else
        if @user.use_system == 1
          redirect_to use_system_papers_path
        elsif @user.use_system == 2
          redirect_to not_use_system_papers_path
        end
      end

    end
  end


  def destroy
    logout
    flash[:notice] = "Logged out"
    redirect_to root_path
  end
end
