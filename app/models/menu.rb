class Menu < ActiveRecord::Base
  attr_accessible :menu_image
  belongs_to :Restaurant
#  belongs_to :menu_category
  has_many :Orders
#  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
#  validates :sp_price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :menu_image, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
    }
  mount_uploader :menu_image, MenuImageUploader

end
