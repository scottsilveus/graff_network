class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable

  has_many :user_crew_lookups, dependent: :destroy
  has_many :crews, :through => :user_crew_lookups, dependent: :destroy
  has_many :user_favorited_crew_lookups, dependent: :destroy
  has_many :favorited_crews, :through => :user_favorited_crew_lookups, :source => :crew, dependent: :destroy
  has_many :user_artwork_lookups, dependent: :destroy
  has_many :artworks, :through => :user_artwork_lookups, dependent: :destroy
  has_many :user_favorited_artwork_lookups, dependent: :destroy
  has_many :favorited_artworks, :through => :user_favorited_artwork_lookups, :source => :artwork, dependent: :destroy
 
  has_many :user_fave_user_lookups, dependent: :destroy
  has_many :follower_follows, class_name: 'UserFaveUserLookup', foreign_key: 'followee_id', dependent: :destroy
  has_many :followers, through: :follower_follows, :source => :follower, dependent: :destroy
  has_many :followee_follows, class_name: 'UserFaveUserLookup', foreign_key: 'follower_id', dependent: :destroy
  has_many :followees, through: :followee_follows, :source => :followee, dependent: :destroy

  validates_associated :crews, :user_crew_lookups, :artworks, :user_artwork_lookups,
    :favorited_crews, :user_favorited_crew_lookups, :user_favorited_artwork_lookups,
    :favorited_artworks, :followers, :following, :user_fave_user_lookups
end