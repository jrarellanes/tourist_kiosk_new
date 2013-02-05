class CreatePlacesInterests < ActiveRecord::Migration
  def change
    create_table :places_interests do |t|
      t.string :name
      t.string :address
      t.string :horary
      t.text :description
      t.string :popularity
      t.string :idClasification
      t.string :urlImage
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
