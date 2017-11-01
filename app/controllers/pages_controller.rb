class PagesController < ApplicationController

  def index
  end

  def tutor_signup
  end

  def find_a_tutor
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

    @profile.save
    redirect_to "/tutor_profile"
  end

end
