class Courier < ActiveRecord::Base
  validates :name, :email, presence:true

  has_many :packages
end
