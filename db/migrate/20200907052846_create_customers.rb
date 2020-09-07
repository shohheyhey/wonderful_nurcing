class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.references :office
      t.references :category
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
