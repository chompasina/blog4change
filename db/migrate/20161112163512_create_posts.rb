class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :body
      t.string :title
      t.integer :status, default: 0, null:false

      t.timestamps
    end
  end
end
