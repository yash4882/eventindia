class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :vanue
      t.string :event_type
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_paid

      t.timestamps
    end
  end
end
