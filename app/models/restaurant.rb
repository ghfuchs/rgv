class Restaurant < ActiveRecord::Base
  OPTION_TYPES = 'Y', "N"
  has_many :menus
  has_many :orders
  has_many :reviews
  validates :name, :address, :city, :state, :zipcode, :presence => true
  validates :name, :uniqueness => true
  validates :logo, :format => {
            :with => %r{\.(gif|jpg|png)$}i,
            :message => 'must be a URL for GIF, JPG or PNG image.'
            }
  validates :pickup, :inclusion => OPTION_TYPES

  mount_uploader :logo, RestLogoUploader


end
