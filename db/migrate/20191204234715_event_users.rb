class EventUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :event_users do |t|
      t.references :user, foreign_key: true, index: true
      t.references :event, foreign_key: true, index: true

      t.timestamps
      end
  end
end
