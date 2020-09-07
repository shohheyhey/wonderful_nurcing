class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.references :office, foreign_key: true
      t.string :name, foreign_key: true

      t.timestamps
    end
  end
end
