class TutorsController < ApplicationController

  def add_skill
    @skill = TutorSkill.new
    @skill.tutor_id = current_user.tutor.id
    @skill.skill_id = params[:skill_id]
    @skill.save
    redirect_to "/edit-skills"
  end


end
