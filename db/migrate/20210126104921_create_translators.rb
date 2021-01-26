class CreateTranslators < ActiveRecord::Migration[6.0]
  def change
    create_table :translators do |t|
      t.string :languages
      t.text :description
      t.boolean :availability, default: true
      t.integer :rates
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
