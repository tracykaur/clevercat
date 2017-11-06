class User < ApplicationRecord
  has_one :tutor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  geocoded_by :location  # can also be an IP address
  after_validation :geocode # auto-fetch coordinates
end
