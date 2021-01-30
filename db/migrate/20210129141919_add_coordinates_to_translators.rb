class AddCoordinatesToTranslators < ActiveRecord::Migration[6.0]
  def change
    add_column :translators, :latitude, :float
    add_column :translators, :longitude, :float
  end
end
