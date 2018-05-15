class CreatePolygonTests < ActiveRecord::Migration[5.2]
  def change
    create_table :polygon_tests do |t|
      t.geometry :polygon, null: false
      t.timestamps
    end
  end
end