class Food < ActiveRecord::Base
  attr_accessible :description, :status

  validates :description, :presence => true
  validates :account_id, :presence => true
  validates :status, :presence => true


  has_many :accounts

end
