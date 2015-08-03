class AddSpotIdToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :spot_id, :integer
  end
end
