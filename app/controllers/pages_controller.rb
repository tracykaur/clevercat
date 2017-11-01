class PagesController < ApplicationController

  def index
  end

  def tutor_signup
  end

  def find_a_tutor
  end

  def update_profile
    @profile = current_user.profile
    @profile.headline = params[:headline]
    @profile.description = params[:description]
    @profile.save
  end

end
