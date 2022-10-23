class CreateNumberingManagements < ActiveRecord::Migration[7.0]
  def change

    #削除して
    drop_table :numbering_managements

    #生成
    create_table :numbering_managements do |t|
      t.integer :index
      t.string :koumoku_id

      t.timestamps
    end
  end
end
