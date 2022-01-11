class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comments
      t.integer :author_id
      t.integer :post_id
      t.integer :rating
      t.timestamps
    end
  end
end
