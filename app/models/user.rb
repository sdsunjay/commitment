class User < ActiveRecord::Base

    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :challenges
  has_many :answers
  has_many :courses, through: :enrollments, dependent: :destroy

  validates_format_of :email, without: /\Achange@me/, on: :update
  validates :password, length: { minimum: 8, maximum: 64 }, unless: "password.nil?"
  validates :password, presence: true, if: "id.nil?"

  validates :name, presence: { message: 'You must enter your name'}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.edu))\z/i, on: :create }

  validates_uniqueness_of :email
