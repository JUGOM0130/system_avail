class CreateMastaUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :masta_users do |t|
      t.string :cd
      t.string :name
      t.timestamps
    end
  end
end
