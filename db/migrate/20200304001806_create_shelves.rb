class CreateShelves < ActiveRecord::Migration[6.0]
  def change
    create_table :shelves do |t|
      t.integer :wall_id
    end
  end
end
