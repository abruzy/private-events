class EventUser < ActiveRecord::Migration[6.0]
  def change
    create_table :events_users do |t|
      t.references :user, foreign_key: true, index: true
      t.references :event, foreign_key: true, index: true

      t.timestamps
      end
  end
end
