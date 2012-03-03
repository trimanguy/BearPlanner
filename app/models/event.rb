class Event < ActiveRecord::Base
  validates :ename, :starttime, :endtime, :user_id, :presence => true
  belongs_to :user
  has_and_belongs_to_many :calendars
  has_many :invites
  #has_one :invite
end
