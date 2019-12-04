class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :details
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
