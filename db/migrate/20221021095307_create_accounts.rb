class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :user_cd
      t.string :user_name
      t.string :account_id
      t.string :password
      t.string :biko1
      t.string :biko2
      t.string :biko3
      t.timestamps
    end
  end
end
