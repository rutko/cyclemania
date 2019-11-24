class CreateUserPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_posts do |t|
      t.integer :id
      t.string :name
      t.string :title
      t.string :body
      t.time :update_at

      t.timestamps
    end
  end
end
