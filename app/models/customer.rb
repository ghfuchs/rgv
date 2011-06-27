class Customer < ActiveRecord::Base
  belongs_to :admin
  has_many :orders
  has_many :reviews
end
