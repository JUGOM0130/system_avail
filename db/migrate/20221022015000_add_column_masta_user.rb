class AddColumnMastaUser < ActiveRecord::Migration[7.0]
  def change
    add_column :masta_users, :first_name, :string
    add_column :masta_users, :last_name, :string

  end
end
