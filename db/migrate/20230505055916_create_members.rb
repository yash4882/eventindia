class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.string :committee
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
