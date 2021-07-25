class AddCourierIdToPackages < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :packages, :courier_on_the_way
  end
end
