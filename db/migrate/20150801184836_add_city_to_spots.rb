class AddCityToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :city, :string
  end
end
