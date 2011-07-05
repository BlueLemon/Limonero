class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.integer :payment_id
      t.integer :monto_cents
      t.string :monto_currency, :limit => 3

      t.timestamps
    end
  end
end

