class Restaurant < ActiveRecord::Base
  has_many :menus
  validates :name, :address, :city, :state, :presence => true
  validates :name, :uniqueness => true


end
