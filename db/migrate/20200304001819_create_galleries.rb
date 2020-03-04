class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.integer :x_axis
      t.integer :z_axis
    end
  end
end
