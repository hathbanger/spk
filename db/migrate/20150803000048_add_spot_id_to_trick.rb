class AddSpotIdToTrick < ActiveRecord::Migration
  def change
    add_column :tricks, :spot_id, :integer
  end
end
