class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :courses, through: :enrollments
  has_many :answers
  has_many :challenges
  has_one :school
  validates :email, presence: {message: 'You must enter your email'}
  validates :name, presence: { message: 'You must enter your name' }
  validates :school, presence: { message: 'You must enter your school' }
# validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+(edu))\z/i, on: :create }
  validates_uniqueness_of :email
  def self.find_for_oauth(auth, signed_in_resource = nil)
    # Get the identity and user if they exist
    identity = Identity.find_for_oauth(auth)

    # If a signed_in_resource is provided it always overrides the existing user
    # to prevent the identity being locked with accidentally created accounts.
    # Note that this may leave zombie accounts (with no associated identity) which
    # can be cleaned up at a later date.
    user = signed_in_resource ? signed_in_resource : identity.user

    # Create the user if needed
    if user.nil?
      # Get the existing user by email if the provider gives us a verified email.
      # If no verified email was provided we assign a temporary email and ask the
      # user to verify it on the next step via UsersController.finish_signup
      email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      email = auth.info.email if email_is_verified
      user = User.where(email: email).first if email

      # Create the user if it's a new registration
      if user.nil?
        # insert all the data into the db
# user = User.new(name:auth.extra.raw_info.first_name + auth.extra.raw_info.last_name, profile_picture:auth.info.image, email: auth.info.email, password: Devise.friendly_token[0,20])
        user = User.new(name:auth.extra.raw_info.first_name + auth.extra.raw_info.last_name, email: auth.info.email, password: Devise.friendly_token[0,20])
        #user.skip_confirmation!
        #user.skip_confirmation! if user.respond_to?(:skip_confirmation)
        user.save!(validate: false)
      end
    end
  end
end
