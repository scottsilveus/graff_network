class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :lockable, :timeoutable, :omniauthable

  has_many :artworks, through: :user_artwork_lookups, dependent: :destroy
  has_many :crews, through: :user_crew_lookups, dependent: :destroy
  has_many :favorited_crews, through: :user_favorited_crew_lookups, source: :crew, dependent: :destroy
  has_many :favorited_artworks, through: :user_favorited_artwork_lookups, source: :artwork, dependent: :destroy
  has_many :followee_follows, class_name: "UserFaveUserLookup", foreign_key: "follower_id"
  has_many :followees, through: :followee_follows, source: :followee, dependent: :destroy
  has_many :follower_follows, class_name: "UserFaveUserLookup", foreign_key: "followee_id"
  has_many :followers, through: :follower_follows, source: :follower, dependent: :destroy
  has_many :user_artwork_lookups
  has_many :user_crew_lookups
  has_many :user_favorited_artwork_lookups
  has_many :user_favorited_crew_lookups

  validates_associated :artworks, :crews, :favorited_artworks, :favorited_crews,
    :user_artwork_lookups, :user_crew_lookups, :user_favorited_artwork_lookups, :user_favorited_crew_lookups

  validates :city, length: {maximum: 100}
  validates :country, length: {maximum: 100}
  validates :first_name, length: {maximum: 30}
  validates :gender, length: {maximum: 6}
  validates :instagram, length: {maximum: 100}
  validates :last_name, length: {maximum: 50}
  validates :state, length: {maximum: 100}
  validates :status,
  validates :summary, length: {maximum: 2500}
  validates :tag_name, length: {maximum: 50}
  validates :user_type, presence: true

end
