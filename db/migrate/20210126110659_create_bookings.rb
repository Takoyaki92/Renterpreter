class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :date_time
      t.references :user, null: false, foreign_key: true
      t.references :translator, null: false, foreign_key: true
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
