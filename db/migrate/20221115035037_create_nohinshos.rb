class CreateNohinshos < ActiveRecord::Migration[7.0]
  def change
    create_table :nohinshos do |t|
      t.datetime :ndate
      t.string :nno
      t.string :nhinname
      t.integer :suryo
      t.integer :tanka
      t.integer :kingaku
      t.decimal :taxingaku
      t.string :tekiyo

      t.timestamps
    end
  end
end
