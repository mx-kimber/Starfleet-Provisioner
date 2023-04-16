class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.integer :origin_id
      t.integer :category_id

      t.timestamps
    end
  end
end
