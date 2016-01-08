class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable

  has_many :user_crew_lookups, dependent: :destroy
  has_many :crews, :through => :user_crew_lookups, dependent: :destroy
  has_many :user_artwork_lookups, dependent: :destroy
  has_many :artworks, :through => :user_artwork_lookups, dependent: :destroy

  validates_associated :crews, :user_crew_lookups, :artworks, :user_artwork_lookups
end