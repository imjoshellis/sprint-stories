class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :omniauthable
  belongs_to :role, default: -> { Role.find_by(name: "developer") }
  has_many :user_projects
  has_many :projects, through: :user_projects
end
