class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end
