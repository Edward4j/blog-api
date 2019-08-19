class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :author
      t.float :price
      t.integer :isbn
      t.string :title

      t.timestamps
    end
  end
end
