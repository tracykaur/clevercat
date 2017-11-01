class Tutor < ApplicationRecord
  belongs_to :user
  has_many :tutor_skills
  has_many :skills, through: :tutor_skills
end
