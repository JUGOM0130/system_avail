class CreateKengens < ActiveRecord::Migration[7.0]
  def change
    create_table :kengens do |t|
      t.string :user_cd
      t.string :k_level

      t.timestamps
    end
  end
end
