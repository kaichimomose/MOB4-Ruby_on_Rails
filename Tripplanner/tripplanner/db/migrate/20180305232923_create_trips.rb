class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :destination
      t.references :user, foreign_key: true
      t.string :watpoints, array: true, default: []

      t.timestamps
    end
  end
end
