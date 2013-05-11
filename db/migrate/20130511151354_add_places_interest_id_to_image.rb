class AddPlacesInterestIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :places_interest_id, :integer
  end
end
