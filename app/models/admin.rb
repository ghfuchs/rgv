class Admin < ActiveRecord::Base
  has_one :restaurant
  accepts_nested_attributes_for :restaurant
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#  default_scope :includes => :restaurant

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :restaurant_attributes

end
