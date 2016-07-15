class CreateReviewTable < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true
      t.belongs_to :location, index: true
      t.string :summary
      t.integer :time_to_seated
      t.integer :time_to_food
      t.integer :service_rating
      t.integer :noise_level
      t.boolean :wifi
      t.boolean :outdoor_seating
      t.boolean :would_return
      t.integer :user_id
      t.integer :location_id
      t.timestamps
    end
  end
end