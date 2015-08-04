class RemoveLatiAndLongFromTricks < ActiveRecord::Migration
  def change
    remove_column :tricks, :lati, :float
    remove_column :tricks, :long, :float
  end
end
