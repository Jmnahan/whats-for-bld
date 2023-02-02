class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :dish_name
      t.text :ingredient
      t.text :direction
      t.text :suggestion
      
      t.timestamps
    end
  end
end
