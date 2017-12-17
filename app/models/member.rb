class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  ratyrate_rater

  has_many :ads
  has_one :profile_member
  accepts_nested_attributes_for :profile_member

  validate :nested_attributes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def nested_attributes
    if nested_attributes_black?
      errors.add(:base, "É necessário preencher os campos Primeiro e Segundo Nome.")
    end
  end
  def nested_attributes_black?
    profile_member.first_name.blank? || profile_member.second_name.blank?
  end

end
