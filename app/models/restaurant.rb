class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state,
                  :state, :zipcode, :pickup, :delivery, :min_delivery,
                  :delivery_fee, :logo, :mon_hours, :tue_hours, :wed_hours,
                  :thu_hours, :fri_hours, :sat_hours, :sun_hours,
                  :description, :website, :image_carousel_limit, :image_carousel_count,
                  :payment_type_accepted, :admin_id
  OPTION_TYPES = 'Y', "N"
  belongs_to :admin
  has_many :menus
#    accepts_nested_attributes_for :menus
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
