class AddAddressToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :address, :string
  end
end
