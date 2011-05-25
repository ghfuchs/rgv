class Menu < ActiveRecord::Base
  belongs_to :Restaurant
  has_many :Orders
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :sp_price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
    }

end
