class AddLocationToTranslators < ActiveRecord::Migration[6.0]
  def change
    add_column :translators, :location, :string
  end
end
