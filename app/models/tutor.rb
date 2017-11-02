class Tutor < ApplicationRecord
  belongs_to :user
  has_many :tutor_skills
  has_many :skills, through: :tutor_skills
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
