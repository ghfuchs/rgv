class Menu < ActiveRecord::Base
  attr_accessible :restaurant_id, :description, :menu_image, :qty, :price, :sp_price, :prep_time,
                  :category
  default_scope :order => 'category'
  belongs_to :restaurant
#  belongs_to :menu_category
  has_many :order_items
#  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
#  validates :sp_price, :numericality => {:greater_than_or_equal_to => 0.01}
#  validates :admin_id, :presence => true
  validates :menu_image, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
    }
  before_destroy :ensure_not_referenced_by_any_order_item
  mount_uploader :menu_image, MenuImageUploader

  private
  #ensure that there are no order items referencing this menu
  def ensure_not_referenced_by_any_order_item
    if order_items.empty?
      return true
    else
      errors.add(:base, 'Order Items present')
      return false
    end
  end

end
