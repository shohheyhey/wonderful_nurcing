class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.references :office
      t.references :category
      t.string :name
      t.integer :fee

      t.timestamps
    end
  end
end
