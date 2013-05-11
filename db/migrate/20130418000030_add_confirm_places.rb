class AddConfirmPlaces < ActiveRecord::Migration
  def up
    add_column :places_interests, :confirm, :boolean, :default => false
  end

end
