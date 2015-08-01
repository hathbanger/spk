class AddLongToTricks < ActiveRecord::Migration
  def change
    add_column :tricks, :long, :float
  end
end
