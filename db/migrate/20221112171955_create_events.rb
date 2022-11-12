class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :band
      t.string :venue
      t.date :date
      t.time :time
      t.integer :price
      # foreign id to connect which city an event belongs to:
      t.integer :city_id
      # timestamps creates 2 columns: created_at & updated_at:
      t.timestamps
    end
  end
end
