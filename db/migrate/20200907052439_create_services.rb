class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.references :office, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.integer :fee

      t.timestamps
    end
  end
end
