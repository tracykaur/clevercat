class TutorSkill < ApplicationRecord
  belongs_to :skill
  validates_uniqueness_of :skill_id, :scope => :tutor_id
end
