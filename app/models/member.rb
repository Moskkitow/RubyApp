class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  ratyrate_rater

  has_many :ads

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
