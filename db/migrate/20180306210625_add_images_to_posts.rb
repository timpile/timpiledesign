class AddImagesToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :main_image, :text
    add_column :posts, :thumb_image, :text
  end
end
