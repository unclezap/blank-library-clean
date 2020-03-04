class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :shelf_id
      t.integer :user_id
      t.string :spine
    end
  end
end
