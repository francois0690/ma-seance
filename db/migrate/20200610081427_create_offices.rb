class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :street
      t.string :zip_code
      t.string :city
      t.timestamps
    end
  end
end
