class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {in: 2..20}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def email_required?
  	false
  end

  def email_changed?
  	false
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
