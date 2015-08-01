class AddLatiToTricks < ActiveRecord::Migration
  def change
    add_column :tricks, :lati, :float
  end
end
