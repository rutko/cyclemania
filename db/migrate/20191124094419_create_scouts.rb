class CreateScouts < ActiveRecord::Migration[6.0]
  def change
    create_table :scouts do |t|
      t.integer :id
      t.string :title
      t.string :name
      t.string :body
      t.time :update_at

      t.timestamps
    end
  end
end
