class CreateChatrooms < ActiveRecord::Migration[6.0]
  has_many :messages
  def change
    create_table :chatrooms do |t|
      t.string :name

      t.timestamps
    end
  end
end
