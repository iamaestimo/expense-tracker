class ChangeColumnsInRate < ActiveRecord::Migration[7.1]
  def up
    # rename and remove
    # rename_column :rates, :name, :base_rate_name
    # remove_column :rates, :amount

    # add a few more columns
    # add_column :rates, :eur, :float
    # add_column :rates, :cad, :float
    # add_column :rates, :gbp, :float
    # add_column :rates, :aud, :float
    change_column :rates, :eur, :float
    change_column :rates, :cad, :float
    change_column :rates, :gbp, :float
    change_column :rates, :aud, :float
  end
end
