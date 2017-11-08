class ChangePhoneColumn < ActiveRecord::Migration[5.1]
  def change
    # rename column changes the name of a column
    # syntax: :table_name, :current_column_name, :new_column_name
    rename_column :restaurants, :phone, :phone_number
    # change column changes the type of a column
    # syntax: :table_name, column_name, :column_type
    change_column :restaurants, :phone_number, :string
  end
end
