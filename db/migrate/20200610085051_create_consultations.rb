class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.references :activity, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
