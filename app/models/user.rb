class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username,	presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :email,			presence: true, uniqueness: { case_sensitive: false }
end
