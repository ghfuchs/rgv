class Restaurant < ActiveRecord::Base
  has_many :menus
  has_many :orders
  has_many :reviews
  validates :name, :address, :city, :state, :presence => true
  validates :name, :uniqueness => true

  mount_uploader :logo, RestLogoUploader


end
