class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :driver
  belongs_to :cleaner
end
