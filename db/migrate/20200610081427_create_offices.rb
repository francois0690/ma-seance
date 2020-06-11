class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :name
      # t.references :address, foreign_key: true
      t.references :address#, polymorphic: true

      t.timestamps
    end
  end
end
