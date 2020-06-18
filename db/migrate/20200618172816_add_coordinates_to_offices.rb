class AddCoordinatesToOffices < ActiveRecord::Migration[6.0]
  def change
    add_column :offices, :latitude, :float
    add_column :offices, :longitude, :float
  end
end
