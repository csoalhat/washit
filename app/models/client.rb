class Client < ActiveRecord::Base
  belongs_to :user
  has_many :orders

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :home_address
  validates_presence_of :home_address_zipcode
end
