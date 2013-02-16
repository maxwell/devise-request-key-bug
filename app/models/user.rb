class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  attr_accessor :subdomain
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, request_keys: [:subdomain], reset_password_keys:[:email, :subdomain]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body


  def self.find_first_by_auth_conditions(conditions)
    raise "I am called"
    super
  end
end
