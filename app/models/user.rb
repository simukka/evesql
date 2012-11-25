class User < ActiveRecord::Base
  has_one :apikey, :class_name => 'ApiKey'

  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :token_authenticatable

  after_create :create_apikey
  after_create :default_role

  private
  def create_apikey
    ApiKey.create!(:user_id => self.id)
  end

  def default_role
    self.add_role :basic
  end
end
