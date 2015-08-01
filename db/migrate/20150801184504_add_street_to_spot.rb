class AddStreetToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :street, :string
  end
end
