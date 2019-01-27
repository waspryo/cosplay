class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.references :post                                   #外部キー
      t.string :alt_text, null: false, default: ""         #代替テキスト
      t.integer :position                                  #表示位置
      t.timestamps
    end
  end
end
