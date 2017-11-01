class RenameTutorskills < ActiveRecord::Migration[5.1]
  def change
    rename_table :tutorskills, :tutor_skills
  end
end
