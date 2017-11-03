class PagesController < ApplicationController

  def index
  end

  def tutor_signup
  end

  def find_a_tutor
  @tutors = Tutor.all

  end

  def skills_profile
    @skills = current_user.tutor.skills
  end


  def show
    @skills = current_user.tutor.skills
    @headline = current_user.tutor.headline
    @description = current_user.tutor.description
    @hourly_rate = current_user.tutor.hourly_rate

  end


  def tutor_profile
    if current_user.tutor.nil?
      Tutor.create({user:current_user})
    end
    @tutor = current_user.tutor

  end




  def update_profile
    @profile = current_user.tutor
    @profile.headline = params[:tutor][:headline]
    @profile.description = params[:tutor][:description]
    @profile.hourly_rate = params[:tutor][:hourly_rate]
    @profile.avatar = params[:tutor][:avatar]
    @profile.save
    redirect_to "/edit-skills"
  end

end
