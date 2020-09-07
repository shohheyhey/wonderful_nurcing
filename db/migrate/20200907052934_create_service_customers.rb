class CreateServiceCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :service_customers do |t|
      t.references :service, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
