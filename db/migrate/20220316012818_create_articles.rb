class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.integer :price, default: 0
      t.integer :stock
      t.string :photo
      t.integer :price_discount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
