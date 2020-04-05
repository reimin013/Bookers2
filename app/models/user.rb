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

  attachment :profile_image
  has_many :books, dependent: :destroy
  validates :name, presence: true, length: {mminimum: 2, maximum: 20}
  validates :introduction, length: {maximum: 50}
end
