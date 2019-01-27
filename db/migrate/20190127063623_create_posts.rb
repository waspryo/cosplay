class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.text :explain
      t.integer :image_point

      t.timestamps
    end
  end
end
