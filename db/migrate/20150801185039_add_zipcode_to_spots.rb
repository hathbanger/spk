class AddZipcodeToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :zipcode, :string
  end
end
