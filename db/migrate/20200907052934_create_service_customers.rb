class CreateServiceCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :service_customers do |t|
      t.references :service
      t.references :customer

      t.timestamps
    end
  end
end
