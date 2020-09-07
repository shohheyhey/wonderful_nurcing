class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.references :office, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.integer :age
      t.date :birthday
      t.integer :kaigodo
      t.text :medical_history
      t.text :discription

      t.timestamps
    end
  end
end
