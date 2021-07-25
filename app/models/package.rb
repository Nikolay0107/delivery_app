class Package < ActiveRecord::Base
  validates :tracking_number, presence:true

  belongs_to :courier_on_the_way, class_name: 'Courier', foreign_key: :courier_on_the_way_id
end
