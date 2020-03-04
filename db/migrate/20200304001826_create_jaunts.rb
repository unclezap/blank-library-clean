class CreateJaunts < ActiveRecord::Migration[6.0]
  def change
    create_table :shuttles do |t|
      t.integer :user_id
      t.integer :gallery_id
      t.integer :wall_id
      t.integer :shelf_id
    end
  end
end
