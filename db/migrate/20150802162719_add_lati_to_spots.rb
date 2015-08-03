class AddLatiToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :lati, :float
  end
end
