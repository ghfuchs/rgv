class Restaurant < ActiveRecord::Base
  OPTION_TYPES = 'Y', "N"
  belongs_to :admin
  has_many :menus
  has_many :orders
  has_many :reviews
  validates :name, :address, :city, :state, :zipcode, :presence => true
  validates :name, :uniqueness => true
  validates :logo, :format => {
            :with => %r{\.(gif|jpg|png)$}i,
            :message => 'must be a URL for GIF, JPG or PNG image.'
            }
#  validates_postal_code_for :zipcode,

  mount_uploader :logo, RestLogoUploader


end
