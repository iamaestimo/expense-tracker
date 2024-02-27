class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.string :title
      t.text :description
      t.date :expense_date
      t.integer :amount
      t.boolean :status
      t.integer :user_id

      t.timestamps
    end
  end
end
