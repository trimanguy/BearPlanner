class User < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true #Makes sure all useres have a unique name
  has_many :calendars
  has_many :events
  #has_and_belongs_to_many :invites
  has_many :invites
end
