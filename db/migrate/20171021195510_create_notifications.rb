class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.belongs_to :user
      t.text :content
      t.datetime :enqueue_at

      t.timestamps
    end
  end
end
