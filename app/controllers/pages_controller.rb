class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:tutor_profile]

  def index
  end

  def tutor_signup
  end


  def find_a_tutor
    @tutors = Tutor.all
    @map_tutors = []
    User.where({role:"tutor"}).each do |user|
      skills = []
      user.tutor.skills.each do |skill|
        skills.push(skill.name)
      end
      @map_tutors.push({
        latitude:user.latitude,
        longitude:user.longitude,
        name:user.name,
        headline:user.tutor.headline,
        skills:skills,
        hourly_rate: user.tutor.hourly_rate,
        avatar:user.tutor.avatar.url(:thumb),
        id:user.tutor.id,
      })
    end
  end

  def skills_profile
    @skills = current_user.tutor.skills
  end


  def show
    if params[:id].nil?
      user = current_user
    else
      user = User.find(params[:id])
    end

    @skills = user.tutor.skills
    @headline = user.tutor.headline
    @description = user.tutor.description
    @hourly_rate = user.tutor.hourly_rate
    @image = user.tutor.avatar.url(:medium)
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

  def facebook
  end

end
