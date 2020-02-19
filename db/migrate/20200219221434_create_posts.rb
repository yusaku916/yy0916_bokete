class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text  :theme
      t.integer :user_id
      t.text  :image

      t.timestamps
    end
  end
end
