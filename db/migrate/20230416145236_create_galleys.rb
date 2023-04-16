class CreateGalleys < ActiveRecord::Migration[7.0]
  def change
    create_table :galleys do |t|
      t.integer :ingredient_id
      t.integer :quantity
      t.integer :crew_id

      t.timestamps
    end
  end
end
