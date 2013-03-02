class CreateUserVisits < ActiveRecord::Migration
  def change
    create_table :user_visits do |t|
      t.references :user
      t.references :places_interest
      t.date :dateVisit
      t.integer :ratig

      t.timestamps
    end
  end
end
