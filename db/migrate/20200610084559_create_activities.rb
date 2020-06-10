class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.references :user, foreign_key: true
      t.references :speciality, foreign_key: true
      t.references :office, foreign_key: true

      t.timestamps
    end
  end
end
