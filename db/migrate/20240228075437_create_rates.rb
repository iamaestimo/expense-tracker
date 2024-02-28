class CreateRates < ActiveRecord::Migration[7.1]
  def change
    create_table :rates do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
