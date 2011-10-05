class Channel < ActiveRecord::Base
  attr_accessible :name, :zone

  has_many :users, :as => :followers, :through => 'channelsrelationships'
  name_regex = /\A[\w]+\z/i

  validates :name, :presence => true,
                   :format   => { :with => name_regex },
                   :length   => { :maximum => 50 },
                   :uniqueness => { :case_sensitive => false }

  validates :zone, :presence => true
end
