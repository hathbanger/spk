class AddLongToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :long, :float
  end
end
