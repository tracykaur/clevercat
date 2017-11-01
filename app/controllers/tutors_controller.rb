class TutorsController < ApplicationController

  def add_skill
    @skill = TutorSkill.new
    @skill.tutor_id = current_user.tutor
    @skill.skill_id = params[:skill_id]
    @skill.save
    redirect_to "/skills_profile"
  end


end
