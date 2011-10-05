class Zones < ActiveRecord::Base
  has_many  :channels
  has_many  :users

  validates  :lat,  :presence => true
  validates  :long,  :presence => true
end
