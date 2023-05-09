class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
