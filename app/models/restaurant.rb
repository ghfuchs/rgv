class Restaurant < ActiveRecord::Base
  has_many :menus
  has_many :orders
  validates :name, :address, :city, :state, :presence => true
  validates :name, :uniqueness => true


end
